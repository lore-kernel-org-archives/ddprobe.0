Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA1A955
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722571554; cv=none; b=bJYCnEAnLjNCqULv5OfUFIMCQjviGPJ704tgX331sKtU68hA4/hpeAKx0UfkchcThgqayBsaZxsHc4w9upoCX2cbYpAwo7qaKKAWn6C9YseSxX6FWm3I6k1lIXe/fDkAkXCVjecGGmWKP5lhVq229JjIF25di9/wTbhtn0nJleM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722571554; c=relaxed/simple;
	bh=gjcBFMInRP4zXc7IHX3+pZy5bm+qzz2YiFPwX1iC7Xo=;
	h=To:Subject:From:Message-Id:Date; b=fnnZaHjP6NYoG+wpqbSLF5yvV0qr+Z/+02Hfq5nI1buQhmupww4svFXqOcsLbPQgb5VEQ5x3PBQkPfRjlWjc9vntMMT9i24v/qMRItJpRj8t06r3Gydrc8Ms5MlgQDgnLZugWSR98qGTD5DZRMTbEr58mfmM/VGXG9lpaw4BcKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0AtUok3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0AtUok3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9300C4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722571553;
	bh=gjcBFMInRP4zXc7IHX3+pZy5bm+qzz2YiFPwX1iC7Xo=;
	h=To:Subject:From:Date:From;
	b=i0AtUok36Bg2ZXU42kb6I17gaze5OK5zPQSXAwWFRqVsB9F6I0lr0mQtCLsOfiSZv
	 7qU4w5WNiFFfCmoOhiM0q8qz+xfkd22VJGjql04PMU5j6grxV4+kVyWMT4HfWHXcCR
	 4R4jQMD/b5rWUKsDfao7gK4Pw7FHMo28uxSB/JCBBoyfzcNNCgsQC0aQhb02zUYzps
	 5AuvEvD4M9axk+3R0GdQtY9jrOuoEYDKpBfy1eOhK1zMZ6TjP08hJW2Kyai/0p6BZK
	 +rKlgPpBSPrS0hS6LkmEO+WNIshAFwFf5NonGNrNdiWz6fkd9MMDpRmmsVZ4iaS9gg
	 ItVX9gDQFkYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFA5C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257155364.22665.4497377838890711950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea2b8cf16d3351489250c84d8260e0215f496639ac952b0973f2d99d8116fec
Date: Fri, 02 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722571553
