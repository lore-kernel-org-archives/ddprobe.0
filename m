Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CE5168BE
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729960554; cv=none; b=lG71GsD9InSWIc+zC/hDfnbduosy85POC+DkVGcBS4k/vsKu/pESHvexInCKCSvCKJ2maZ1slYj9AN0pnJ/8qrdnbrKfSWxci2QM2OwkqXnXD4JBZrZGUVR5kqEdB29FQzUDotGPPjhos4SKH7mKP9251XDJ+bogiK2LLzfL/zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729960554; c=relaxed/simple;
	bh=19TGjDx2yxAlhQBJqX8j6aA/RUI5NbUVhTbM78AeChU=;
	h=To:Subject:From:Message-Id:Date; b=V50GoivEvRY54NKwkvqHA/0ls1sUfmF1xLgXbShddJCJ/PdZNOb75BLD44N8r5pcCCgEzzGtsvI0Q1shFBeRZgkek/WjpFi1FhnU71cvhNrECO7RsQnGllHPZhKYalg4lERIF3vlEHqB5qD7bYU8oXLf+cGv8sIVli4cvrFjFWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnUmK5wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnUmK5wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729960553;
	bh=19TGjDx2yxAlhQBJqX8j6aA/RUI5NbUVhTbM78AeChU=;
	h=To:Subject:From:Date:From;
	b=BnUmK5wz9/UIlCBisEGM5tFU6BpZdHr2x7PyBJWqszxTPZ9KrDHSXykBlyc4IOJ4g
	 vIPRwngHSkZnK3eCCptWWhAvxAGffLTEWjf0eSDoYTxGHRXKdvguRDH7Hf0+d7w6lZ
	 NkTRyHpD9LNdtxvc+54Mtef2R2qjM/ZChw+zpl5h4aseNihNBqKSF0W695ROfrNA/K
	 EbMk50SJKbM3j4o0bFpVTt5Z9aM+XC1KnNbLfq6urwf1OiLFeuBGE8NuVuYBje0eMv
	 qXT7vjHpedhUBUoCL6aFyM8A0cXZw5n6c7IjbD6B2G76qLJ35asIPQs1mjQWKb2J08
	 YzYCeshb+cMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCDD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996055361.13372.15529291030398810272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e0b1c8e9ea5cb04c79a68c396f98a82610edad221801a44e2ce3a893d65eff
Date: Sat, 26 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729960553
