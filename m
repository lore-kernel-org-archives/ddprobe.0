Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897119EED3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754713794; cv=none; b=tFmOimGU3LkcAnXQfyCW9TofcMv4gkCi0+ZjeMudv9x/K8U9r5S7aN3ePaZ9zMyUFMHnzPFgFMLDA+bzy3atSiEF2/96yy94W7673VYVw7SELgChze9SsaEyuxndMcc9AGBi9xtOT845/Pgk6jN+pmkaPJS7OByCywPOo/uy7+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754713794; c=relaxed/simple;
	bh=SPdrMhHlXahgis3bmDXVudKqyxydS2repgWojzhkSww=;
	h=To:Subject:From:Message-Id:Date; b=cWKL1L6hd5SbVMi6fRquR4shcLVtXzWSvutkPUMCqkIiM8b4JemHERFNdmMALXcdYAO2edq0TWWR0gpSAPVzVLmzq52eZ9KLBs7YXZRMfCznv/QOAMsxrrDQ3Af2+FHbwevTyt4UUTQQi5zfU6Ye/kvztRn6RW2SBThGreV9hnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wmo8VzN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wmo8VzN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE084C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754713793;
	bh=SPdrMhHlXahgis3bmDXVudKqyxydS2repgWojzhkSww=;
	h=To:Subject:From:Date:From;
	b=Wmo8VzN9UdP179+X+jYJ3135NAwW2kRaSc4ew7P/4NSBkmhvA0wGnPn0/5SeaIT6h
	 K7MOtuyKQi4roJpSAV+0hPvkcBapz0/fAEL6ifkGuiLoIPKqkbuR/t0ymWVGQ4yQ57
	 7gwsca8669yG19AMUVikaWQYN6fo0h4/a+WyfoUIzRvpadYWvpOus0OgG1Wd83luIm
	 Ag+YqJTJKgVLt18bGozQvaG4pOJ91jj5W9sZd9EHPIIrkYZcVzKNxfn2QhW6OqBtyB
	 obFnxh4wk8nVbv59luIVIsV/KfgW21WHBDOowExs57/GqQUqPfNzlAsrUpsIv2Gi5O
	 GJJ9l2fiOrkmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A666C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471379359.15099.1242293530130107508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0c0cdbdee3212c95b1da9d36d93815cae0a04177713a38d1300b5051786ec3
Date: Sat, 09 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754713793
