Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABFF215F73
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740470934; cv=none; b=FWNq8CXDH5/YQ8WOOeak9DYbBTAnhJ4x+9asB0BRu0OvIg+kGuw5XXtNkqQpx11TGjW5O3xkSD21XI8nzM6ISuSWMXXIZy7jai3saYBiLOS0HaWHnBZTPzh4ZqERyChUNJoIbrjr1r5hu+QwWTaN4Q9c8yDXFes+lJGQPjiL7jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740470934; c=relaxed/simple;
	bh=JX50mPhzVsi7Hl4gNzAFPcdaM1wpHbAooX8WIo3haJI=;
	h=To:Subject:From:Message-Id:Date; b=e6rN2xJTpvE16lKNnQtMni9FX13NXz3QrQGLtHL37rj6pu93KHrfpAjX8DS/IGxBY7abpRI/bqbmuwncUhgpI/SBIJXt66NK3pfldXhm45HRhrzcwgXd1NCbalUIGSsN4tdhYoMpZ9bUJkSy8xZRYUykHrvWXgHE0sy2ZYZXH5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBNogn2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBNogn2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D90C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740470933;
	bh=JX50mPhzVsi7Hl4gNzAFPcdaM1wpHbAooX8WIo3haJI=;
	h=To:Subject:From:Date:From;
	b=nBNogn2PWzF7flrVe6keXNQhTqIyjcwAoNm3Jca9m500bZjea0VD4v9Z8+2bPtNa2
	 qwhaVbHDyVJFNOOd/G3Nen/dHu/VnPQiiFGgNIstTs9pzCALhvX1a9BIhpIYq5KX4j
	 2327q1bE+tZ9xiqTGgsEn1V0Ty18RSC/jU4JrX0T49D88qUZbz0W3sEibewlqtIctT
	 /LrHj1TA7YSEcbrI0zZnsDsnbIQa1dwiHTqlwLV/LSqB0XNE7vPCdsmrRKUfc3aISx
	 Q7atuU/ZSYFlS8RB78GLP5nVJOVviDfs/4Gdw1T1pZXVbCo0nVw0duZ7DEpVPqdc7W
	 FSy9MA3Y/kD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174047093357.3205.3292019403411087391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6091e69a78f992002eb2dfcc382244134c6a6dc26b05a3c86dabcdcf706f03
Date: Tue, 25 Feb 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740470933
