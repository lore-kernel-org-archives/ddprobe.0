Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C76A29DB6C
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745920194; cv=none; b=W+HXGE1mA0uCZiiRW3jKKo9Sz+el2NBTS09Oe6GOLmmSe0y/xz6fJhF2PXzC5PgesL0UiWFOjNbYxIzG6zFvnt3fMOJtB/glWqb5RnA/d41cRNg9yuQEp0fJzWV+MeauPsTC9jwHq6owLIZ6nJsJ9nH1CmQ2B+QZ0FGe21hJZ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745920194; c=relaxed/simple;
	bh=9a5maGHz7wvhXR4M6edP6IIjhWE2GnoMz7T9Wa7iWPI=;
	h=To:Subject:From:Message-Id:Date; b=BRwHQVgoOdvPK3rE/oE9EWVX1LUfNUs5Fm0lP9vmrakCv8yzW6CRLcMaIJrvyzodIM1ukUGYCRn4Ec/YJSa3B39nOqgdGCh4668luWaDZXWufBk6+LVJQL29z6nXVYYbLitkago4q9KGblpChZLbjz+iluoe3qNhuqmI3WEiBu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLa7fKhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLa7fKhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD05C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745920193;
	bh=9a5maGHz7wvhXR4M6edP6IIjhWE2GnoMz7T9Wa7iWPI=;
	h=To:Subject:From:Date:From;
	b=JLa7fKhsuIjoOdIeAUrRk5Fi8wziUNiNo2oMOqk9czDPmfRN0VCzZid80OY8jxNko
	 R2/dzHImQozzk7QuyWORlidBAIZQQ24DnRRdOtSmbA6T3xKon/W18orPt3L4Zjdgxl
	 n+YszBdaLkDx18y6gtiVcPkgfsEehhe5DdKUeHbCBQy2vH4R+lfdi7mwLDPQ78aQbG
	 oxzhtLTJSaU8AetnhJwd2Pz/Jn5eJgwB7G89wlobYl5av6P7qGHVscgNclBK2eoCW8
	 sZtky02XQA40Ul8gB6OvReyASKPxuvP4aQGxu7emFD5NHXfubEY8IrRUMV316c7jay
	 bgihzmrKB/ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8DDC3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592019357.32399.344965548519923507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd22327ad09ff8a44d6b1ba0b2b5cbd1cd59929043f0fdc60ceac4db1fc9a10
Date: Tue, 29 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745920193
