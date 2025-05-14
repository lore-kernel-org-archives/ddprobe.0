Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1370838
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211994; cv=none; b=NguCGnoj4VNRqn/c1gpuTXUZdQi6jGWTiOrtGe8bM765Wo809fxao7qqDhUNtPcNH2seUDK1D/zVSOYbenjAPqblT+N0r1O7UclsS/1myQD8RN1W7nk2p5BaCm6GFJjPPBlyuw+w40iWRnexsLyglym7KyfDSxN5/Uma55qxLWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211994; c=relaxed/simple;
	bh=/LfD3nPnlLeuAWpatQeIr1mFSRwVYk28wT1m7YQ0Vmo=;
	h=To:Subject:From:Message-Id:Date; b=komAUv6wtVodxUBbTL7ZGYfpOMYV48wRCXusvh7S/eMObR8coeewWIXKZ7/kLyMKAxG4JF5jVDO5fAnjO2MAstkmDTGr8zJPxfLkD21Q4T7l8NUsFrIrYF68GAAjz/rPgRDaadbD8nz+m5DpY5L+3jKOn1kekuoVsWjTDQzXpSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smp5CuOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smp5CuOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0373C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747211993;
	bh=/LfD3nPnlLeuAWpatQeIr1mFSRwVYk28wT1m7YQ0Vmo=;
	h=To:Subject:From:Date:From;
	b=Smp5CuOs9VlD7mV914khr/BXB0riNY8v//tHkQp3hbhIavzcLco+CSR9TFYh8AY0X
	 5c6LT+NscQ1C/WyeNaYmOqmOZvaW6gdkXi2Zl9I2ZBvvNCfF0VSuR0kL7HlOcoLJWE
	 ETs1AoQL2/zGL4i0872AWUmLlfq3of+v7ROA+VcRWghGuLP9onOavXFQrprFmdXgYz
	 pOPRK8jUJTe0f6GkeKIwmhD1Tm0ApgEgeedczw6sgRxIaSYXBG6DrW+yelIBDKSXw7
	 83mwxDjj+Wq306C4Ct9912G5KOhdxhNKANmbfcYh+Yx+uNrEJMN+bN5GF2P7OjAzzZ
	 BaQu34mS4F1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EAC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721199357.10618.393140100891692206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b61cb508b48c8a7230a3e3d8c8959521f1ccbe333d42f8768f269a6d8811ddb
Date: Wed, 14 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747211993
