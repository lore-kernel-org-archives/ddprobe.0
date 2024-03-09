Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B32446A9
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709999897; cv=none; b=i5uKKdGukcKjs0caR3jlKeEnf4jnLgzxT5On7eyv1iTNljr6URVcqDYJIqZqW8l5qQJiAHN5bbM178IkTD34/V3wzUa19Quxi437N8m7zxMQKfTRBwHdjdVKDXH9n2vW0p13PJjrVQ2rE9SWN5StbUKy6aLwn4L2qE/9TjhRKiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709999897; c=relaxed/simple;
	bh=6xl1IhnV7mbwsWhfZ0ORADFs5ZgqKS1hLZbCMNU5p6g=;
	h=To:Subject:From:Message-Id:Date; b=ImQPy8OnRlMpSSboVf7K1zQ5CWdL6vXnajYAqd8V2cgaOj8Oin4CwZR9/sLUMfyyChXPml5PjHXiAl2DPcMdJdGtCAp+ZO0+9/4dVKZNAzgCD2LYrrrzbu4ayRTS4FVjJMkLVvM0Vfkl7WagdJgpObtttmDkIYsj1L6YAlZwVfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO/zX+vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO/zX+vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F223C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709999896;
	bh=6xl1IhnV7mbwsWhfZ0ORADFs5ZgqKS1hLZbCMNU5p6g=;
	h=To:Subject:From:Date:From;
	b=fO/zX+vM6ntQIZwNoKiQ3taCpMXa831zmIPG1+bYf2k4oRaP3siGVKXy9PV2ecuq+
	 wQTYjTv2tDyvzTqYco0XS0scIFf5cxxko5snbPCT9RctwlRnJNunyzH2Ggm+2hfKem
	 M3d2dtGCEl5PY8FEoz99QKq+hHM7IrP80ySNOirdpbHsMFMUWf4uSkF8aviICILV8q
	 ri3kXUi8GKIBYuJW+yjEkdjA/29lgZvVUVIH5F+MEqt/p9K6GQgpX2NwsRwJfXjycZ
	 NgIX/Hy1pRP9lA1mS/y9csTa4VL9ASc+me2KQBJXOutLjEMGldEJ14G2a6Wr2Ioomc
	 jbKSGin1fP4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63452C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170999989637.17759.9152028860236018970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0532e58c95d0dc2348212add40c809b217c5be7891eb9cab8e6092997619c22
Date: Sat, 09 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709999896
