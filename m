Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F64E3F9CC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733540154; cv=none; b=DN1j003Xph8b28P7NLUDa/Mvsn8vCQFRiQCjc/Tq3ylkcJneRgK5BTh2GVMA7GH9Ke8KlO26707latLhu/8TTKP0KdeRDpdMdrP6Lt655nr3wbm/SD89hn399mWBb7RqOpKj7Ca2f3/W/g5DIdTVGriHW3Xa9u2hDJjc3HvB9wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733540154; c=relaxed/simple;
	bh=/qol809f+1lZ5ZocJ1TPjbdVGPqLCboInkUW2OaWptE=;
	h=To:Subject:From:Message-Id:Date; b=MF1zBJEa46KEfWvhiwBOusSq+5kDGUuqvme5sMO9ESN2yNlzZlYd0Z4BAWBURuOnhNucbXtn8qxIX10TV80cBKPd6inmnkNcN7GVodBKdlO4HNW36HyPfNFgDU6uQUs6Wlx25N/6mBkv0zN8p6hJquk4+iv6PN7q7ZcUhqAKA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bO+3Hery; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bO+3Hery"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F88C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733540153;
	bh=/qol809f+1lZ5ZocJ1TPjbdVGPqLCboInkUW2OaWptE=;
	h=To:Subject:From:Date:From;
	b=bO+3HeryS1SZ/XL6N3+5ATUSCbTJbxbC+19j79KvqlP5vnlt3nomeRiSGXffWUig3
	 6DgKZLX1C1OcsqmhLv++cxtUhq4x7s/cJGnl4wnm3TOsJxWy/rZ1gIfBeoGpHq8GJH
	 1Lj+R0yAJtLUWpfE6YIqjHe/09UptOctyTasqjFTvCIgQ2sRzji0CMFqXlBgg5Pjsm
	 91oSMadGprTnUr1KBS0IFPE39xQW89bJyi8Ss4iMCNQ3T7P4GnFWNbaOuUFXm1/StK
	 Auy0EtsV/TPUokpO9CSoBdls0gNYWuOAMsrEjEBR+3troFPWvuCv1nSxpxZHWMC1RT
	 3OyU+5AiOmQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6B6E77179
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354015362.12952.9717919796407703620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e622cf00c02c24e7438c63ac27d3570286067c26905b006ac5fe17e0ee11ba26
Date: Sat, 07 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733540153
