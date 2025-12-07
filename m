Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0299475
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765100574; cv=none; b=qGOy9jF5CQNKmuukH3tiJQESsT5Yse36ueudMfJnAJtOWT6BRKwIMPaw7mQHair+msCssApqweRmEf6uec9PnP/5bbO4CalexnCLKQ7pFwMSZuCs+qpP69qNVgqjhM+9PXIRrsVZyAqi69NmDf6fmuV/z9+b0QJBoEEtOtTqdBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765100574; c=relaxed/simple;
	bh=0MqugPE83Z3q6IrEdNBr5exVdJ3aQr0+BK0ka5jbPX0=;
	h=To:Subject:From:Message-Id:Date; b=ni1a83hvoJntd0VgztM6pNrC/MrpW8Hj7hQFw5zzU05mLpE7DzaOK5S178e4NZfZarcV2HNkbkcthubbI+8qRUc2ed3JoKf6lQ/sigg/3x6pI0ejC4RcqmJyT4AV7vKpwV3oYuKvOLF9BekCkT5zOlTmK5qwZTeb5px41UbiiSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENkEc4KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENkEc4KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765100573;
	bh=0MqugPE83Z3q6IrEdNBr5exVdJ3aQr0+BK0ka5jbPX0=;
	h=To:Subject:From:Date:From;
	b=ENkEc4KPFlpOMM6jHka4I2kc+4i3DT4HunTfJ3PRboyIFN2VgFMaF3eVw25pBbmLa
	 JTyxBPv6gtSgXcH75RnSt7xJscKDS/KPXwsrKeCIOF36CecpM8fqsjlanPGEvABSWU
	 22Hmdm64gTC8e6hJip8zVQpsbvE4CzQHx0TJgfme7XYfFD9zBCb3b+9GyVr0w1zrsw
	 afe7jmhdj7CQ2KFS2jlsVwxzY6hIXWpWE7iNaki50MhY3VQRtaiVfIxNUa3vYUd6s+
	 4RgeORDOTYdMz0XNQbQoKosEkXJhTKDcjGZ50SwAGTIZiCe5UVRa2L1DaafIhXDSzJ
	 rMFT+jgbctMWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97584D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510057358.16323.7261907549967858174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa656fb2c71eba416a2a8d1e3790e41d9762d4e4d79f060905e1176a2ad2bc9
Date: Sun, 07 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765100573
