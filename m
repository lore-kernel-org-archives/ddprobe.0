Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A9482EB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764795774; cv=none; b=Lv5CO5utp77hqPSeXE+Obw5KgC7LDQpduJc3Zat8Nr+8tWpITaXq/ESSKuwSDbQ0Fs10WH7k4QHgvjYwVTgqvNcJHECyVGmsHKZfognaFNHDKrms+N/rzvX9PZiXuTfnboiqEAxXF1mHVo1gMwlOkkxuaJLYaVqdP2sMtSJ5tEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764795774; c=relaxed/simple;
	bh=Pj4olPDxqZGff9/bwm1Bgq+XPYycxEZmuwB8CL7WCxg=;
	h=To:Subject:From:Message-Id:Date; b=ZEYYSeR/1amgBEGy3xKSCbASBjr1Pplrwsgo2IXMwy3oRGFmsnpU9qudzrurDVe4TL0LQkUo5SxRqVLce9vGx+aDNSoPBP17ogvIu/0LJT19Qybtj77JuQA9Nuc4AfXHz1XKTqM9AoWlGofIaeVN4ZRYtLJ0v85QA60VC8jy9is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEijQjue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEijQjue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DCC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764795773;
	bh=Pj4olPDxqZGff9/bwm1Bgq+XPYycxEZmuwB8CL7WCxg=;
	h=To:Subject:From:Date:From;
	b=gEijQjuezajvIb8XbBk7OtxzNEqD7kX9g+8kMYtkbMLKNZ6a6lOoqgzWMx3d9dypm
	 d05weRNMkQJxaFlqVunPXRoYhh+Tvulx86FJYV9fPA5dl2xy6cBVoDYO/jIGFWmv3L
	 Z2s4U9ce5r/BpWWnPLJ6DjWTea+M2uNp/0Hto+l6WXzwUW3KO9Xgl0biRnTZPoC4wQ
	 skVZVZ7JJnvI58TjVGWsnZ7mMhrA72uVTm9GBSy8112HBCTEhOK3TCKwmcyIZdSVx2
	 9K9tTOfllAs/awT86jRTg6/L6nVn/GeQIlVCu1zKeiLekrpNgTar+c+0L65meOdu9w
	 G08o4oRnEwaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C24D1BDE0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479577360.27108.13345670684736281188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d679a2933c896dacfde5e61f38b76257377995d3ccb0959e3f47cb80dfb2e48
Date: Wed, 03 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764795773
