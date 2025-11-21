Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1556A25C6F9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763687514; cv=none; b=pYtQbVaFMuv9ZIM1YX8gWmT1ec0lByr8xPJHARWvOdjfA2B467xfx0j/Vq5bh/Diur3EHGFlJK1+GOoTuSh0TTz2BASETRHtsLJN3AD6shfNgGylZK9lC9BqIwYtEPDPW4L4Infz68zHkqyOfuWcWAMyc105PyxoBymESTrOQLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763687514; c=relaxed/simple;
	bh=G42zb3dbOUT4P7+za5NbWybJhFRhhGPwFzZ6MEJKm8Q=;
	h=To:Subject:From:Message-Id:Date; b=nn9MOsXcaIzUZVzrPND/nxLsfzcBKgnfZlSIUtKnkQM0T+QS3+ZDTeMkTFc3bA7Jdldel9TAQUOEhFxf09RRZI8i89ltT3xrk3LlARD4Nu/351MLQDs/hA/7zdKIkjvI7iKo3ytirTTxoUqmUiXs+36J/y9yk5BhCQKFkv3cfWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbwcC7VY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbwcC7VY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94EDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763687513;
	bh=G42zb3dbOUT4P7+za5NbWybJhFRhhGPwFzZ6MEJKm8Q=;
	h=To:Subject:From:Date:From;
	b=tbwcC7VYx8HCtFiY6bFC527mrP4MpWb3LJrzEyEz+tKFlsvvr0wendYGO9w38cGFU
	 Vqj7ztDkqapaUbrMfurX5+jDHBSDQTgsXIu4b0hdpnsyVKn5ytAWJ/ga6boZWyYD4G
	 nwVGYS4cvTdugHj4V7UPS9mq1BR1Ub50ZlXdFxm0emghbB9OY+cLHc/ls1JTvMm0u3
	 hxbSIS9n/tKj9rtOACKqGt6i5y2A/Z8ttEK+6Z9GKs9uDcJOcUV5pwIrInRwAxQX0R
	 qmmlwWFxX54ZOj8p2YZYH7kIgpLh7b/ChVJ06fVfzyAqqiac/r1mgsud2O9ZuCsXd8
	 m/HVKkgBg8nUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FFCFA459
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368751359.3290.323238447962592745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6117a11673959275c5a5f5ee9e3d3c7fbc68467d1104a47adf75fd37b1354b
Date: Fri, 21 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763687513
