Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5325D257D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751089194; cv=none; b=sNi2XYadW0nDNKWbWzs7CG+++jAUzGv/+hxrFHNKciIAXO6ioUjvSvtwO9JEsqFhLGynuAZ9TrmgZWP4bOPDW+5zKqJRvsHart4yhcyRlMXMALSgqFdtiH0dH0meGGZ9p9gyDL7B3idgnUBbxU2+6ghE+BRolmLhdZC6TnglRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751089194; c=relaxed/simple;
	bh=0wFvHCPD8YElmfKkirz57sxWhNgNIUlh69o3CPZWKuE=;
	h=To:Subject:From:Message-Id:Date; b=OG4wLPol5VaDywNSi4x+oeJrWu6j0EKgkFQ6kqXZOai7Uvmz0VdOk7eVPCzT6uX/m6nCRrPhak1F1cZsiQzjQrvtAtfwJdSDcYMDoGKlj1YryBu8qNHHmA9TyT2xKpp8k5EoyLJweEfx44b17qZ8cf03DtpjvXX71Sfcqi8Jeo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiB9y23V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiB9y23V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0AFC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751089193;
	bh=0wFvHCPD8YElmfKkirz57sxWhNgNIUlh69o3CPZWKuE=;
	h=To:Subject:From:Date:From;
	b=GiB9y23VYtITVw8BTVDqgHo6kc+qCI6NaAY6h/74iSSEbvUk+dALHAyiON9vTIVI3
	 zyb6J2wkhGssYtIsrdKXySWHi4fr2CKzaXipsMOkSOPx08Somy+DamzPVQFdjQ+5ij
	 VdGPxX9w7qBW/2nXfsC6DlmdlFxRfUiRUyFmxXUPHhji5j0AtkS21+w3tD1TZKY/Gr
	 jxkU74HDOaQFXVSSFnR9xH9upzuMmUNutG/9wFwIahc1ht3qVpGktWFZU18g3y35Su
	 MY5cj2sIACPrh5Kx+Om+4fcJKXy4si9ZQfd+pzf1lhXwbsHAcoL6uUtOojZjemKOHi
	 JurE+Dz9dGL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D69C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108919358.29466.16744269369064886631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae2080a9b14744e7866807e17cf9f7cee0d4a67a8c28132de92b1748c9bf5c3
Date: Sat, 28 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751089193
