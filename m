Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5912A295DAC
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762753194; cv=none; b=jmSy1QUtuKNNiSrACOogLBtWu8MOv2oiWWWgTFx6DX4fIzW0+XKqGozpWdfHIa0iR7CXvljL2sAby9SpQEJcxOMaXKE+Mr6fioPABhO2TNcaUEtvk6eecPQLlxjWF333onlMnklKgeEev+Uov7fTnXsr1ek/g/c0E14Qvi6eJCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762753194; c=relaxed/simple;
	bh=5Ig1a6pl06xtxR92p0q34x05hFVfjeZxgJ3mUNK318s=;
	h=To:Subject:From:Message-Id:Date; b=su1yTAXQvm7NkUB6cxl8aDutJ+L6T4mof29iBKj62G4EKZbqj3SCR0HQMFlo4YsvLbQf4aopcTjw+DzPccSP5tqwf+Ebdqm7b/yj1LH2ycXuzC5okK0nAIlmfe6H+PQqMi8ayLv5lnINiMBpyW4euYFct/mSeWGkHj3PUhhxncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4TEaSXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4TEaSXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D8C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762753193;
	bh=5Ig1a6pl06xtxR92p0q34x05hFVfjeZxgJ3mUNK318s=;
	h=To:Subject:From:Date:From;
	b=G4TEaSXViiVGxX6PkbDSB4JPci5O/QaDtgHjmQwaQYC1Gl65hR58L1YMUUAVuTiPb
	 isKM2WTJlsggZ4tYqO9dbLyiJDLFFJGStfJNofuSXwmb7itobbKxVg8EaXhw+ijiqY
	 ic+AY9QxxDIMEINR5R9PcbcFpVB/VS0c/mqLibs8u40C+mprojcY9I3qrazu1OqqIK
	 yHqX5rYIelxRucnkOJGbUoL0Iy2IqbN1vyttUqawCA4NO2AcN29VQrGkcRUMcmSmE1
	 9RrfrPy+DX0Gq4oAsOCgTzYAWbqDtO8EdmaDvMWvHnbEvebtEchht8PIODTOLsgb/7
	 1qaXYMgPLt//w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7C1CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275319362.14168.1540999085503752836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540bb846165a3a1158f7dad23fc49665b3fed28ec3eadc0f91505ae467509a0c
Date: Mon, 10 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762753193
