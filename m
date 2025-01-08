Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E825949C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736358354; cv=none; b=juokQebSt78sZ2eZZO10/gob8UmrI5cjv9nWs2YqrFz/GzUSyPKO4rHTaqQAfZGcMjpX/E5LZb81Y0f0Hyvk+VbPzvIZPuBCs9N7m0pGvLgdCDy9ktQPGtOW77xxJo99HxuDAh9wCKkyLIerURxZN2luokaAA9fwPzQ4+gBo0mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736358354; c=relaxed/simple;
	bh=iqBcsmXrO6uZDI6VOdF+ml7XsmT4LcrP5pklLVM0Tq8=;
	h=To:Subject:From:Message-Id:Date; b=IJxfuHxmnHT9IwjR94tmFLZeRCRGjqq1WlFgR+C6eMUhxri9WABcar2tyi6h5VYTy5su5Yavy/1KprfhsPVUvVUNgwXPM1ghbqR5PysvIr9BppxpSiChpXG1tZzLq8ds4kHN0mFeKO1IuoJLYODG6OoXde7yUu/0t/sRxY90L6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RREvbZOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RREvbZOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94CAC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736358353;
	bh=iqBcsmXrO6uZDI6VOdF+ml7XsmT4LcrP5pklLVM0Tq8=;
	h=To:Subject:From:Date:From;
	b=RREvbZOjkPuT4dZGMoZouKKmfGrhYr2MDnCWvGIejpOArrOcqqnGI1XgqCRX9jTK+
	 ck8UORXLjgzL0P+wjCKeqqBJwQIn9jq7CCGJlrELlPV76/8HET7LIotPccVi9+etBs
	 a/PRVxlGFykeQtQsbkx0AHGzFZcbIzyJJEFLhNojPC+66r3CgAH024XjpCPPKowvaL
	 rWApmKYuf0u8pb9GAGDMKlmdNNRbvnRzrMnDU3kBY1qyzdbLxkH4UPp2/ZOrB1rx9p
	 U6C8Y9yQQ6e+o98dflQdnDHoH9rfP0R9lCfrryVj4Ee5U8G9zurYKDrmV6yXVYCl+7
	 2v6nxUXH+t6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A5E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635835359.3800.15002472818183412529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fe9d616fb6714bcffd09265e4f49ecd470ed27601379d12442cf4575ed831d
Date: Wed, 08 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736358353
