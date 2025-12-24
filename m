Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1223832D450
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766564034; cv=none; b=jA0ndIYrpjhtxVc+IrHqTt5XZLlIYOCDo2daQYlrQF2IUoNtyV2SAO4foFqU0tmw41UBHM7P0E4hofmKqQwECo0f8BYWT1LlvCgBRdi+Dup4x3lrc2A3aDebYJEhZOclpo35CPquAxsw59Yoq/BhczdZX3adJaNYeLgwBUMpDBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766564034; c=relaxed/simple;
	bh=enxiHr/SLPd4w6xSSVpxT4nvSGegpvY9oM+1iJSCW+c=;
	h=To:Subject:From:Message-Id:Date; b=XRtW8LConLTYxeK5P27tYOTU3ParcR7RaIYLL8KF9R2DGsOtXNsZgFkih9B6uYMazzLHKJS7mhX0NwdNA1SWH57HJOcUBROX6mXWUeW3jHIoWRUEa8YlMT6RP+gbyKD+aTOgPdXC+IIqIUHMQ5XQpm4h57iLTG7bO/KFNPXIfBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5OruTtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5OruTtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766564033;
	bh=enxiHr/SLPd4w6xSSVpxT4nvSGegpvY9oM+1iJSCW+c=;
	h=To:Subject:From:Date:From;
	b=E5OruTtAsOvzsem+sZ1sIRVVB2sb8loYzLwVn55/nE8bvL6mABEK5jl/2Uba3rDpn
	 OvgmWFCgDFK5a27C5DYULMvw8bmCarv349dNm9OkzfMLWUHPuwTxjlpOJpUepvsT+l
	 mZ6Q55AH42eBRhW2QTQ2qporew/qlm2peXyV4aejZJ5aH43Ue1QjSQDOX+DgBkZT1N
	 SI8fKUyXa0+FKsZXeaYu56CbvntNiWjrXi2s6DYfxrM7B9jWqNNnU5vvCyBQKWLKaQ
	 GB/FC4yAb+2dwZz5E/FKzjgI86qgFcO3ICmkILZOEqIcD2vIT9WWtn2x1dkyIoKNl8
	 I/PHeDQYXe9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C1E7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656403358.5617.3352469492218857982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f989c306a45e0d25a870981bd79ec32a1dc790d5340b10f84a56f71df3df4061
Date: Wed, 24 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766564033
