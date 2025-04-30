Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4A078F39
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745979595; cv=none; b=To7S9w7lsskunkq31JwfxjN444Kpwv6Z9D/pXccOgE+gjHegyvXFVR9bXQGqCYUojX75IUy9QU1PKTGtu16ua14CZfHh4xr6teA9ShicKSPGb9eVjGM9KR3Gg+js49PD2i/hRz+dvF2ikHQLsZLreL95sPQfU/csqlZf9ReGeHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745979595; c=relaxed/simple;
	bh=D5WgRPI7I6x/mvZZV/Xv67ORQlkPZBVI/I8cspgWJgc=;
	h=To:Subject:From:Message-Id:Date; b=CQ/hr0k6qutoe794eeQd2PBRr+fjJ/S/DIkc6G9MuoFvQLif36qzcO1v0z66wpMu2Pi4Q9cKqx4Gd5EKhbhBUU50qPVXghSDrc8SL6zkBZuMPeUQuxpPwH7g8Q3d6Rc+n8pa4oc8yw7Vcs7YYONLf651Yaj+bVnWm+28H36mtIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGuN0sNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGuN0sNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D7C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745979593;
	bh=D5WgRPI7I6x/mvZZV/Xv67ORQlkPZBVI/I8cspgWJgc=;
	h=To:Subject:From:Date:From;
	b=tGuN0sNaGaA8AdXzEjsIRPVYrMtAmCjDkcrugwPkIYwhpLPSGqNmx2ogSRaOcCv9K
	 Ov+s6A141D9MwVXtJvvXQEdlRu7SU0cZ+HfEzBTfFimTdlIm1xileAICrfE+r24I4G
	 8DXG3rXJxKMgG68B5O4iZ90CNtPyB0IJa9tGoOOm7R0tfZKveJ60fYtzOJtOUIbGIE
	 UXD0fg5dG46eCSSe8tNR0DQcXkQoaZAm737FbPYc6PUUN1LsLGASFfj3wFnq37Sfrm
	 iJoqYXga4OcRwahYGdwdRiZF5U4saFBr0yb2HyahdzKldEPzYLFIDUbEmeC23SLE+H
	 5SJcRelAbbH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F119C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597959357.30879.8177977167502890251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936f41f9369837a083ec4a1debb77266e4f53ff6e49de5d997989d66f96896bd
Date: Wed, 30 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745979593
