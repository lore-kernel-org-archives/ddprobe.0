Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B06B248F57
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767194034; cv=none; b=ccZ4IwOPtUDzIKTtpMbuGB19GU+m4ZUoLvEMURyGj2qzN3o7iTtLC90UFGvvUpHrzne4eTsVkGKkvKicmXQNu1rCwI/Zkx6izICPcnKFzOgMjVQpZJV85B0BaUfQCm9fju2CRTuRFrG2+NNbjXkkEsIcE1F0a9Rs46ucBnO2kgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767194034; c=relaxed/simple;
	bh=rVDdw6OsuZOnrC7zWWPb2/APkeTXfOfVyfAtcU0LWvQ=;
	h=To:Subject:From:Message-Id:Date; b=MHPo5IdjAy5rH9Z7bstuEDEXCZEbdag/VRQqLEU/xdQsKliyfhQRKmongBLtj9Y+icFz7vjaf6B/eS+WbkNhaSLv1cI/AKek5fy81M+5RGZN5wD/mZFd5FD60F4U4FVUERSW5u07JPk6M/YqtWAO6BfDCudryYjgoQYtlbW+8fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCfh8Jmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCfh8Jmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1751C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767194033;
	bh=rVDdw6OsuZOnrC7zWWPb2/APkeTXfOfVyfAtcU0LWvQ=;
	h=To:Subject:From:Date:From;
	b=qCfh8Jmf6xTt1ndyZvmSY1z8g5FDzLyYJY617ya8v/Sau8Dt+iKzGgQl+2Fw70kcv
	 ecZ0p6Qu13xDWvAldcvl1T9xdTarbEfPE9v1mvYXempMjQp/V7mRtUjn34DwXomJRq
	 oSfo8gxrQZfppXvkUjX1c0TW79GfDSdEPATASP52ILU4GAbnkAc//0kYoLVDG6ljXD
	 rws+a9V3kL8/Z/9D6+NzuwvD6ZcE8acQRi6+gbcexxzoYHBi4dikkl5Vy7cKCWknbt
	 jxUOaPf7bK1oY/kg670KEbK2a1Kn29P9sVwyiSUm3uBpSdOw/KgKx2Oq4juIzxYxja
	 Oi0AnWazf1nKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E08EE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719403358.2824.728115402699884079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5ad15ca7fccda42aa29cedef33cbcf34e1ca91f70eb64e3ec7d96243b2c677
Date: Wed, 31 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767194033
