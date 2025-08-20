Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C14270830
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755706194; cv=none; b=id/vxzGfRfE9WzDihcaojetWRabpQfNR7JmcEnVWYWJRxTtnfsnXSwrJA3by+Ll6kAkMtysFtyVKyNRHLNPINpNSCQUkO1ELT1VxtG+czFqCiKfg1YuMRxStGDSiS+UAfRgwFoZVCicBwFH51/vFTJJBn1g69ahC3xca88wLrXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755706194; c=relaxed/simple;
	bh=uUSN3+HiILjzSMfbatNBbmyBrYtLDdDAUvyx4EtaYC0=;
	h=To:Subject:From:Message-Id:Date; b=SrEcMKwuZbKpZgjZnm6PiUTSL0okcNieU2te8NwTW6H/D6O600oU4lN8J+Y1DFP9vpbcrpHq+Q4/NX3SFo6T5NBiilEKVvx8Pt5zmg5Zar6KFnh60OXE/oXCWzTg8D2Olgwe40si2c4OZ/ChYPLu5ynaU7ct2Bgo93RetFB7mZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4EEnzqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4EEnzqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EABC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755706193;
	bh=uUSN3+HiILjzSMfbatNBbmyBrYtLDdDAUvyx4EtaYC0=;
	h=To:Subject:From:Date:From;
	b=M4EEnzqHP6ZgC7Ej2kjoku9aaDyXz7Pqk0NTAYJmcTnv4e8wmiXJQ83mvHfKwzVvh
	 3BWGaT1phCVLbbN1tTOTuS2aBt2QnCiLz9D+EqQVgHxaCzPM4ujD2N2dID1XUGrcfu
	 YQL2TtmP+J8yWJcx0BnPkg5ZrcEPGN5jM739Of1L+ITedO0h2aXk97ROXBjSns42kA
	 BFtXk5SmDTzAi3wkHs63XefDE43zbwnfsST47CvPTFrr2Nv7zVPVurd6gz09HUU6V0
	 ne/ciDk/jZUo+srW0d1mY1oQ/gw8/u6z3SlCYSGHUctjupbLvX+ucNkav1cTSD6ZOy
	 A3r27tw2EvjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570619358.2187.17073835214224818352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42dc08ed6e1c633ec2f447229264b93a5c6b1eec40e64c37c21c129d62211fa
Date: Wed, 20 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755706193
