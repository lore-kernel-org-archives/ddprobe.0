Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637D34FECDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788464438; cv=none; b=F7Sw5N8SNXDsxkYPxqCD9JGgzEamm+X1TGH9YiEib+f8LAglml9uxh+M2RAIhWdINV7JIH3FXNQ0la+z447SOrZZk44C2AGziLmDVLR6zrzOpmVscLfgvR4LmxOs1v5BEWb8RpoNZHo6gYwCxQ+Mws4VOrHg+9JOx1CLSkLOxaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788464438; c=relaxed/simple;
	bh=3L4N4Uu2nmphzENoUnvS2sx5ekwCrrARtuoocgC6GnU=;
	h=To:Subject:From:Message-Id:Date; b=fx6LJiaqZyqidJuHYjxMvaWKMBffPVQAr/b9C59iu3uVKc6Dq+XgrdnQJfhhPqf3E7Zvyy8jYT4muI6/M0pO/yj3qG7LKNhtgVx9G6rIWvBF2IHYyl/xntudB9nW6alVZPtvygF63DzmsMozn16KVOnEczLp1EFl8zmIleSFMoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoKw4Qpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoKw4Qpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD1FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788464433;
	bh=3L4N4Uu2nmphzENoUnvS2sx5ekwCrrARtuoocgC6GnU=;
	h=To:Subject:From:Date:From;
	b=AoKw4QpebFbkLaPkaKsq/Iqv6/AjR5TA3BUc+bBHm07w07mREzxJALkfZo9N/wOCv
	 WmWyAB9vXnHbmitUxfEbxKWOrZxBmye5uSP6ILvSQRjaPTpWh2nOvAmRyXWmVqDhFn
	 KfvXB4hdw/67MICPRTFXsxdP7bjUROA/xRGtaZVL/8JRlpB1v2Nf+tJwrNCYpGb20h
	 BAt7sPZVo1fYA69wA3BNmfxOn3FI4NlAC7dT1GGSqF07uOQWwB/DsVs6ZSZrohzCOd
	 6xx+rWePUMlP1IBWYZvdlOUTbXKzgDF/M0qBZGay4kdTTWAh00RkwoUwaxq4oRpz0f
	 Xi35PFhYU7KJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1EC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846443369.2604.14927614876304177756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc7a1e43249027285cb3f8fd54b79c7cd7bf13cd162195d6430ca69c0e9d152
Date: Thu, 03 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788464433
