Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFCD2C9D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772410494; cv=none; b=FKGhshL4xqXLiCxZrjAqarmpZCcWJkenOYqq7s5Gul3HZQY+z0BFYO2cyecgoc1dMgHj4llaKT9/8tKPwS6m6xw4ZSJ7cdgV2a76xYfmuxNL2Ayzcbp2aFP0dqrlAuSmducvUVmv75yeTao4QEFM4YW6WXYXSn99zp/g2eMjkyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772410494; c=relaxed/simple;
	bh=hkw4Zko+vNHys6ti824VMFtdN+KwMqPTYekZXBmoMRA=;
	h=To:Subject:From:Message-Id:Date; b=CcbcpKFq7qSfsuel8eo6gIfMDKk9HvVRb2ChZHnnMgh/LkKnS8rWYiU5hp08su8DE6qXrNqDtJT8yOdGP5wAzStTh/5ViGBpZ9J13t6e70S9Re+NnOHx5tFn7Utf0QLR9I0ZSF0JNNzUT1QsDW/lkl9gR7P1ONFB8YUu0/FA1Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeZfS1WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeZfS1WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9BEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772410493;
	bh=hkw4Zko+vNHys6ti824VMFtdN+KwMqPTYekZXBmoMRA=;
	h=To:Subject:From:Date:From;
	b=QeZfS1WDKzChAOX25HSxaAvhQN0l+S9V447qQNf1qvqr0ExCeNepqJ4eR9Iqls6E1
	 jj4Utqfy7AKTDC0cC5V74GOCzQIT5qJYLefAUiEDpiYTnEfTrZq+kgF072G4gb+EWG
	 VHNqXYVFCPGtJDzrZ2dxxTK0zpCrsmj5qM7AhGLAQmLTtLI3hJeAP0OexPpAZfty4W
	 jmnGbmdzta+yxpgJNxyhD/fKNUShU/glPTC5FJ3TxWscBWD5EfLIOhrFSo1mpmkWV/
	 Ff/A66lZdiKiF+6jkGOr1RnTG9TRgB5/SJwrJrloWs9GSRor4w1ofycob00KhCxy1K
	 SqJwCG3Xcz1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A194FD0072
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241049358.31772.2493214042414057841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f00ba4a294978bc055275d2aabfcd825dbd3bf03fe26a7ffba8ebdb750ddb71
Date: Mon, 02 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772410493
