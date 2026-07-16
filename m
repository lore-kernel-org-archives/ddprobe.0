Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83052EAD1C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784183314; cv=none; b=VqNi+k122SpY91m9R9v9ExsJkbLdws8Z/t6+BoFxiYvkU/gZwfLzJ2t9DRlCCwCW/wqqji4Uu6wBnDr07apnN0efzke5xPR8VgFxgf8AagxoBfx+xGhmAG1hlpQldkyQToDkV3etYWQRdUULIVr51V0fMDHE4E4+KclP2eQGI/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784183314; c=relaxed/simple;
	bh=LFGMzRyK4sJbs0d1cEScqqjiwRaEwS2e9YY9iE1k3m0=;
	h=To:Subject:From:Message-Id:Date; b=ireQWj54Fh4GlUY/Jajn9gw0rQRkuczFn7IAWFKDgpvuzHNN28SJvRYCqzGlT839IQHPVVct2KCD5zEOQ/Fbd/SQD9cOz0d2MCkY8r+hd6PdZDP5piC441NuDSBKQG8CiElxoGJZzM8a4FJjLl2QGzc+xgetyRtDF4jBGk1c6Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHDz6blg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHDz6blg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB359C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784183313;
	bh=LFGMzRyK4sJbs0d1cEScqqjiwRaEwS2e9YY9iE1k3m0=;
	h=To:Subject:From:Date:From;
	b=lHDz6blgyqn6Pqr+G910ZH+WwuNt+GX+7mQvn1h3Yv06Fw5eKakheBdfcqwrUvo2M
	 54WLsFvtwHtXzqk+fZMDUrUwY0ejUo/hv2MCoGndch9rlMl6k/Hb7GwUT2XA9eUHaP
	 UlncciymlmR1nFjeas4Sp4ukZv/v7nLKoIQjYAg1It8s+CM9CRRxlccDzNIzv7l4Hy
	 46SD4Rf6yl35eBW2K7hc+MG5Cl1L9V3FnGJtcWlSokec6HEf+X8jypL8QcZHCXYBty
	 6UBw/IDb2myatmTfhATF63M82Wg1Ty6HUnZDsS8NTXqEFaFdGkzcbiYH35rMtBx50r
	 GC7r++6h1moyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E98C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418331371.9076.16020969511666802596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2704f3a14e7ab968334e7378488f735617925306dfbd92e1c723d69bed3a95cc
Date: Thu, 16 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784183313
