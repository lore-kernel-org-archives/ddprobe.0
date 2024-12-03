Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337E62500C4
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733246154; cv=none; b=QhmHi9NKYJY5ibl7ozJ1YQqZbxy/lqeK8ZRHRqNC/33NSeAHuNp3hb8fEw6BKtV2oBJjRqD3edov500+1YRyMxniItbSY1+TCMpKAwmcKrqeYcek08E20kq4MviQZuajBAm2xv23vFK6Dr2LS3+Z77TM4UzZqO+OWDS+FjIOWkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733246154; c=relaxed/simple;
	bh=INTqqo1buete28cc26LOlPWXVYLd8l4BDVXv/8vA66k=;
	h=To:Subject:From:Message-Id:Date; b=fhES2lF/z6zvVMxbOjOScpH1YZWZLdFQzh1nKlqvcAav3W4BuGV0i40eAjG9rm+QwBYUmtWs6AZvTn9Gv6qW/MuzNOYD7gizZ2hpy/6u0i9Kci54G6wQbLk8Uhe0TQqPRNp2V+zdqYFZNNtXBYKZmsFS49w6QsKrbVHfU3K2TqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu3SNNAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu3SNNAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE5C4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733246153;
	bh=INTqqo1buete28cc26LOlPWXVYLd8l4BDVXv/8vA66k=;
	h=To:Subject:From:Date:From;
	b=uu3SNNAyh9Oi9jfiM6trwkBXTAOv5ZKSg4riAVpQI4UOFXNNSfoYxWey7I2YmWGrv
	 QEoNm5zbO66pcChxDVqXXMJoJoaCwQu7GqkTAidmN7tLVW2Z49V2uBInygjjk4sqUj
	 /n1EsadZm5JQB8uhh0JbfYKzWwJ3LY46fp+ThMn5iS18MSI8Uocftam4z0D2m7lafj
	 Q8wUA9vnZ5SO/IoPKPKG2lh25LMRdxFU0VG4V/tVHN4FyNHUyN0Np6MP1VjYYXfabG
	 +tr+FjCZoyU02ZNqmOh/PJcCM1OrPb3klws00nOxKZqB7RJeolLOUI+YBIceSvrW7O
	 3nwNDhTbIFa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5FE74AC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324615360.1558.13389501284826479548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79984c510ef899cb79aedd3d6895daf8b58e9d0bf39b49ba621cfb2ee139a621
Date: Tue, 03 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733246153
