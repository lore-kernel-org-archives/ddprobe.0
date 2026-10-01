Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FFF4AA01C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790843434; cv=none; b=k2i8vgE3S9sKy/2cKOp4Nn3bsytRbKoGJTQU8PaOgwF/12/f1hJ2ZkkFv9x+AFKPB4nhmE3dRMZKCYZj8Ly9huoVGPk5wLuTRj5BiO7kuyWIYNOEhwn5fusgSAUr890MJqo2snoUps/UA9OenGIMIYrq8qQPbDnCSu0ynM3wopg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790843434; c=relaxed/simple;
	bh=LJNxueyEYuC/84tf7EIp0gdFP1Mido0syCpJtrHGtGI=;
	h=To:Subject:From:Message-Id:Date; b=rvbfbj23LSOMDdV5yxst5ocd/egH5ObbUOGmgUdH95+Ut067Ne13ZgoszDhUjsgenat0V0aJnZtOyRNPtaqnluga4QsCm3P3yK/kbqBY0QhaNpVqLkAfKxOabdR/vbGnZBsWhEPpDV4mx2tbGZ1Kf7Ns+kH0lzIMeYQ26ooksmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK1NuDSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK1NuDSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0137BC4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790843434;
	bh=LJNxueyEYuC/84tf7EIp0gdFP1Mido0syCpJtrHGtGI=;
	h=To:Subject:From:Date:From;
	b=OK1NuDSenn/IDZUMDDY8bFK3rWhXHR/bncnHUXUf6gdfsXlrzJ9UtmENQrnG5FQ52
	 dHEjopKWee3BtAQc7mOOGE1PckbygBu76LYbONvT7H1XaFnLbGa0i3JmCXLmUccWra
	 AlPyC6bWH+zEPZLt3MNCbnBw2i/8mzPKt0f2sLO5pW8UyrSTQgisf/tEN/rL+S+2W0
	 bvYDq98yeI+fmf+jXOSuVMrHo1xan+o8nHDq9dkTAfG5od/zsUQSstIUrQEU3Ib7Qq
	 hn6KywjI6TF8kTHXuoUIj80CG0Di/EcQJ+12cFEPzrXEXsMvgMTojBcjd1M9TK9MzP
	 GzGFMCxRUBuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24E5CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084343377.32535.10457420331353192865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519cda7da8b75f8f9abb98c4eedd627caf2c22dc64c3ae10e350f979d392f10b
Date: Thu, 01 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790843433
