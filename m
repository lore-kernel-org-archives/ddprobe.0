Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE032D29C6
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758267595; cv=none; b=mRE+pHYIpehHgV2EgtGkmbd9irSsD1/QA/rXfEeq+p/3XLMGhdLRTK86sJIOmS3cVMTpoi1bn4EmXfaek/vFHWDC/Q0riQgVMazBDU6aA46ZnmFIhGuyMNWi8yhjM709KthaYoJmn7AGtuInnpJoiKnvOPh+EaoKRH6+pGIR+KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758267595; c=relaxed/simple;
	bh=uvkWpIcKztlEqbSlXhSe6PBEiQ0/XBJArD+CD2BVpJw=;
	h=To:Subject:From:Message-Id:Date; b=XanfM0xiCsN7Addhfymv05W/J6bc5husoDbcv4NzRZOxkKY1nIDT54PBmRoPbbKFvTQMrQHM8wuw1JDhUBV1cK3xkocc9hZCei6uHqowtqpQw70SoDCaKCNLnt40qUT1ea9xTdAT8vCFjH5GqEzLSkRuAnKSprDkJnpxq8iNQSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHxd3Suu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHxd3Suu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C36C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758267593;
	bh=uvkWpIcKztlEqbSlXhSe6PBEiQ0/XBJArD+CD2BVpJw=;
	h=To:Subject:From:Date:From;
	b=HHxd3Suuf3id3gKL2rpqSFigr42pYzkm/826fj9hH3dwzGvhksZvoGPdKm1kuS00x
	 0Xf0jw4bmpi3BtHCmjvuWtL0iAtT0qBx1TN8PePm88J/qsUuHoOBPnjzbOS37+lv0X
	 L1XEvU6AZACkwjeNP6+V0BU8+aCsswGKLMOLoT7uiTp/KkpicaVkC0+PGG7EDKN14l
	 DARAruepsvYoWp2f02gMOJY+p2zZyfDXDKT9Ghr2Djqap81IYT0riVSBv0zZxf3AIf
	 EAmixYohZgGhRdaOOUcRxmNb5V3qayf7a+78qc9Rh1/YRzSEKYU/3Z3MjOTYU6tU/P
	 lrohb6aDPVKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D9CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826759358.8743.3049122445944627072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc9af8a70aaff74fd792328807acdf0359366ff174ec2951e94d0faf02cc29a
Date: Fri, 19 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758267593
