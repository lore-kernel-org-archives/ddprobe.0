Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0AB621
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719966323; cv=none; b=ZdVdJVwFMdgELYBsX2jJfeAAz/UEZGt0s5RS3ge3QBGR/Q3P2VNvzGxweGWv3lNCpMviBhR1wwa4kur2Na+MV5S6vwK7gMYpAtLK1dA1Xu3KngyXAVfq3MnWX646VL2QRiTYVeDtIpK/CmINLXoicPIgwyOdJtTDz+iDzlSG47E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719966323; c=relaxed/simple;
	bh=OG5cBJiA5zW9iu0haziIgtBWV/xUIn9TYxIvlC8WgEA=;
	h=To:Subject:From:Message-Id:Date; b=HNJgob3voIQsIJ4tDYYxtyOVSs5aIBjdN2o9zW+1vqJlGld8maDKvKOTbAmXpVg9ny2wZsEZEOKpnEMzG/K1I8yKAs2vVcDM2gHOBvje/0YziXdhKKowwxlNXSMiw077ENl/u/IceN00LXY92M/jChRuFfq/DWBozxFtj/hl9is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI7A9+1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI7A9+1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2209C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719966322;
	bh=OG5cBJiA5zW9iu0haziIgtBWV/xUIn9TYxIvlC8WgEA=;
	h=To:Subject:From:Date:From;
	b=tI7A9+1lOFufCkIGRq5jTJO8Ps8jV1N3x35Eg5TOJ5sxP4LKPc1/4sR1joW1yZjF7
	 ossXXoDdYSKwFhoGGv/Es5zdzB1K1vtnpsaZzKLZ6FNhgghOnPmK0rFeX33IvVoeU3
	 2hyCsX6q9uUhGHPOclnBrJfrqavmedgXkClXb+LTB+ggFaZwohVeIfr+vHxiqNzXLF
	 7k19faw9k9Tvz4IKNrnf4Ag2lowS1UYPi20JTATVOOOiN2pF31JE887To9gtf6bEz6
	 4TiDQfSYAsgBdIeT3LG01hGlf/GCfVNPya4IjkbBN8FVb7QUNg0/OKMCmbfs9rzONa
	 VewvFvf8xnMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE24C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996632277.8411.14810184678008319165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276bab1b9268016e43b430c8b0efc40fbeab72615f71452dd19dea0f73ca5cf0
Date: Wed, 03 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719966322
