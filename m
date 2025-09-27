Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1A25D21A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758953394; cv=none; b=Ki7qeJCDnObq3xEWzjhYGFaJVWiNz20UFUrYvCDPLS8BcGl8wSHZ26SxN4f7im9MMN+Ru4lByVKsQ9uP5SoBpzo43Wass821nEe4HoErjKj7PMUZaVNvxjoF206y4za5LDHIsV0osMqncEiqxw0H1clJCfkcnGxuxt2SDwL66Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758953394; c=relaxed/simple;
	bh=cYb8+H9vAzPyJVFPIFVEwE7vhss4GJm1AKQA961YBlA=;
	h=To:Subject:From:Message-Id:Date; b=E6wygcIdgbpCNcNr7CnHVDBt2FwuohfUeBVaM/56nxEKI3NstzzZ/FDnszqqvxweSAZuu9CcXeX5X27Bor4ti9sR+c7J2fL47fhz+eGFcwmHRdU+e+Pk2zYSmaEp3dN9OU6E7X8AkaK4fJuliHiRcEbnFYv8KXR1P7VEjpOSejw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxY0sqM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxY0sqM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B86C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758953393;
	bh=cYb8+H9vAzPyJVFPIFVEwE7vhss4GJm1AKQA961YBlA=;
	h=To:Subject:From:Date:From;
	b=PxY0sqM/YDEIt5UT4LFCuNCCTcDcwnRI6O7IeHeGwO+pCD/Tfo++ACDTU/NOAoO0Z
	 nwp88Kg50hGbX2tIk6SZkX3OecdbqlD5QvVpMGym+mhTH249d15xYEM+x02lBIgi4V
	 3TwxF6mPWbf3d6dDnjim959KAKAyOQI1Lytqh28rdE5EwPyGykJrX8gTu2OlxZE5EX
	 6Ib7++Iya4jPQ9vJGfQl2P899bUsDNOuEa6DXa89swiLgPDRdH69di1e0nbS1AFGxO
	 zI8ACPBOxaJBlx2YSfG1BfW+X8dVkHPvLDmt+PqciF2KK6FwJvAAHuB+EjnSkML6Rq
	 8i6CuKE+BtDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD9CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895339358.17394.7928231775310401049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7779cceaea16a7f06c36999901f646c192e6181eec45affa06f529cb678b0fac
Date: Sat, 27 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758953393
