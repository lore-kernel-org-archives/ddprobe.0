Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C61F63D9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790980234; cv=none; b=gSV+Y+eYgDAXz8CL34lHZX1hyBbj4s+louu4Q9I0LzpJDzd0SOEgH3S7L1uTdrrDWBx1mfipmrGBkNQ5CM9MSGKo7JBX5Sw5YFrObFuawjqUxUqncFmMFpW6S6i4dtDiNWFP7GBuaVQIXS4eIyYCBOID4Y5qXJ6VVoQ2t2QfJsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790980234; c=relaxed/simple;
	bh=HCh6sPZVyGsk/FhwcX9dBSc+joNxVXyhUtIfB2dye7E=;
	h=To:Subject:From:Message-Id:Date; b=gA6FVaDIf2mc4i8sDz1gcrPTFbutw0SgKu8iOqLAFjfG258JB+uOEDgN59oYKkgyVV5dweYtsMO/cjLiOyBu47j3RMg1iDofraX68NJwVnk+/QBYwqukfeDBf+2lCALThG4dl4kAnJCNRmEydBMhXF77fEm40ePvyn9et0c6O0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVtyJjbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVtyJjbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB58DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790980233;
	bh=HCh6sPZVyGsk/FhwcX9dBSc+joNxVXyhUtIfB2dye7E=;
	h=To:Subject:From:Date:From;
	b=GVtyJjbSSlB4POipJN1iDPj5reLSiWLBHxnIbJehfYh2rEzv0clnE7iQNcg1ga7ph
	 WizJZfEdCCXPscNiLPtxtumvNIMJQmxl/43oehCce/wUfb31Qc1DyFCeb39IUByea+
	 hJTDmWIudUgC4a4FzBke3iyl4Xxh7FSf5gMZZQt3fcORsAMppcjPW31P62YZS0Fr1r
	 6myvY4RkLevHqMARq8fH7Hs10zgQ1/2sQrSw9d/0xRGBNvCrQwLJxyKhZodntD4pUb
	 D/640NLaTjrSTfmWWnb/wh9mO9O4s+mSLADUj5eZLuLGhw8IyQ2Idn/B9VbseFv5Rs
	 xIVTERzdHp0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D17CA5FE6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098023368.1176.8282222995011834643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10247f120f825dce8da243d4f6cf1a0a1a7ca906ede2861d4cc19f47504faf0e
Date: Fri, 02 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790980233
