Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186AF20469B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436354; cv=none; b=MCSXjhv/zWEe4dtWHCCO7zNGBQfMz7PG8Wpkz6uaVwHUdnKKlEps18SxuEjRMMtNmf/ljEUJB/jPCCBwZzhhM0+0sQpr3wmjipjiarAnzK7qStX5eRclRlEbUr/GevrfWSRt4vplBfEkufTZ7fsE3vRFyzgZPPhsX64i1QUOZMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436354; c=relaxed/simple;
	bh=pW/hmxnc6IHzIjf2UjOKZ9yd2DT6Rn7VAK0PaLucF/8=;
	h=To:Subject:From:Message-Id:Date; b=bdzbYZ87btEqjOJGR2F/7S5fY89JNDs+CCcMHlkSSrJOfzZVof6fuBzIJOXtxTF8EemswdfFCoeLLU9b91ED1BXHbBc6zQi7UrjhnIx/m6eeQtcpfidfGf7V962sjCcPkP+TfUCaqPCgqkHIyPYmxqibxB2m/drzwVKmHliIh58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlAJepzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlAJepzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB9C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736436353;
	bh=pW/hmxnc6IHzIjf2UjOKZ9yd2DT6Rn7VAK0PaLucF/8=;
	h=To:Subject:From:Date:From;
	b=YlAJepzCaey7XrhOmBCShxkF9OgqJ8C815c5XcC0b8S3gc3vzFA6tueqV8sFrcicf
	 6M2Qy5RmA+OWRIPCDB7psyR9WYWk5lutEOrO+rXVsHzU3DgiI5TXsMsla8UPl/qeLr
	 PGuaTF5huCUjWSK+bR2nKm0DLZTrzbI0mt8UU4PYh+vw6U2WnwtwkuCnLM/j0Dn2qz
	 j2s7hW61A0QV/ARfO4ZwAHHuVYM/UhG6TiF+Wqr+Fc8YNPjqfCjzxeQ3ZIUXvBGNte
	 +BsHO5zmF5Y8cdG9/EG8ij/kZ/jwYKHPfai+vY86uB2P909wp3rcngXV//2HWgG+gS
	 gVwzwMZiSIDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643635358.8252.4508946807959850429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1c910618af58340adab4edd0c2adb42cb6c34aff75ada3799c2ebcdf757efb
Date: Thu, 09 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736436353
