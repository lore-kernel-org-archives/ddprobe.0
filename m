Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5491622EF5
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716314003; cv=none; b=YndOPtdtOPZ2ZY5SJTISg+uRAu1z68r2lyH5mIa2ZalzM0ENFJ6Cys/EEoNsHt3LozTIQIZ8NKJAsygtwfEol4i/QbuflmV6wJTCegnwIvbTshbTs8nRsCvCnCvlxEHRJ5OjU8Jc3dFqSh2vpYlVnZI3Ri0KmWBD4DjFlepqd2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716314003; c=relaxed/simple;
	bh=myxNGG610LzI/y7t0mm7SXNWZLnABalgSnY7WUq75/U=;
	h=To:Subject:From:Message-Id:Date; b=Uv9PrN8jBGMBUVLQ4EzPGNhcEPd098qa76i/QRXuiCxE+ennCkjNwfNgR0sstgTUjaKivcMXv4VHtUdMO4a8N7JeCfzncOwei65bATtuNKYi1hLoBtpkUM9mPlFPsHWUWxqjiqNDlssgZEtjqs0BdEBZffx8NsJBotoUdjoT5Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNzDYb8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNzDYb8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC529C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716314002;
	bh=myxNGG610LzI/y7t0mm7SXNWZLnABalgSnY7WUq75/U=;
	h=To:Subject:From:Date:From;
	b=eNzDYb8nALG45MJoizg3YN5mmeG5g85Ffck57iN8gJ80pdoEpEuqgL0YndG9Khyg1
	 OGHtO1crtwPXMdrKACEijzxhiEPma2Q0OPlUOLGZUsOsV2ev80SmYO82iAbrGKwyDX
	 /jzofM6+TyiOq9z07Q6ewX2wrKe+o6uVMPBo6iBCQbop0nMIUOXNbKHCj8aHXRflfi
	 0dEkkVygptykv9G/rBMpxDs584PxQjJPG4FE6vha4eSuYMGy1gCZ+daF1uyj4i+Rre
	 sdw+0vO8dHV2suqYsCaxB9D4zO6Y6t6pVGKN29JhA4hTBd5mu7aQBp5pYjlFlEHJGI
	 jsgQR2jjWEh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E03C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631400281.29736.4483886608628170588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289e4d3ac6c1935961ff6e68a1c158533b8e7e2e93d3aea7742eb6c6c21f3ebd
Date: Tue, 21 May 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716314002
