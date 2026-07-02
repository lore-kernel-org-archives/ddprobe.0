Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A044E571
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782958714; cv=none; b=WHeCMSnzowpj3hC0Ii/+U7fT1NNi0XuvXXeOWJgN4rYsZBL2qfcTz6mNlgUigM9dCzWE6JjLF2mf/ne76f/tj7OdZmIiwfeRVfCD1RHfdqEpAmumuxLhA2wkfa6vJhgnlg1b+vtjAXgUf8/8AYKxvvv4oqj97VG47aNZJq7p4po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782958714; c=relaxed/simple;
	bh=1j4CnisGM8ebW3+3OtyCpDv/3xhwZRwq2UDPxg0eITk=;
	h=To:Subject:From:Message-Id:Date; b=AFdPweOI3nQzQTNNjzE4S0/GLr8g2nh9DHqY7dP9FpR46NrbvYt4B+YnzO4LgxIZmV+1KMGvKPCSdHdu3ywb4h/zvf2llbYxz20+daA92SNKr+3LGpPC9vzbcze6FMGGjNbH/ideiiHS/hRN5gwio13iaujyeH0wKeMd0qunczE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yq676QvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yq676QvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE50EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782958713;
	bh=1j4CnisGM8ebW3+3OtyCpDv/3xhwZRwq2UDPxg0eITk=;
	h=To:Subject:From:Date:From;
	b=Yq676QvXQ7Qcktw7e4SFvjVbduTf/g8OM6PyS//4PpcZYsrUvgtn6a65D9W76N7k0
	 XFVJ+CVrI3YJ1mOGGFN2yRMn+JM/Aifdv2Do5eSoIOq7zIP8FOAHapX5NilPJPYm0s
	 paJ7zUF0eR9yWW4az/oE3PWolULRIEf+NgauvKz1lRL10OErmdub5dj8eReIdPVM/8
	 taEFqbFX/MSbzKHIvJHOxSp13dUx7w5g8IcIyZCUDSK6PB7U4ntGrymFM3B2at4Zdf
	 lq+2nMG9ZGflVD/hy/+4mZd0JbV6uiN0IAXR9gU3YWHfescwWlTi09QlJTN0G6k2oN
	 1G2cgI7bXETBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D9C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295871368.9898.11269428979226913093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdb8b3b7a03b7cfdb3f8595e50ed60a1993606275818f7064f3d5f7f99308cf
Date: Thu, 02 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782958713
