Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2373B1D514B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761512994; cv=none; b=EV4LZEB19D5TdS4+eQl0RY+LsafSzrFXMUMfW2Jh5cd8OzXaTP1olkT/7idR3Sms54/mfOEx31H9Q6DKeS++2EQhLyBw/ri4RNGUTVrvXX0RIH0YmYY9xaSBMXpjNxqKcNXavPcxQPtXXdiMuWQ/xv8i3+EHfaPne6CVqYorO4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761512994; c=relaxed/simple;
	bh=IRrK8C1f0eokGuZHWRI3WmX37v9SAQvVWhbFSFiCdbk=;
	h=To:Subject:From:Message-Id:Date; b=qpCuwPFpkTfP1kkyBeeW/LZU+TMGYkXWnWQC3ISM1fDWdeJrDEU7z8Wee4P5smcBotjJ8Ij29XDLp1htpQPw+czHk89njAfMUSScXA7APvOS5zXdhsEcIOMC+zfkv39zipliSx7K2VT1I2GElOqzmcJ0InjFI4ybAlx836AKGA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGB3j70M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGB3j70M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E79BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761512993;
	bh=IRrK8C1f0eokGuZHWRI3WmX37v9SAQvVWhbFSFiCdbk=;
	h=To:Subject:From:Date:From;
	b=NGB3j70MgMY1JhzoLSXdh/4NpeR9QMWi3WlZ54Ygj8itAK57JvQdSx90Xj5c+KiwX
	 52MSdamtBj3k1DHeey5Cts3hr+KYIZuKzftM5bqd2zvnn703/J5SmxbdKjqfon23sR
	 oYtc7l85dEOv9BhQqCsiAJrD31tCK2ha9+KtA+8QYNmD+JAev86JqfeLylvZBpYmLz
	 w2aH4htVAxBmPBWRodISNiAaho8CMeZwr1NDtRutZ2Ju+sfpKBNwyP8zzkO9iS9MP2
	 BcGA0tjs+KHAKPY/gsfsbT6fRl3fzmbQmUUHbRcoVleJb9/EBTXmwiddUYvyBwFSKK
	 XDOkPUpkZxJpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18ECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151299357.13920.15703982601123015095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244a33237a8ad7f62d5b9399d74c1bb3cbac51c90048ab84ca2095cc1f1099d5
Date: Sun, 26 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761512993
