Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490FC3019D8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787632834; cv=none; b=V572aGZcOUiK9dy7TzDrgdVVvTi+ObD9Kx3k1c2CF84BLaM3DIdASzzSmpj9PTOq2xAxv0Y37EnAd9uq8UErNVuJF2QnH+rDqVmXL+cs/wcUrfs0PgxYSnpeTDHbwoALC4gu4cnZUYpoL9Vshh5It8S/w0vtzCUleWm9Hdyx7/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787632834; c=relaxed/simple;
	bh=BxIG9mu2jCEYusQ1EVmlwhanDIDdpqcT8ACmupxiRPM=;
	h=To:Subject:From:Message-Id:Date; b=c7MBvAF1bnQJ834OcNRAt+yU6hwTdi1VrKoRW1PQ2OR+xX4doWYM3Eb1HpBZDAEwzQ8T6iK70OZ0opciKK6T3GpuL6lcVkRHGK+tJSeNIvWPSk5CFapbb8nVs3FDRZNahvXjGRiNs391oVI/UIjMZGZQXZ8amhBkKrN3u/Qiwts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrTMWyjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrTMWyjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE3CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787632833;
	bh=BxIG9mu2jCEYusQ1EVmlwhanDIDdpqcT8ACmupxiRPM=;
	h=To:Subject:From:Date:From;
	b=qrTMWyjAgN3qp/s9qvLUnjAGX8R8OZpr6SGijjPKwbdfseUljJiHEfYQiUwyujkYo
	 56ceOlhXwK7TQYsMaFc0V5kPuXfugxjRWi2fI6ZI++UVHCbTqLjesvfhPlQhL/9Ml5
	 RyqfkyjkKVr4NSyx2g9sbVOo7OY+RREOZqHsH4S4mZQexdh9LXo4EyWw2sRRpVpV0a
	 vRw6HwKy9FFZ0huhnTZhQrKqCWKw5cRTkVttGcb61Ynvk0AQq519vU5q/E2i9wcnDh
	 uNbMqcSEMnnifJpN4/Eb0h0LXP0k8Meu5b0oTZmpiUSKGLVnM925BhB4gHzzxtjNug
	 C3rvaAGFOMW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC4C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763283369.15379.12907902305377549649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60b3e0eeb6773fb610c59cc75ffb58a94ec95196023bacfc88b2fe13985a2ff
Date: Tue, 25 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787632833
