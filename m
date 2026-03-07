Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E92D3225
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772883294; cv=none; b=AV8ak97SB951svMiw4M9+KipDxm+I+LUuluq7az+Qkn+84JmLBKCxP4nooopeq+xysjX3gjZavPRhY3A13O63myGv5edi8GJCBiR6lKHez0xuNbdfGYWwLKbeVriEYzJY/kIXuMVqCzpFo7867cefrLVLzimVE8m6suS3N8RcaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772883294; c=relaxed/simple;
	bh=9vMkzRwTp2Ig0plDKTMdLal4RDX9YGg2/F3jZJxMKI4=;
	h=To:Subject:From:Message-Id:Date; b=pCYwWXqq/gzW23fNedlpAMjqh7DnDAyT6n5p6Nx9+XcMpSQW+jzQXaB80ywgNz2sVEQUiwDUTCj9+j+7Q0zO6Scs149aEnEcQTZmd9MDSYNVGBrpYhO852G4DjF1bizhTvRh01MHfKKNEXDCsq0p1kxMrOkYkoETfK3OijcnaRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul6eKRYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul6eKRYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA3AC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772883293;
	bh=9vMkzRwTp2Ig0plDKTMdLal4RDX9YGg2/F3jZJxMKI4=;
	h=To:Subject:From:Date:From;
	b=ul6eKRYjj+k+QSL9K/S05FDkUIi4z50Ac3NS8JdCkm6tZqMSBEkFupHch9pVn5Llq
	 aRx9KkqqZCaEpzJ2PUInpHohqFzAmJFuAjJHMERAKRqExKFA6Y6dPH65CRcnvwhTno
	 NON7Yg8+3WHQwRvYoJOrY8Aub1fXE/PDDrlOy1DTIwa6CSky3YOXsr6MulPm9kYeVC
	 I8B8Jw6TqjI72kALsvkrR7aj4hmSUHrsj+Tz9lziyqPObP74vITNFxH5uYthXCjdOx
	 UuPfg3dauaGq5w8fUUJdj19H39QdToMKnHHmEzbl/aBmsdIyHR8Vq1x5Z1RH2KQ8GD
	 zIE6kuXPrFz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C39FC9EF5
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288329361.6310.17249178215304749536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6e3cf8708b37b152260ab6cd4779d3ee21b9a0681f0221ccb7851d85f76b0f
Date: Sat, 07 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772883293
