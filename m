Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243B079CD
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759713594; cv=none; b=uQgLl4Do7VCdOCCy1tLDjVcH1lhGEdLVA/tIeu2HddOJfUxf2NJamt5GSuG+Mo7V9av7fam5cLQlPKuHEwa0UL1Ad82VyAPUhdLC2JQhbbNQoRdKnfBZTb0WIuv70xHINYmg7VPXCgMnUYWpFcmVZ0rwGRuFAs4CBbn55ELqyr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759713594; c=relaxed/simple;
	bh=yWT+3YWIafHsvuJwUcG+EOFWkYvozTK7HuW3Fm7o5R0=;
	h=To:Subject:From:Message-Id:Date; b=TXli3WtgDBd4ZPYJBHjQmOmSlR88k2eDxyGREWNCj2D0E2E6TiuSy4m2QGUFDnLyTbORip/N/gbDe+HUNkwe31Xw0rHUAvpKa18Owhd/lKw9CQpKEJ9Akx+eNFwSwNXkfyguclN7IU74p4LJg52nByucBqdPXWfDLIT0K8bYAko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnpYaSrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnpYaSrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E36C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759713593;
	bh=yWT+3YWIafHsvuJwUcG+EOFWkYvozTK7HuW3Fm7o5R0=;
	h=To:Subject:From:Date:From;
	b=DnpYaSrlHVP1U/PivTuUd9aK3KFtM0KkVIfJAfVJ8KW7wdy6rVRIWoFVRqd1HKPSr
	 lXtWo87PavqaYRxMgTFmvhKLJAeU+TVNhvvvGrKXOQskzNnVwWMkYBa3RhV6pNXDJe
	 aLuCao0GCGBnSiCZCnBjOvv1vkYC4U9DjGaGCK4aa8dbjahRELhaEP0pHX2K0Mdi/V
	 mQkN3WC5oM6PQPnLfoIuu3ToOx57eDMqv9JsZdVXO+7FDiTAHediCSysJE9Fw+ybQ2
	 0ffQXoa1DcHSMxf7zRmiu7Hdu3eG8D38B2BRMjxiqKP5uyNeulTsH9KFh9CQ6b/+6b
	 f93UtXO6pd+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F038CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971359357.28378.14411222013041935490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48dc33db5d909c1bfa224a8c407c4a3ebca56b71bd9c0772a3ac4b9a9179fff
Date: Mon, 06 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759713593
