Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530001547F3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737789954; cv=none; b=CV5I6FRTNNq1/vZAfhq0607eFsosG/jx5GJ0OeeQtLNllJ5VBvWm3PrrDAT7lepZCZ845t1rvpSM13DH9obGUmoVD6Ry/c/qcWW+s8mdrdgiha+wy+pUZvUd2HFOYUy8KvU6B5gNfo+VevDeOq/lLVbZso2gHdmru6JhWYaeSGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737789954; c=relaxed/simple;
	bh=Cd9AcRHuyB7aaxZ9iKrUyZZE5PFOC+vk/b/s1apGLIM=;
	h=To:Subject:From:Message-Id:Date; b=H11x2M85znO3/gmP5kxdeaNttCGae2zxNShe4mUc3MjNWNuLwGdORZBCswbx000TVhxCUOxcsG2j2e4PLpaer8QjUsUQK5qp9v6ekglIlYy/E9Ipa2D2yv3uissB9ikmYuKSFyOIqwn5flUCB34dVXnXocBdYRuDaavRtF4PCfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0DP91hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0DP91hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737789953;
	bh=Cd9AcRHuyB7aaxZ9iKrUyZZE5PFOC+vk/b/s1apGLIM=;
	h=To:Subject:From:Date:From;
	b=j0DP91hlomkAky/oXAWK0Vg1yULV4Jz57Pfb7tQPa1LBeT+LEB7GsArURUHE8ngZi
	 ZDPVq7qDU+GEEqUtRUj5pZ9QRRH7kbgttC2SD5vVSPHxuTN4nVRpknTfeeoYZ4S5sS
	 +TB693SDtj9ACcbecRoSjlj9SO/Tf+HH6gByYOFOYNoUeYFkDE/Cmqy/xe8GWkHfUZ
	 Y/oAPh1fPzNCoc6x8/Mt+ESWMQbUuRSrFELs1L0L21cJjL6E+U6KU+ZU36k/2n65e3
	 HJL4/9IifB+Ey0NlBAz74Hlx+SGy/XB7t5PN3KvuP+kseDWIUYjlwypGurXEhHgC22
	 GVlGFdn77rv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBDC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778995360.7782.15109853290963115921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4561871885810b344142177416e7df0a8bdeaecb8dd137c01ab5a52687b98e
Date: Sat, 25 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737789953
