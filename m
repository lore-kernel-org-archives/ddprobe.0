Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DE13D3D1A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785133834; cv=none; b=R+74mqwiLIlNn+M3wUhIpLEh4ahRzNotrhNcFk35EXD3Xec1o5k3vESRDgbSHEjeSzy2Szyi2ITcq9HsHZIESAajsli7+QsdIaHErmAg4rRYXP8dBfuj+fDyeyyvXxyf5wVRN2EF5emF5URCT49hASqnUq6BMAo/cpY0Z40Lh3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785133834; c=relaxed/simple;
	bh=xNKSx+7UZAnqAevrRv5OyGyI+JWTnVtOM74ELhn4pOc=;
	h=To:Subject:From:Message-Id:Date; b=dES1pvs9b/uOrbAc0TgnNuN2YnkRcqVWLDBxfmKVsf84Wxw+WYi4G4aPCqv8OPkzFuloGbFrUz8DjVF0TQvDzYVarjyaaYJYTD1wimUCFDTz7m1WhcFKgknd0gTCcMqG5HsP3u+31TqiJ6N5RSD6e9Uuhv7+ieBJxI94brnJjOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csGOGaLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csGOGaLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1056C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785133833;
	bh=xNKSx+7UZAnqAevrRv5OyGyI+JWTnVtOM74ELhn4pOc=;
	h=To:Subject:From:Date:From;
	b=csGOGaLxN7JL7ojKoRsSaUwmT+MCVQGKFj2liOmbmdean9ddmwIX2OwDF9303LcoZ
	 GAjbkOTHiMARBzto6VKfIpedKnuhEjh31/HNZsJ/WKvm53jBACLJelw9JeoBkuFEDr
	 QzW82MMAs3b/KVxi4bNvpMaNn2/lv7iNW844J2XGiE069xct3o8t7OrxiCDObCFBC5
	 vGH2xeri1f+IsWyD3bCkIyDnvK71Qdg2UATZhZQbw/iPKYnUNBWtZg2iVZ4Dggq7dB
	 XpjnGFnukhX+OBwg8Dxh3/WweC1JfsTeJjIjixmhOmTvttaYvyFv49uE7omvHPAe53
	 dDs2A2QsX+4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE982C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513383368.19274.299154005819679290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82d93cfe1a6d5f1956887ec76c3bc5e167a899745df52324046dde916c19e32
Date: Mon, 27 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785133833
