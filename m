Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F12928D85F
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753099794; cv=none; b=hpoE8RsIW5i+w2uLbyCKa34TrjNJDuEcrzToQdc4hkFp2KRd4MaT8o/NYt2WvkUJxvD9JGzzJDC3p/ATXCRVOlwAR+cgHJMHPgRtEe910vKqNAcHo3F7miOoDdDj46zn1Giim578EgzNEkGBGVaTzVxj3uoA5GN7zC+xh4YT0Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753099794; c=relaxed/simple;
	bh=aw7m92OQooKlzeP/VP4pWzN+Bau2a1mEkWQXWwGtFPY=;
	h=To:Subject:From:Message-Id:Date; b=fdjWDcPPb5Uvs7ZpRaBhPz75/2tzSH2/63q0R4YUpAMFRvaW7Xu78el8VXgeoPEkfCCHaUtbHHMk7yawnerc+419EMZpW2oIqP5pStkfyVfbuFU1/hc+LQeRL2Gt4t+XgVWnuFdOQtJjOkOVu1aRnR3MIohRpCbyeoG2JvAXW/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwTppknN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwTppknN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97FCC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753099793;
	bh=aw7m92OQooKlzeP/VP4pWzN+Bau2a1mEkWQXWwGtFPY=;
	h=To:Subject:From:Date:From;
	b=QwTppknNzMMmueaUXlALFIstnM2m9zIRQArS27CUZPg1gH1H/wM6hM0gSdQl9E7xk
	 IyzzX6v/Lat4OZ3xs6VOnRM81Tllzw0XqwT4PHexNnnAXljVtJ/aFFmpF3Tm/M7exD
	 MGcMnhi4w8dchytc57EP5LkWOrNO8Lwz78KmS/4N9yzcujqpWw6U7pzLMO8mv2D7iO
	 8PTZwU1QuYLxgycYIV7mfOdFH0M7Xgk8sEutaCl/UjDMJZhphaNreVZijfsQeA3eE/
	 w8J++zxoS83Hl+8JDMuyhrd1Ar4CivoPCIiKW2hujDaJLOgCv6GVgDk39A9GyoJUzD
	 9LZsIfHEZkvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB7C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309979358.19805.12233338926336317882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa332598f535a97898809138c4a0bae9ac6544cd399f7593b8478719dca49fa
Date: Mon, 21 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753099793
