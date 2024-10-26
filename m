Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A81C1C32
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729950954; cv=none; b=BYMCSK7WzNvgAbu1D7ENqYkOE+ftYuH3hROQl+wav+5UlteDktfTbqI2NILf80md8Vy0ISP0Twd96KvJ/ji8qauD1wheKaB81ewKaNCFCCkhhOefksreNjT6Zp0TYVRY35wYAKmnPzreHboZ1uIcyCOYca/8sU3N8hCqmYoH2dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729950954; c=relaxed/simple;
	bh=Kgnqq8s5kmieqoktp8n0lEjqNDRiaGVPcrnvuz/zKpU=;
	h=To:Subject:From:Message-Id:Date; b=Px8zjUOqDdSOb4ZpBJfNl0xxGW6SwSfxrIPPPkCNqw7Rw5Nd+x6tuJrSWUJOejrv6VwqyaA75GyTKuSCmgt7mUcicqNhQohMP/HwL6C8MN1uThdt7c+GF5fQl5mCAH+UMrpAanvBITZl2mpH0IvIB6WbSRGRTAH+vSq4fxJphrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDDffZeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDDffZeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729950953;
	bh=Kgnqq8s5kmieqoktp8n0lEjqNDRiaGVPcrnvuz/zKpU=;
	h=To:Subject:From:Date:From;
	b=vDDffZeLVQOQx7a95LBsqXYzFlhBEnTYK/8E0jLdjFrg8q4Dw8R+69cQGnkh3YNXK
	 0sZTqQFbY+21BcgSreEX1uzvaOEP2CeNDHJPJfO6//HPQiflDNdBsiuZpZE7ze3o4t
	 UpKp9ZY4L/+t9Yr7DSOg7kJACo9CVU9NJfdEUR6tHJo3daDYKdwSsH3ty0wxIbOqdq
	 6AjnlORUrrDpd2GxYdBUAHdfldyOecxBdESS7bKnsD/Pg/1TS118ZoHTu52hYiAJcT
	 PloNTFgsRCJzMBSKn64Nf83cO5qAc6ulqvzG/3W0pl5cZrH4vjmrfmMXAq1VtZrR9a
	 evwClyBGwgf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9770CD10BF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995095361.6167.2286990661157456716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8411377904ca1644a986a31999275849be0eeecfdc25826e60a84e8c17aa035
Date: Sat, 26 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729950953
