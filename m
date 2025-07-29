Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E549286887
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753781394; cv=none; b=t/iX7bTh5kCfNAa57XUqf0/WAthQW2tdRNggX24vPmkKdw0bDwbPcd+e5p4LZcRkyxmnum7yL6xBcaUIGkxLaWt3UQ+9U5Wa6WpvcDRME5EpDQ0wnGfUlZJpEiRbxvabzueK9aBGsziuCiyNZyFFneiZ8falXq/56CoFXl9UHd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753781394; c=relaxed/simple;
	bh=XrOQzprQziINvijJG4xC9cHp7ym8WtJVBEeb4rVzq4k=;
	h=To:Subject:From:Message-Id:Date; b=FGudFAPfNBWo7g9eTD9gsNtoX9EZX8JDNjECfcp5hyfDHcuFOfUU84v+0SOriARNp+VRatdSZlUrz17CJ9C/myIg3Hda8bVp5zyUz+WN72SV90CiekhxYoR5Ldv7VWiKgCSTXJC7YV5/TtQcKwgLbK/B5K0rlawgKfmOGHG1C+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWQzKQtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWQzKQtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCFFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753781393;
	bh=XrOQzprQziINvijJG4xC9cHp7ym8WtJVBEeb4rVzq4k=;
	h=To:Subject:From:Date:From;
	b=IWQzKQtN1q3OvkvqUED22d00/n8P2+Qi1kgmum3P3jO9YoiFF2yoMjooveGRdTpQq
	 AnEcP7czo+4WT+/9uYeq/vlLiixc+n0u+8APolMaTc8E7xCXazWPocgJrbWXuZU185
	 BicGXBs3wmKc5w4SNEne6MtoQ526d4ia8fg/tsQ+pNGN0hlS89nN6l8I/YYLrNR73C
	 QjUMNA2l0JVFS1+Yf5d8vYAgsJ3aDoZ0cFgAnbv3q80MgztTiOzWWakFr+WGUVXUJv
	 532c1wpuN4AfkWCeiZChro1AsjIYw3soC4dgOt/jd0+R0XWSXFgObdEXq1CSw8Sj5K
	 DIE52bKwwNcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9023FC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378139358.7947.5991189528358358562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106033cacf180a41bb91eb748a770b3ed3452f55b40b1c4b14c3916089160aa2
Date: Tue, 29 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753781393
