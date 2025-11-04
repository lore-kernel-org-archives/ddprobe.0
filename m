Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F263B2F39D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762291194; cv=none; b=ZCGZYHHn/Rgz69gZxOULv3NYh3fU4hsrwVNCHpW86TDt6tZR6ei3tHLZ2jl3Bb/FDHTGDaOKxhmf/CUQS3UiAozb3nQEtGOCySDdbbMxJvEJzyKhztSiLWl19HtzofhcR+vaudmePF/KxCjCS7NLzj7u202ZA+ue43AF8N7YAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762291194; c=relaxed/simple;
	bh=CBoJRhD4z5De+5UQKXBQR9iqVUTeXRcLLTU9gRfnw+Q=;
	h=To:Subject:From:Message-Id:Date; b=fDDZUf4xjnINYbFb7FDiiQIvAfS0mEFTsz20wr1hPP2UUzzbKsosdwXh7YjDLSZbq49L8ubDGeC8uZrVAojjjHEbw2xm9hpne7OUe0WyD2tARQyUzzvhr0TX4Nqi78wzFZHdOyrPme2h3V+wh80mHm1Gh/+TRbquUQaXqKW71oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/a5ALIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/a5ALIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C69EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762291193;
	bh=CBoJRhD4z5De+5UQKXBQR9iqVUTeXRcLLTU9gRfnw+Q=;
	h=To:Subject:From:Date:From;
	b=V/a5ALIQEYbvecYxZQgCuMt6uB1gC+2C/GNBC70pRL720xpXoe77BjkjEkQjCaPdn
	 erWEr3HnrLeXSR7jE/ETRMccXuLncpIXmluZJStmYmJ5HxQJbXK/gB31z6XXCgQ2s2
	 hCnhAXpnRj+I6JV9YMudR6dBZ52dSctu1s3fEfS3Rg3enb/tkbRlsXwDdcUk3o8o7v
	 ia6N/C+492o46Sm4IRhIk3w1zz+pKOhc6WnWFuG8H7wLLpAb1PMsIPRrTv+ur0x3AA
	 CEodORNpeKqVrk/nxyCRw7NiNosJbMoboZcmdQI5qjUsJr2pzPq9WE8CmkuOQwYd1Q
	 wDZ6gIWvv2dIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045CCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229119358.8666.7907971148927167595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01df68685540b36af488cb5b59fce05a94adf6f5dc771dd9c82d8578b9f187c
Date: Tue, 04 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762291193
