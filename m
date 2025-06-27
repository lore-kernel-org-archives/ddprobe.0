Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35486CA6F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750988395; cv=none; b=EHav/p23B+qQJjXkSaot49wct22BSpculhpKe00qvn8PzIOeaU9Cr65Dxfxd2tmgLvIv9f4TUscj4fDKCTSP0Lzjs4FWA1my4e/wHJ2FsRm4njpNcDc7fKX1GSc5pyBlrBYQqK193QKE5VQWFDQ9msDv4M3WEjxJk95g/B2Bzbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750988395; c=relaxed/simple;
	bh=zLoOvQETl7mbkZoqdvBkSf66fiinsxkRXQ/PaCMTUNY=;
	h=To:Subject:From:Message-Id:Date; b=fNUSPfQuI7803WFVRBahTXtl0Depp+Sp8jzBiCCNwxWzCExzdmJZITGa8zDbKjpymf0eWN+BIP7t/wHG63snfccKTC4d8j/3NujnCAbHgNk7aXE7u/BXfZm8eaiflyKMLuo/7Zb0uk3/xOEbJ+YCU1sH8twBQW6BjbOIPVa10l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuXHs4xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuXHs4xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F8EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750988393;
	bh=zLoOvQETl7mbkZoqdvBkSf66fiinsxkRXQ/PaCMTUNY=;
	h=To:Subject:From:Date:From;
	b=DuXHs4xnhExF3yKWAWPjh8XrgflFEaGiUnW01UCq6Pt1KGkFKFMCkc9SXhDTuWmxE
	 bC0qr3w6aTWZcK+7dky4NcjTChvHhQy73y1D1SqilR4lM3S18YW9HS01lxnKZ0knUF
	 pg0uaJGzDjd+cKQTCgSTqURzqbms1H77DUr6tqx/Ui8hkBOKv3YOrSgE0aOtUFX9OF
	 QNiaAI+0UlZ02Iuq1frx/kcIDcL8IMEM2YCY240+97TgYhkYUml0ZkL47CWLZ5DPaN
	 wXUtVoQ0QccEirydzhqCB3KDuxODgPwCoID132KFinOkvLIAdpUNjG8WMZmM8Ul3Po
	 r70ZDl5RLCm/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A265AC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098839365.10089.2520709640149903162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebeeebfbb3e28dd88fb49bffa369cb39b460ddd5761e80aeeb270d044eaa550
Date: Fri, 27 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750988393
