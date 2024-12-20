Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD9F27462
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734706554; cv=none; b=UStzgbxFF7v0SIwQh+gCxhCOEAUaePy73wc7LjE9tp1IqmYRlHqrpU6qZSkCMQKdcG50N1TQbZe1EUPr0hK1pq8zIO055ZsXWnfxTVovVMVx/+Hepul7GM+kN7TJr6guDmRIAsgpc6REfs0DcFkzZCNltoth+hyta2iW/kJmOC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734706554; c=relaxed/simple;
	bh=wC6CdCanRvn6eS0u7MviDqnAK7bEYPku3crnG9qPLU4=;
	h=To:Subject:From:Message-Id:Date; b=giukhmrSH+3Rs4Mwzs/sb70sjZCglKPzKnmZddyqlPviMweuwSPkJDlLDrKkUonjJAk95MO0LhmQXZhO5j7uSQR1/hqNLwAY8vDpKgRCthDHbWlifYCiJNJAm4ERreHsZlPnhyVnHYcXJ+xICAA1b6Eth5gGkhKg1uIgl3o1dn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXwkWDG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXwkWDG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F42C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734706553;
	bh=wC6CdCanRvn6eS0u7MviDqnAK7bEYPku3crnG9qPLU4=;
	h=To:Subject:From:Date:From;
	b=rXwkWDG4tgCZZ0M4zr+R0IKEhQEIMkKNnttdzc32gw1URcVeU7+590PnbsGanXwcI
	 p5YuQDyrBUG+NoIoDAs10h3J0BKULO/tlBck9C7aOoDyFEuiVIWU4Qc9X3TcpQgb1l
	 2rGHkdiJUAc4lfsMxGGjbVkcQi+mgSESSKL9zCsTI7gxf7J0S80lqozLAcppmMY3C8
	 JQF5zS+FkQdXjZBH5M4yEUKFyMJyiofQLFcy70BBu9WhWosNsjDB3AiijqoyPDIckg
	 2HY4qxiqo0bhSr54WPN9Zf57epW4ZWPBJEM6ffv/FcIF3inTfvJzWEHqGZZGLAcZMD
	 +Majg+J1YYEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE16DE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470655369.2820.17436774540852642942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e5ae12e87551377c227f7eb99515e851e6adfde327cb7e2abb311fe4b6e055
Date: Fri, 20 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734706553
