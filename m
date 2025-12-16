Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0408E33EB01
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765857777; cv=none; b=jxnp2oY6S55zWGdvjhF+7X1VmZJu+ZgOOyS8XBeQz69TVbciFD3AlgOo9AwyC4OsGEFkXC+MEPeovOG/7ScBbIR3veakAu8CqfBuw3C00csJrPDVgT73xYhpC/hKNi1tHXFR1glN5yqtw6tmSefZkkzPsdGWcXA5vck0TdHDSSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765857777; c=relaxed/simple;
	bh=lnBQQXpx+bxNUusWWLwemZwMhDxvfzNJSXFZbO+yilo=;
	h=To:Subject:From:Message-Id:Date; b=hzKomNPsz894f83AM+Fw/fLnaV5SwMo6sPqDfWMYbQrK1OKPYLwjFEADV0dsm73yc66k5uaMg6I8rzWlVlWsIAUvzuNToXdShzNLmwqOFPjxGKOpo32BQZL4+MWnBQqTN2Kpn1/teWzYDYlGXjSzwY72uGNWdZN64LVhVgZqgxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLdAqCj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLdAqCj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB88AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765857773;
	bh=lnBQQXpx+bxNUusWWLwemZwMhDxvfzNJSXFZbO+yilo=;
	h=To:Subject:From:Date:From;
	b=lLdAqCj1dTFxxY2UzrnKQ25kRP2pP3voEphzqPmzte1Tq8XAlIuqUcA5WAGcz+QsL
	 4sxzVrvT9MZgi1aIEW77Ju0nQkB9y1HbbDoZHrzG921r4qCvApmDsO+T7fdTMNGCyh
	 lxEX1ODrs7ZASOjYyfLVjDTI5O+RV+sseC3dCFheYS4JTv8UZAXbTBWSwxFL3jE1j5
	 /fs9nfMpdeQRjDKTCHbr+eny6R8eu/U5p1B+krFUInpZ4cYdoYmJycS9LQ7xB8TbNI
	 uFiM5QDXjvOY1AsP4oBWJhph0vqxlAToLTnFDl0m++Ep5gQPLVli/SmDyC4WNkHuUV
	 Y4x4VBYFaKHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E71D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585777359.18482.6583191885341087656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2fd24ce626ce6a5622888bb8d408bbb6d9f5603892fe3975273c27c5fad9e2
Date: Tue, 16 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765857773
