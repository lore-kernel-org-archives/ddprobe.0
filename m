Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DC71C7B92
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723024553; cv=none; b=Jzkuum5E9Sk5hmB78FSfwFDY0D8oEdIrxSXmzAmBG1BS1+B14yEoDXYR5rMaHcQDlJYsFRz3RyEGwLhfh54HQRHfxqnBVC3UT92c32yI4TlunAA7EyCme/aFof+XhXKgSMU613YWl8sP63uqFwGOQSeemS8B99RXLhj207kb41w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723024553; c=relaxed/simple;
	bh=k5/SuK/gfTIizeoN0J8FbDCZYqEh+kKoCQyd0l5TfUA=;
	h=To:Subject:From:Message-Id:Date; b=Q3krc5JPlQdgSwhHUDVeuveGmEL5zBpVfN8lNlkodkk6dhgl5YEtg3j9F9O4t1z4XCjyBMG2lPD29PucZHtVfzCyxFaCm0EkNlnN6iZUM8Ng7CT2DkZ3NiPSp8aXEE85prYYzTvU2lmVSpqaT2LAX1coYBWiVOIWrRG5gbKiOVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxbwXkYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxbwXkYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9345C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723024553;
	bh=k5/SuK/gfTIizeoN0J8FbDCZYqEh+kKoCQyd0l5TfUA=;
	h=To:Subject:From:Date:From;
	b=nxbwXkYCZIiXE/KyTl/yoJs5Du+hJzucbFyBsZyMFOmA2AH/GawzdcvY1hAKQxOOW
	 aCL6bn0/LXEhtYZD7NFoM4CJHiExFxwXhSl/OvOhW0gMLek6ZuecVSi2UrSwoXAQJG
	 qWr70J4a2m+UQTd0uocCHII7EL04aQyfXgAc4wFpgPwARFZsbc00R5dboibqctWKwm
	 sc+7DEUU68E7dzJI3oGq1dxBvbqGRGb13mdt5u1LDjTKin6aHfo8axtWmzgRsAiueI
	 dFvyaT3Z2BP0I5tdvYiJbboHisMGta3TZIQ8UzY+F3aWzWucatHdlRD7Zw99gxC/qn
	 Tz8l/GUTMyW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996C8C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302455361.3102.4131567571314161011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bffa8f28141cd16e30e859876be243afc8bdc4c001dbddd148dbb3b664a4f5
Date: Wed, 07 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723024553
