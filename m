Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F74158527
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800354; cv=none; b=O5lzaVejC68WkmuoqPhetXW7HNqcc4p4NiYuGmP2oKOPb4RfoCK2kZ0d0gEsiWyS9glxMaciAq2+iJQ+dSFzRZmUDI5ZRSGJvirY+9vxhlL0QmXt56Qfw4iQplBZx4lFR3igL/Fstw6eQpzMU8CJsYj+f90L8gKv4sCgjjpVIGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800354; c=relaxed/simple;
	bh=dATpe0DvYLLkIexqIObgiSAT7G4uZKKVWL8gy2gQU7Q=;
	h=To:Subject:From:Message-Id:Date; b=YdnveH+vsHHoZnCdKtxVYW86X3bV/M2fgF8EpWZQuxltdN6c7+JPUJqFsOcuC7JLG/rQV4KrX7gdDxgC3oFsvs77O0HzMiiUqULSzR9b4fN8Oyua4Bn2pX/YvIJKq9rN8s0wPFUf2QQL4BC7QPaegIhgAPQukN54VNDXvAonDHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBytkIPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBytkIPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3C8C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732800353;
	bh=dATpe0DvYLLkIexqIObgiSAT7G4uZKKVWL8gy2gQU7Q=;
	h=To:Subject:From:Date:From;
	b=RBytkIPPIJwiJwjfdXeU+SPzhX4QCqaNkhpMw1UX/SjdXYqPEpfi8AufGApWQKHh2
	 AhuECUFp8UTNH0+ylVME34ptAvkchuapRu2Xw3765tYYzUzQPrUJm/XTdFDiXEbDSQ
	 xsDUUCfX4eJ5/fNd1YBYkt0iialnWwbl6MlHEBFehmYnnALf3iob/GW19WJLoN7+PV
	 fI2qId7McryU5GwHQdzL4wDhCoiinfHYZzEpEToe0NcpYxUrmMmBZDv9XYQ+wMWUYR
	 Cieh/vBOn4f8hdhfkisN6ZrJv1AVCx0dEnMIW3qcAJN+FDmySKikdTzFi0ZhX/0GWG
	 CKeBq1H2jefbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A989D6910C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280035362.31140.8441256168598139709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6920bca1135216b21eca388a2220a4d44b8039e3d26476be4753545d2605cfd7
Date: Thu, 28 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732800353
