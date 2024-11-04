Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2761B2AF12
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730758554; cv=none; b=KrMjzQoPlrRtqW7FkMFrwoylE/X1G1IlT5+ooE569o41l7l4Sr9hWNkZvgaAqS76CQR8UXe9m2YmyMBbhKVN17CZdfTJFANlFGFpm3nDfyTcgTal7qaRXNbnG58cgumuy+7nnAMH0hkLzg2YpFRW8zCwBTZNXsHDAONsMEQKAZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730758554; c=relaxed/simple;
	bh=wKBl1rOBO7oiO6B9yawz+ZSBWYJFKLEHvFcSDyRFQAA=;
	h=To:Subject:From:Message-Id:Date; b=dLDchIrDIcvf2QJPu81ucKECVNeUO4zX4oJwBxHItSe/yXROYBdPCu99hVII7GTew60X4TgA94BDMeFvibTd+eiRX1wsrt0xZimvewni5uCYCzrSx17VXXA+l2ZfgWn8MEXBioRAY/9d0DfwVgMne8BjFeUvI0wWtwfaQwKmsCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCqe1rYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCqe1rYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644AC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730758553;
	bh=wKBl1rOBO7oiO6B9yawz+ZSBWYJFKLEHvFcSDyRFQAA=;
	h=To:Subject:From:Date:From;
	b=KCqe1rYmzwh6Qik8sWv1rNGdXuIZMJQ1IdeyAvElr5KOmri6xHRGw7YWY5N4i3r2O
	 wv0wCHMcqc9zdEjDFd4GAw5tQFH4jKrKOAAIzREy279syDM77kfLetkwF356EEMAsu
	 RPBEdIOj189Wax0zXb4ZTLV0dPUdrqWKOFKRRp4WHICi1O54WYaU3/PbRsQQSVOGXo
	 oFAjvVNYRo8rka7YX09/7Y/KQsjN9VhsfJcrOno14ysBzELlMMQTODW2uZE7bz/doD
	 U8RJifoutSys+HQr7CEXC/uDDU2IPDR/htH0pJ5jOvlfCheqzGIkruuSXQxzMaiuCA
	 qLudpBDvKmZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7BD1CA04
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075855359.22727.9612452988224120218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a75db8db4aae2fa1e9a4bc7431be2c8299f4d9a670145e281301fa1f1cff0a
Date: Mon, 04 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730758553
