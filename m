Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A3D82488
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727556954; cv=none; b=Vldwily0meNQwhO3JSycr/oKaqA7mG2zCBnXS+LwEnnsxfccbmxjcvKrDWN3Hnsjh9z6U26bOjDJA3ZCTlN/EekwiIJVl9NM4RRqrN5Z86ggMxR8etUoFif/Jh8IcNAdvaDN+3GiWB9krkiFzSItnewcLjUkKpul8Cj6Q2R4IBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727556954; c=relaxed/simple;
	bh=uHsDG0a5eZMQmPnwMNENUKLvgNIUItFEGta0O30dXiE=;
	h=To:Subject:From:Message-Id:Date; b=eORG37on4gd5qPGBMpK/bI45YB8lM6kQn/2rahK5R3+QlERs69dxejd8fnfY0kZTM+GmLsr5GI6uQcEbsh66S/k3TzuUufrN7ZjNPxr9ajisgH9njdFgixujx16is6xRebUNtTaGAMJIP6UsKw+0N0hTuI3D+SHkWbmwKWQJQkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY7Rom/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY7Rom/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B085AC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727556953;
	bh=uHsDG0a5eZMQmPnwMNENUKLvgNIUItFEGta0O30dXiE=;
	h=To:Subject:From:Date:From;
	b=IY7Rom/a74cAF6pugtR6v78mNBp9WL4nVAkwhT/DLAjZyatfLyY25G0QQBFDxe7V8
	 OlFR6Ae+2xwEK6W93WBHe9PkFIzAIzQBX4Pn94AE2OzFYQBWd2k1LbPrRx3tASbU04
	 VUVPyME6uhKVc1IzI0z3tyOKo98lDzG/LfUeVtK+kV0p3FYH6acgAHXOv9D4po37BI
	 9lW98JHKYf+k1Wx2HpGv4FVHIFUAKaOR91dddwm3kGg4QQxO+v8YRYckb7sfDkRC5A
	 BDJanYlVEtCXGomR+AzbUjTalSXYurIEmjtAtFPxNZFyXKq6D/c5Cj2nLqzTqTs8qv
	 NswDI4vWhCf9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C506CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755695361.15564.3356690667475490964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2997b6b0892c51fc968f000d09b793b38f3b1c0963b14dceb1adc5e6ab2a891d
Date: Sat, 28 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727556953
