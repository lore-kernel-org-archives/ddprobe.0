Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021B9261B92
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761342594; cv=none; b=aA0sC1tcrFbX4jlt207PMmANxXWmowgMUNFtM9Xv2wiWzWwf/cBmWuJr6XwhNYA0O5uXbapnK4IsQb8wlCzHIcdg9BVo+wnHyQVt7QoUyQXNtZG4sY3A7tI9NlO0nv7jcFI9P8NdsSu5g9msyL6uXsVwNk9OcPZ9JK4wB164Aqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761342594; c=relaxed/simple;
	bh=z+cKXo2AuidQYb9orFPeKJNkoQQFPPdHLh5CiR4+uSI=;
	h=To:Subject:From:Message-Id:Date; b=DlVjOVqEnYGwbsEK/wtO3GyAO/v7GENKQJ082JGC7gUVtIuZGofFophC4l1K3PJxVFmcozBWj+fGvIfwX3p1Fvb02qnuviFobiL1Galw42/fGAG7FiyYaiSU0pXb5CNCxF96M7oeRQO7v0QgICLxYVgmTog7tiLRE5TocM/l45s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnEPSWhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnEPSWhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761342593;
	bh=z+cKXo2AuidQYb9orFPeKJNkoQQFPPdHLh5CiR4+uSI=;
	h=To:Subject:From:Date:From;
	b=AnEPSWhnIjfbfIOfUf7y9DonsCZQiIYW6BKEl/kXxeiInrf/bUZBUny8s6sedyRhB
	 lXeSOYcViXEvrJMGZJunuGWo7wk+hzpdrJIRHBshVb3EPTYXBG6ywNStK9kWqv56mR
	 ld0Y3donMh2vlpVB5sgw6RC2fK+22H6OuuGj4X1aihGMUzyO8ejZAvAczcWLQVxoNt
	 lxE3KFg+YyOo+Rv/Di7vYlOrxZGop8YO8roq2tR3+HB1+7UmmlR0U8NmHCRLWVoE5V
	 /nw8vKhUa3fMM/XbUnp34utb5GJWhMJALbDVeSQrdLbYEftoTHJ6iOojlVPcyarSwA
	 9UNS/eOwa6UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9138DCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134259358.10906.18001172165417063060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb3aab891e573516e0717f54cd802f4c520ba1f020450ad66db4da4d8d1e8c6
Date: Fri, 24 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761342593
