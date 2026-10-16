Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8B9528428
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792169434; cv=none; b=mNNid2uhb6JVk0IUIOvkMAK1L/eNdJHa9nDI9qGJBR0iMecIr+OsUgMCUocDlDAHWJH50ddWf3ZOSDG16TKCdt7npuR3x8i4VzYdE+1/+R2S0+R0TOaXgFHg93umLWBae3nKdme3I2X5G1cWFRgP1UhDOQZaXjU3H7z9+iJS0BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792169434; c=relaxed/simple;
	bh=7hKG9T5n3drLPy7RoQE9psAseo3osx4UPZbyXsW386s=;
	h=To:Subject:From:Message-Id:Date; b=tNCgTkAtVITsysKZslu/mf1R4gXPwWOaFJsq4gHT8kT7j44YR8xiBg1PsrDIZKd5ar42D0KEoKteS5mHtGeLQNMw6sj+ODCWAYY8gb9UDhFy+ivefdddNEQ6oVZK8H/1PxRRiWy9VmfpFa3uoBVNbI1sL7xte8fNVnzBa+NTC/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmEkfJD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmEkfJD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D455CC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792169433;
	bh=7hKG9T5n3drLPy7RoQE9psAseo3osx4UPZbyXsW386s=;
	h=To:Subject:From:Date:From;
	b=BmEkfJD2Z5MqocW4YGiMoDPCW8AzX8JZfPiG5weOMITeedXutLuRQphEltN815JAM
	 Ar6ocOl9oc6UH7s8AVyGTu+tVMPjF9XJwEhEbPJuO9jykdeUiRE//95HZSStYGJI/L
	 +i9M1yDPP754+ge1aUSg03tbnJG9XDfxmAIWuruHfVhddWxYwO4XAofolE0dZR+DdM
	 w81DCbo2IRLsArPXbpHup0zTZo6SWImLKMWiBUhrGrB/qIEo5CsLW9CMZ11gazWq4a
	 m5jlM9BjGKQBMjsWCflhryB453/WaUk/gDlCdWYTuno6xxP4BAVBpwzPYzJ1Zk0DNP
	 y5SXATICAyqyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCA7CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216943370.6625.1909036398984156302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0c66ff817dee3cc569594e843daa986a0596540a8c960e00b317b885c9c112
Date: Fri, 16 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792169433
