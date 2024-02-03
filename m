Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36F563B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706927297; cv=none; b=MqucVfFkRghzLMe528Xp2A75rwVHVFjZtQuzf/y3KF0HstFzhHXe4LDuseF/2wiSEzEchcf2WD8PU8OeUlhDeWpP4vqop1SLFJU19uO2IvOewTQr7ornH1VqHlzwf50uX/BD3DZs6Lu1tf+rRKuGqnAS6lXenD1pwVcRA3zDFPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706927297; c=relaxed/simple;
	bh=ka+KXXSHa+eOCIPMtJvaVbgPgoPNPVzgZ18cdyCZcUA=;
	h=To:Subject:From:Message-Id:Date; b=Xgc6GjuEMd+cYmb9OapPzPMpnOXXdyVhIufGelGYQtUjOf37xDp0juRQKvCfrMdVFR/aR2U4ialZdZaXz1C8xiekzf6XpgpEZmKo+bRgEVm7jnhNNy2EjF1ZHmzrabg+9pU9HTHWIhxa9XGZA92VnhXhtPkcHMUBO3CUBU0c+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gagpg5WJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gagpg5WJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADB0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706927296;
	bh=ka+KXXSHa+eOCIPMtJvaVbgPgoPNPVzgZ18cdyCZcUA=;
	h=To:Subject:From:Date:From;
	b=Gagpg5WJnuZB8sRlV9bocQ6bS/DhEyUIXQe43VwhW5LfA/2i/uEANVFEiycRThlnF
	 gH8IKteWOplvjx9mLjGCDdC65TpduKN1+rpgje84l1uE3fbTWeqD+aE1kA/eO+hm4k
	 q1AOlwis9ShdKQKRdpXYg49uxsLUVPURdo5zB8EU2K8C1/kpbaTkuzMqbFwtwT1s3Q
	 e5mSzRw9hC9Cfiv/PBrMEsmtjU0ag344T3OkwziRBPil/0v13jy6iU/qvlFcJ2VdNL
	 FT4EvNRmhybCyCaJcR5Tp/y7SIMCAxcAUBxrm1ihO5MyjvWsle89PF/fvhoIeN9yt/
	 KSyNEbOevRprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614A3C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692729636.5508.14701484169732994229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e2cd4f25d54942c447f8ec5f8588068a0fbd973c83878add99f46815cfc649
Date: Sat, 03 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706927296
