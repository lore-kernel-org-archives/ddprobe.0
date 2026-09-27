Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A26D3B14D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790524234; cv=none; b=hxjwqFMLXanZZ7xJZP0RHLHmEn9f5CVb9CLcbHz0MUS99nZ6f+T7iLWwFsjRg75zs485f6NWTBJuX0XjwGqLldH1vWPU0hKS3pBCcin2GvLiSZNqN//OkBpT3lEM9MYz/AJYdOnLTsjUk9onGedlfNWH3jMPyBCms2nVUwioXYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790524234; c=relaxed/simple;
	bh=zuRABtyjBUHNh9FVDvfLpFfOxtLVAPMPw8Jp+Zayx3E=;
	h=To:Subject:From:Message-Id:Date; b=lKyzVOBDLZP+3ftx01hU1o0Sx9RF56XDQ9r0AkQSBRruTXOBOgtxL8Dtr4xH/ecNi3Ad5unVy8HdocuXswrlL6wGGjhUDb+U+9Lv03bL+/DD5pty06opvkaw1Z6EFc1QNbzRuDnhoJgt804lk9NpbqhccijKO56aHoOtrvd5OWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9mfOhiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9mfOhiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38E3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790524233;
	bh=zuRABtyjBUHNh9FVDvfLpFfOxtLVAPMPw8Jp+Zayx3E=;
	h=To:Subject:From:Date:From;
	b=i9mfOhiI7bya3LgsJ9Gt0Fg+KLawRnhr+5oRQ8qAW5qYjpyZBm7KIwpfXBov0c5vh
	 Y2KCsG01HMm8Q8NUn2dRWKYHLumMGvoFF59FwikWoKlj4UTXwNNKNBon+0qKgHZ6I3
	 GN1rXCH5FJhbXKgJxvrtKUdosIiQvOGGCeRw+8ivUrOW4x7AxZVk7MC58m6TcgczN0
	 op7Dfsl5V2VcVmJ5wbIuaqyGlH9XBHDFn5iKfzc+g/5zFNSvs1ZWYhTSJwxAxSJIf6
	 wUmbn1AzeRfbM9922O0ghgqhpOhBULpSq69XaEcimYTObARArAYqKOeGKqJrpM9tUR
	 y1efAJUqhrmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0FC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052423368.19314.12599829039373812038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f27e7e27f78e48dc39282976b7f9e8c8728a24c5721cb8f9f856ad2c8e7cee6
Date: Sun, 27 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790524233
