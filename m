Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309DE1BF58
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750063794; cv=none; b=Uu8eRI3F+AtO87q/5rttsrSAdgOXwzh7X1mcZGtX2I+oC+XAXCgc+41r717N4wXxJdtAU621pgW+vkXF4bTbNGy8V654pcetZr/Mt7CUCAFabBUtPKD2qIvJc2fClt1YdwdXULtkZLwQQmzsoC8m0XuQn5m0ZN/FmpdBdlHOOBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750063794; c=relaxed/simple;
	bh=MDQYpg4oDhzdYS0D6RFln2wGmmTK/wiFnjH8KK1dgws=;
	h=To:Subject:From:Message-Id:Date; b=u04+2+Y/1A90R2kF0hVDnRZZlrGwdxVCpTJqvoPZYRB1SV2yhaU5SyCV+VzfIk6pGgsWwhU1PxhtiJ3eyeyPzismZ6jo23XiHizZF4PcUkFuFgJgTfQR22GGOkt1aut+iIEWgyhTVTDBJ/LYgiJadndTuNMX4vmmXjBEtV2doV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X81q1qf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X81q1qf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5429C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750063793;
	bh=MDQYpg4oDhzdYS0D6RFln2wGmmTK/wiFnjH8KK1dgws=;
	h=To:Subject:From:Date:From;
	b=X81q1qf5hzx2kdso1F+IKBCYKCgPjoENCeeEZjutnbtfaz/vdJy3HoAAtvgZ6vwhS
	 U5zolfKTANorSTbhZYNRlTTK1tpOEo3ALgyU9nUfhxMNzjnkDmeryVqd/cQQ+JjC+0
	 ss4dWI7E+8txmx5kuikCcumitixzx7SSHBmCEUBpvzgqYVVLk4jbukj366M1veaBCf
	 gXti/J/xwiea5y+UR5Na5HGFdwH02DnUm1sLI6gnDO0McHsJaAwrp/HtcXqxvRJGwF
	 /LF4OX5/jB86Uxeo+lAeIXA/fT6cmAtfhMj7Ryj5LNx9Q+nDSys7R1L8N7WMk8ONIz
	 /ukAjBSggFrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B44C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006379358.12106.269047629398059514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76910054635dfee02d1a8f87a950ac0021d7a41a07c3af75914be25b3147165b
Date: Mon, 16 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750063793
