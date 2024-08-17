Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1E4145FEB
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723898154; cv=none; b=ZVBmsVsM7N/H9EvwNBMf39V+41auQzMGmhnG26jOcVl1mjHXFYEF65yrHYFLWX1ESF91BUJ8g2LbKB+urHJrgAfIonhThGM48lFz5u5cGalUkY9PdbMYSiijH7bfXY4yLlMfF9YzoaAPXo46ab1XSWESJPSk5ckV2xf6nTgL7eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723898154; c=relaxed/simple;
	bh=fiJ5zr9/Op2MhbgJf1k/UdyFCbCLUQ+WKgMBRCiGsXU=;
	h=To:Subject:From:Message-Id:Date; b=sKpMMbehhou1rKhtmABsu3rICFXDMIn82hh2lUqfnRghzfVJOpuU48ZI9J1ZGbNMbGjaWNsg7HiXvufgj0jHQgbvp24aZVEfJQEnaBuw5+tPSo1D1IsAoPcRrbHGzb2/QSbVBulL82MNMnsaBb+Y9q9Np8+u0dW5pbnOWuLa7Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObFycxHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObFycxHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FA3C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723898153;
	bh=fiJ5zr9/Op2MhbgJf1k/UdyFCbCLUQ+WKgMBRCiGsXU=;
	h=To:Subject:From:Date:From;
	b=ObFycxHEqdmF8OQd5Yomd4TV0nFoSrL6gOzMYyC4DNMKGdAc9SEfD3PvkUWAvID82
	 d0c+Ztqc7Ho7UfFZT35Hco54SiVuxX79u2RCcnskFrUUvOczHbOHKO8kdp3DyC0K8/
	 guLUCWNc4UEsMWC2t14CphEnDHXk2vaV1KQC11/jcbnANi9lEUnE43yJKW4x1P13QM
	 Vp1GpzFaPzJvEsQ4Urj6lgAxKGqrlwoViINQR7QUrfgvuySnbWTwefwAlt8DytKI+N
	 TpihzTsmxsxklp5zyUmCHjW9tkw0dKluIvQzd4sGfnpjaErrU7nhO/0FLGzSw7fLuX
	 PrnLyscGVDTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FE6C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389815360.8339.13859587117002109672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b752cef83b07017e34626338fad3718c60514dbe9817e9d0531a4a0f549e65c9
Date: Sat, 17 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723898153
