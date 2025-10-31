Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD3B1E5213
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761952794; cv=none; b=jEJa7rvPvoK4KhQjCgPuBkoQ/PD4WXspJk7vJzRTj3MntwpkLm795DJ0lKxr9a2y0pN+lh9ZI4LBTFT2vaBCT4zCF0Z18cwV/GbkEacfVhsRjuYaMdjufiwUu1AxkrOdHlGhpIrLVgcspFMIoAf9dSmjTtYdzGlpVQD6do0vNBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761952794; c=relaxed/simple;
	bh=ywSS/QTSzmEiwgrWp9nIN9kWy7Xi2sU8+SF3nj3anZc=;
	h=To:Subject:From:Message-Id:Date; b=usl3YBosPDPz1LfB9ZwybX8LcDfwgB4LWLs3NDCI1xq1aD1y9tiP/qSZHnSl+ttrzOD+ajHDYXGGWl2QY+kznenALvvRGcJwvgwzQT3FNPFudsFykxKkSOxjNCCPoGlD84NITPZ8/E0Sh12BUMRFjyZnMWH8OQQLx/XyjUguFeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhVevurW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhVevurW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761952793;
	bh=ywSS/QTSzmEiwgrWp9nIN9kWy7Xi2sU8+SF3nj3anZc=;
	h=To:Subject:From:Date:From;
	b=mhVevurWPZBH6x/2YFduUALscPSr5M7Z2KfQ4OZ8qxihdIS2lJhoPvMWZEK4p0HjZ
	 mZ8u/ckb/KH4mQhZ35pgS1V0nMXKm6d8pJC7uPchs5o56SM5YTUYHN0yMwX9enF0dx
	 PnXXIQVH+pcVJSbCQTSjEIIWZgrta68mKD7WpOnz2zf3IL0d2E3Ja0djoRUeJTn3Fy
	 ShtiADMeZAP9LoNMvhcYbml5kcJ2VGlLnVeimg1G4PKNHLfU6ClimbCOL4fhUA0tvB
	 jHcxknkKlsqi4pYnugWuxJHmXNU4zk2pjmeD+vQ5ofyZV9OGpjCcRj9ruG7bOWz9wJ
	 fCy8s1j1lQuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A5CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195279358.10583.12753257149262883093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48809c98744751605f48b84fa66646e5c1026e0525ff1fd258b0274d62395e3
Date: Fri, 31 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761952793
