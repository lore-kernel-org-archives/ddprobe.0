Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4038C19CCF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764415974; cv=none; b=p3WNbAmpFRSBbaa+QPkthCt6levhzWeXAeht1Ja1fTvNwYwyTut095qUp6mp3Bru1+xoxbFsNCo0uzVHdeDRv6bf2Y4fk6jcVUw+qslGn9sva1d/2MrxXTR9yeh4Ps1/vVrbDuxHymwQJIHKUVoH59EAgkdv0h99Quod2hmNve4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764415974; c=relaxed/simple;
	bh=Ag3ldAANFGzXBOtEj93QNQCxAdnCuUxHtS4QzOWEbdA=;
	h=To:Subject:From:Message-Id:Date; b=BRSitdlJ7nE8Mfuo8/XeZy7lLUIT8RPxFNbo58CQNnW2fHjTI2d3yQjdwQlx+DusJ4GWMMVXDNSOVgVOKMYPAQZWCM6Eb3qM3eMBT/B18fNghaN9LJB66dTISAAhBLov535u9A3eP9z7m4a7c/bQknkbhb+jCHsexXZACelaIEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWtGRSYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWtGRSYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0CEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764415973;
	bh=Ag3ldAANFGzXBOtEj93QNQCxAdnCuUxHtS4QzOWEbdA=;
	h=To:Subject:From:Date:From;
	b=qWtGRSYqwu4zPQqOsHi7vOKhRC6zNeK6oMAmgD8sfa/pBozq4AtAsAoiY5qRoXvJy
	 23kbKwJW8U5ZhUmAj4ICFux1EY1KA4knck4+4VrD8ZG4A7y5Q9sRVA0pnKSXIw969u
	 jLMKHR9UzGYMfYL3D+Zv8hotiy6Rg4pLOmahc9IwZJBh780MRFGXwoio8c+Np6iqya
	 yOBXlMYHRVf1kO0EmEsGCzobpaHzdF3R/LCkLk7ZvMMfXkh+LcMU5Kv0dIJDZtAR6o
	 04jNjBq2fgONoE5uQVa43+649QkN+BF1XJG7JTIqpjyvKrBfCVGe2xVxzfhTWb8BFI
	 J8UPve2o3B2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97041D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441597358.18416.4175060662403795432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8332cd4c3d42a93d3d7e6b28dfa02a7385ddd38418e04a9e3df0401d28dbe4b1
Date: Sat, 29 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764415973
