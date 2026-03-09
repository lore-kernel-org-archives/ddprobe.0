Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27763BE151
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773074693; cv=none; b=Hl+nFLiXy3Xu/huCSKLP1H9clcdt+F1kPsSpJ/yw8hI11CQ2cU0Ag0nvMMn3A3yAHLy5278whMOo8S2+o4b5aBtDFHDYps7evm3TdTpUf4T/f6Fl3b3CNKd5Uw4vi1+7fdBAW2rdEV8G5YonyRjPnBkhfof6ZbEa9IX2GBW4w5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773074693; c=relaxed/simple;
	bh=ZpkAY/MKXXT8HMiNj/U0HU6r0Q3Mn9u93cPvN8oho/A=;
	h=To:Subject:From:Message-Id:Date; b=NWcUU9xSRI/kGUasuaN0nvqKaAcbW4D6dHkWfzWEXCyNWgkmI9N2SzcOkpaOGCICgipYGwPruD1o/upNi5FkbU9LuA5gKyQObw8NDP0noCAq5Osrux28YTqbW0Sl3OtrpOxFX0vL/+W65IRojFL1hszQbEARZQR7x9FpeBHAl2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO7zCgo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO7zCgo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF4DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773074693;
	bh=ZpkAY/MKXXT8HMiNj/U0HU6r0Q3Mn9u93cPvN8oho/A=;
	h=To:Subject:From:Date:From;
	b=eO7zCgo6RImfZ0rDd1owu1LycA55hf/alsq4DcxT33hdT8t+DGgl0lLFmCPmZvt15
	 oLXMyFPmXu4uB9HIFBvgRRUjzq64gzoeqTDj89JH6xHangRZ/i8o0Y9I5gmw3s70VS
	 N2HZ2C+9KDYpjPU5WGoNp4Bs7iE7Dnds+dksT9iBSgcjjh7C5nVIyvI9MwPQgHc8dX
	 DS+cXGDodOJvYpEkSMG76DGlCTvaFj3XFO1KWkIhJGAU3yR2dPsLY79+Ysfrk36c8F
	 Ou/WSdBN9P39Yyzp0qQ9sk1u7yxTETnxiwFt2FtyTPYvXAwnZmH5T2qbTV5QxesxP4
	 0nRQ8U8QpNuxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD9F4180E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307469358.19219.10461591915496002210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a58e03ce67472c904c80506c3095f00c5385cb55fcbe2490c2d9c76963f470
Date: Mon, 09 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773074693
