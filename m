Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7E5191F75
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739620134; cv=none; b=ebQ6vlT+V9ujghEsqbglc/ak3k2be0OWwkYs2AL3Hn1eAIlQ6SKk/wHnxPFNT0O8Z7oDmIl6MeeWVzJ1loJtu/UvAITG9sa1dJB2kwXP2zZMxu5otUdrgF6IYURaOEe5vFl2OavbxCXDuhUedN1Hz3/BfzZD1vlNr/k3Rzrr/uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739620134; c=relaxed/simple;
	bh=DcWcxd2ApqZkXombT7lzuw33COP5bXgQGm1PiuiX3CA=;
	h=To:Subject:From:Message-Id:Date; b=FCqgbKsfHb85vUEeTrtyLKns6u768dcffQ5Zi743qrBl9G2p3V6h8OAS++a7JtF6zcHxhDM5aIj37JSn14Dq3YC6zgmo7YoA5r/d+4Vi4D3wOzOwQ7NOwFVsAoQJSX9pVyzLS3gsIheKM9JxuyJUkgMjC5eGmeQnq70C8d3KqFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urh1eQre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urh1eQre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F89C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739620133;
	bh=DcWcxd2ApqZkXombT7lzuw33COP5bXgQGm1PiuiX3CA=;
	h=To:Subject:From:Date:From;
	b=urh1eQrezmdobQF3fqXg0knURrB5awz0SmqvbRHMvDqm7O/k/2X+skuj7xwS5GFKf
	 dNbyhdIHET7ZoPEB9zYlg4qgOohdiFSxK9AhulxsKLdz6rmDuBHU9J7adEjkf/wE0R
	 uBMYku2+UG8s8h69n6v9gwot14Me/QGrRMEJKgG9h44nDzeyVan4P6eLvWbXKervoz
	 CNEDwPb0NnRYNwCuae/jhyxmh+IL9MuLd5zZPZlKIhrxRlyH7hs7WSejtq1vHfW0xk
	 7ymNedEM80OMitpXY56A0Ksec+I4t921L4MiwFtAijxyzpuUVN1Xo1lVPRmwaeTGI3
	 ceknwvAPt7+dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962013358.1347.11119645498955134465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8215bd997f90f791c1fd3f1c937ad3077db150a2260e3542521bd6050ed21281
Date: Sat, 15 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739620133
