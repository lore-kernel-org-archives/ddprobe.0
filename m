Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1138A2F26
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718513303; cv=none; b=Bkqd7/xC0It2RCGENr8VbJa3JDX5p4uSRtoSrCUDxPoLtwykYsEDaLINBGwy+kry0z+F7HNkG3B1bBe49ArGWydKHMV5qfmMfhfZrd93T5b+sF/300s7QyIlkIovOinTqhgwrpDYOnXns31LTR4jAHShdpiT9bkqiRZL15C+Qo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718513303; c=relaxed/simple;
	bh=thazKjYMmaMVV/b97rCtKybHxHmmiSZjtD+mzg28IPo=;
	h=To:Subject:From:Message-Id:Date; b=Za3ExhfWS48kTB8M4HyAS6awwMIHTSMW6pxvNz8e2TW0/6h+BbMWfO0KlItE/OcGHf1UONdJotoT55id1V6vL05+vEZXU/ZyGXZ+RTnvk5/4Wf5MFZL7P6rbzTFZfNouTL1afAtbLb4fpLXMEX8XoXsVqDwtDr8qGAK5JFJbrFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNz3tLXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNz3tLXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB58DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718513302;
	bh=thazKjYMmaMVV/b97rCtKybHxHmmiSZjtD+mzg28IPo=;
	h=To:Subject:From:Date:From;
	b=qNz3tLXJ+ZtbRYS/dW/UpuAxywZTAjDa4abfY8T9I1RLjDQtuLNuHYAyz/ARNpW+9
	 nJ960DZHL4pIWb984w++Vy1x+1A9cUDVH0nwcTf/tvTxd8bL8CKDZPw7VSIizio7kL
	 0OfDKBojgVGR5FPCQzdLknM3Dj3n2JREm9Tj45VYKVxhQmTFOoDTpEoIbRL4KpQS7Y
	 XHIS6dhDeAnfaFore68CkxgWCYKUz5R5PhNGReon4WqX4oiFU/4l2hQT9tQjVABizW
	 dzZ5XN45VldT5IkSufZ5EU6u9wQZlyE0LfZyaqDCCUz0qncyEULzT1C8JHXViDkTaG
	 2hP2OE8ikvOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FB2C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851330277.13390.15218783036201793907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ef6015e9f5be7d91c7655d37b1ffa83fba4be82ac137fadde9241586b90a7f
Date: Sun, 16 Jun 2024 04:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718513302
