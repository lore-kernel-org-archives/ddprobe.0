Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6A01411EF
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714423343; cv=none; b=VAiNH/K1Ov73fOC3LmLnQj5baeqalgXTldXEIN8C/Rx3/UaAlbbCTurTORC1QaCqjCTYu2okIKIHVdhmIGJWxpTh9f91apueKR+pMcumE1mZe7xaaLxR0G20741SDST5ACbbyfIzyMvqqE91+z2RvQdC7SKFEKy/98We6WT7EK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714423343; c=relaxed/simple;
	bh=wr4g2DywoUQQxRzI/g5M3fMs9sMBllIra74w9OTncWk=;
	h=To:Subject:From:Message-Id:Date; b=Y/thYzZs9eGTgv2ML1ERpDU1xsK58UuuYHRmjvnAKYkZy1aWCxKNYgcu4YEonydrCFDWPGx7Bxa0khYLm+n1k07ro5KMEc4FcArkQRbHFF/xIA7lHljBG/6bq7rvMfRRgp+usQUQNFMExWAUsVGRK8cR5PIY24ys0rbPBiIzRjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piuhdE3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piuhdE3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD40C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714423342;
	bh=wr4g2DywoUQQxRzI/g5M3fMs9sMBllIra74w9OTncWk=;
	h=To:Subject:From:Date:From;
	b=piuhdE3v7cSE6NO1jfbgTZaqggTwXNRc1mJyLdhr5PR5YUyRwYWJXlag7oweYY/0s
	 CRDYJhthozrQMyEAZaxmwuW3EeptcM3qmtdGSdOah9wGeBh6Bina/LUyhkBOFCF720
	 YbuMky47edqEANbNYmjFjB0u3+f3hdyzA9HSEza3ZOAM9FyN7D1Wh8qqLumtDUreip
	 VTChhqLAtRJqGC/HcOrdjZC570EI5bPR7ekljLbufLEux6IAK/NUfTDBKwrRO1ah5a
	 QvsBwjYeeoSIoSc6oNu0+mMt1Vn/SLwg7PVcPy17ObKPyGhB3InDrK/JjEJWaAs4d9
	 euvHd3H32si0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20B5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442334278.22422.1688832168091875651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b6f679488608b397408488872cb687cc95a0d5f954a83985dda71c879d1b14
Date: Mon, 29 Apr 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714423342
