Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC4F192590
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774103094; cv=none; b=ku+5argjVhSjWC9Y6viFUPsy/tqOpQtk6ZzP3T0H2zYb+wcqjKpZ+xPWrt4mnd+3sn2alitFScRj1hvHS7K42xt1PiqIA4BfuRaiQHOECd3c9AF3xVxvSvj1d127ibprshiL0wLuiPI7w/9LxO3RgjgbBVAnv0mY3uMn5LgTBxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774103094; c=relaxed/simple;
	bh=SqY8mo93MqkkTfkeDVCqGvVDyLCeh9LKldPH7HgnVk4=;
	h=To:Subject:From:Message-Id:Date; b=IK25HvbsqPyJD5DlykvQXYgvWnvqlhkz/4fovtVCtuXCmO3r4q5B3Xc+uZTADL6P0pXMG82WbBEOCZodWKwtbEvFKmh6sy4Z2p2dIx/wdLS6b0ML9wYCrRxMUcyASXTB0jkvgtvHYMG20wbZnahzLpCE08ZFzYDXeQKklKXAveo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mn/zwlqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mn/zwlqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C72C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774103093;
	bh=SqY8mo93MqkkTfkeDVCqGvVDyLCeh9LKldPH7HgnVk4=;
	h=To:Subject:From:Date:From;
	b=Mn/zwlqk1A6zFwEioFV0gTXXoUj9/N8ZL5VObj6nfNAfzw1DyV1WnbvSCuVZ8iwp0
	 ZFs8JcD9F2L60PB92CsKLYEqv8gknrZbWFVrtvyx/hxK/tIC7xFLviEncBkqWSUo1S
	 Ow95OwVuSWOu6Y+dBkcsW+aYK4jnlhbPmKgJyPmDXgtee+muHfBzeCrGyVMPqzfZwm
	 lNWEhn7sMpfM7HKCBBbGxjs89z2ljmdZ5SKqgj847y2Nby79pupwez1rrYmGeATRQg
	 yFRaYxZMbHAK/Y3ft83XBc92d5k3OH9erOQG8s7O7u0zv2RLc/sg25nH2+Wzixl6sx
	 SpJIzjWkGx6OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940151094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410309357.23835.16334905708940415434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba9dc153d54adb756ce09cb7e1bcee213e870842174d6bb875fc719ba0dede2
Date: Sat, 21 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774103093
