Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12163C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727034954; cv=none; b=td1SXEHLZ6tG1Y7ea3UcTqvISo3IOjlVZcGzyDV0mkINUyRS0jXoSM8eELTdJh7vP1Jhmir0FY3iuibCiJcZv22J3oOKu4xlw5GQyi5pUaCirMsXArYmHLH81EmeKhJ6j9ITkXXobMR/M3HzxJOZoAojAWqUuMTXCmKMN71m7ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727034954; c=relaxed/simple;
	bh=MGUoGox1qVsSnat4qzrTjky9eSyYlWdVMkKmxDKokSQ=;
	h=To:Subject:From:Message-Id:Date; b=TYV0dpMA1ANLDwz233bAqXM0E7xdkUNs684RYkPiC+sVP4gqFZxo1BUXFXo40k/4sWVow8l2+0HClhba3Gjb3TEkV7lq4WQvzz0WP+mkPDKTf6CIz8oIdmQTNfy9XgDKSSBb5jcWAOXrTI1g2a661cUIlRdKlqgpx8Rw3kGedFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOFUcE8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOFUcE8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8920C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727034953;
	bh=MGUoGox1qVsSnat4qzrTjky9eSyYlWdVMkKmxDKokSQ=;
	h=To:Subject:From:Date:From;
	b=oOFUcE8dItrlAW2ajlOP6Azlk0sHK7uIlTsc9ROZ6qVw0RDNFcIfNw+VO4kjpuiuu
	 yTv5OXPuf3hO59BH0IRYo3pmwJJcO1K8j96dE2l99GNd4LNd1LykOlT6bAXh2O+wUd
	 PRMH/eQAI7TsFkwDNOO9GGSpPuOYHieezzruY1h4LlC31BFxbAipo7aZbSMDaVP6nN
	 TtKDa6JkTQhsgSjD02f32uQDxQSbxr2xA6PbsDYVR2GfEvmetRldRYQ8y0z4IFF7iy
	 XywuN56qHtRRV7/0Ec+ld5wwRWSiT283Mn7TQkkoSYX6ppTxKRQSr4mbssQ/tmFGHr
	 3pqjqg/HoDIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96454CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703495358.24189.12556974126988333258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590ffde2d5a0dc34ab21d52ed319a4a84f46434a4711f164445380c12cfdd492
Date: Sun, 22 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727034953
