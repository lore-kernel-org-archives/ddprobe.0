Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1844D2848AD
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758923394; cv=none; b=TTUeykux8KI3XHq+0UOmXyM4dOcOsBweVTvIFmAn1mnaJooK4M59Hqw1WbqbQ+IakVtJ9RFvpb6bVT+wPu5FMwWzhH1I7OW/FBBS2ubVU22xTv/wptjdKfiAMKTGXGdJgVnTmcRdqv2GFr1bPt4A3DDm93Orow2jLS/Cgm4CoaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758923394; c=relaxed/simple;
	bh=R6n6inqiZJe9ypnCa0Wc3+wifDUB8lm9Fp7ZluIf2uc=;
	h=To:Subject:From:Message-Id:Date; b=CKBvGCO/00itKPw283sLimHoQSqyWSiaKv3rmWDSdRw46hSZ4C8ZVaAVOJFE29pK4LE3+EXeyYy7Fx1k5zdZBuN9XUMzTCJuN2phemTQbMj5VrfVjSZtFeeb6BGOG0zi9UGAf1aQCAx0KMhwu2JyPD9rUX3D5wzKYDcFlrZ0jnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEAvNBvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEAvNBvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF09C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758923393;
	bh=R6n6inqiZJe9ypnCa0Wc3+wifDUB8lm9Fp7ZluIf2uc=;
	h=To:Subject:From:Date:From;
	b=JEAvNBvpJWF/C6/kiYJQW4TP+tAGik33dz1vjrxLesleQrFZdFgOUE03ro2GVFZYs
	 Qr6ygU6vOuKFFWu3s6l6yE2KNdpDDFkLy4dUg+y8+ZFWLB+G3qIZPbicAoFH7EyMbl
	 Y2xCZzq1XDrD3FpuBU14OyBKrZdCqZ6h2PCrKeqqsKqjXcROto0ML45z6kqwRd6pBb
	 GxeX0nGbaGFJszsKiP7bNykGF9qYcLJVGgG+or5Cf6Dc7plu69C/OpPz0U4C7ed7ak
	 ZXQeKAoGzPjsqSAX7FlJoOsYyvYLmaQYNEQjU2++YaPPGMzz8iDDRt1GdEdzF33jpt
	 tQhxkYWKOSEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B04CAC5BC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892339357.22404.3959253911878695481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cf8832ab6fb5bb82192a78f8ac1445c3252a1263d32d2c63115e40872cc344
Date: Fri, 26 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758923393
