Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36A6168DA
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711276097; cv=none; b=XJLdNu27r72Hz1Mg4wnO1dwaaGm5rar05/b9zzdDFISDovxyn08J/WHPplqwivTIbKu4un4y7YfnjAsGFsOVyzH/h9iy/VZgrBe5jJIbwdJHbTrhglxpi5d4SYURb+g0w5dvJSStthexnE5G4v9ibuP/ypOS4q9qlk5h+cvX5GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711276097; c=relaxed/simple;
	bh=AEkmr8+4v9KMiFARWTR+rmCXTOCsKAkiZ/lzBaVohu8=;
	h=To:Subject:From:Message-Id:Date; b=kD2SEzDpGtRigHPKow7usD1rTt2fY9+mrF8hom70wtMVBNyA4Zu6THNQr+5numDgkcGINxN7MtVCaIPf7GEILuEXlyMZzLmCrDSYFi4B0Wz5HAmVWWVr4YEGjrwgseyRQwZqOqXavr9Fv74KmxUuL9Tp6PX8F4C3/RsEaqMwNdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5ajtxP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5ajtxP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4BEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711276096;
	bh=AEkmr8+4v9KMiFARWTR+rmCXTOCsKAkiZ/lzBaVohu8=;
	h=To:Subject:From:Date:From;
	b=V5ajtxP5YIW79SlV72ckZrZkZV1NKmyOMd5+HdQ8h0M/Utt44x+R/uLBz/aWKJ6Nb
	 z2xtLNGqjZIe49ElLy+UVTgc/wa5SwR9ntKD3kmCbUVYBzrYg4nNdp+ulygIjUa40G
	 Z54DYF1AVBQIBSJ83LNmv55/agK1ZqEAFKsq62aC8Z4l8Iv/bFDZ+EY5rpT5eR3Tr2
	 MObnNYEcR+cHrZ1Zr0mMK6rfmQkJHY6hjED+WTuDF0al9RkDLeVx3L/w7d7m5CcQNU
	 OvW7IAsszqWlrjpP8ObFL/TaEB/gwT/+RxM0tfuSw2fV5bnVTcFeGFFsqn8XXQvn3L
	 TWAiy7eyadQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64865CD11BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171127609640.24135.3673419722200979486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e68a422c63975b45fdabd0f81b80069f95ec5df353328594e21a5fe1063971
Date: Sun, 24 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711276096
