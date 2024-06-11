Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3D017CA04
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718107103; cv=none; b=dOib/DRTuNdSOXO2LVpNKspx+ZMvWkQSW9yXoaVsHhxLKdpiub9jmxK6q38yu4H+8YL6BeUJ3qyILqCZgcyNTu+feg3o22VHHrFRjV95iiOIu6LIuz+3suBbIJRL34qlo+y+aPr3usH1K7yBcCMARwMS9dMBPUbuK69Dkfgs+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718107103; c=relaxed/simple;
	bh=LKGyztfHhuI0NLli5chtfngsRWhCbqyda34OQHiKupM=;
	h=To:Subject:From:Message-Id:Date; b=AhE8jjLbLSK2UAPbzZPTtdcc3YwzYDOo8pDR/NzPLRtpnjWlJvR6q9OZX+vShny+7KvVRjinPY67QqZ0IpQdxt1f1FUvQGu+TzBZyroWptVAW8rc/LreDPhIef0AXz6YcwZIT1h4k6KnjDf1KJVof+94N4kKKAUP1NxQpOKr+40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuGoT7D4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuGoT7D4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD726C4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718107102;
	bh=LKGyztfHhuI0NLli5chtfngsRWhCbqyda34OQHiKupM=;
	h=To:Subject:From:Date:From;
	b=iuGoT7D44irtp5BukuGJiLUH0VoSZEYltoayv7fEtbxLQ1Mehb9uZ2R0Iyv4FrFtM
	 E2XuGdTFKZ9sZyMMQswkKV0KnuOZNEqh9m0AFTk0ON/xROLjDydbEEEuPixTNMlpd0
	 CvEEL0PYlxFfaCQ0r/CA4vhaknGaw9I/4DVkZYvwor0bvkXqG8c/KOf4uRx+rTbFwb
	 hC9sK4Pqt5a6t8RjUl4AjYsd1LaV54tDSGxAsK+IVj3TctphXRlhLgjc8c4W52UTNF
	 ciMavZpcEZlrUA3kUlSP7fUkqN2Sm/FMLjkfY+gQ3dqltkVHi7ciROALu+RyHStaMn
	 d8uMDLudi2Lkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7479C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810710280.17838.7599135366637437397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d777611190d542abff924df0a3a727d591c7b41dc7669e914338a1d41d9713b2
Date: Tue, 11 Jun 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718107102
