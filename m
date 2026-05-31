Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428F2D3739
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780243474; cv=none; b=OR4qV1c2M0yHksJBa9Vn94FbHF0Megcg+WobRTJTTwCYKoEhod7tj5KrfWGVic99esnX3afl2TnSxUUhP8KSBjGW8YrpNdO7N48Q+t3/m13TILIWkSxnUI2evTUjrms+AtW6/zrHiQ9Zijn/jbV89yOPvqvhdhZBMTwU1hhQK0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780243474; c=relaxed/simple;
	bh=/9+wM/RGak1pRENcsErVb1iaUnwL5WTRvYfX5eVKXk4=;
	h=To:Subject:From:Message-Id:Date; b=pZzzJdoBSw+VBlXtBzlzHzJIQr95ElqjSplguTg4N5aW8yE0kCyxD8lXAtqH7SoPRr2MdTmB1nl8zk4CPJo5SLAoDIX5yC2khcDYcw48whAKjLfwRjz9e6Dx717JbxcPuQ5WSxKfyqbheierSPUjIk5V9WSDCru/SrI/Snv6Nuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIt76tsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIt76tsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D85C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780243473;
	bh=/9+wM/RGak1pRENcsErVb1iaUnwL5WTRvYfX5eVKXk4=;
	h=To:Subject:From:Date:From;
	b=SIt76tsH5tdvXBg1vi6a65f2B6rTaT/87pZoggAzjEclt0pvbeK7nLYdP4lCOUb4M
	 Ce3Tk7SBLd57vLRzi2+Qd+OBuku7CAbr/CvJ2E5xxHW34h1BEbwYPTjJEeTYjSIZHR
	 aAIk3uTOgb2Yv3a5mKzCfzbBkJorTuv+33fVQBnXKC2dYFRHQPKI3h6/QBIE0+GK2E
	 APRnpcxgyszahh49pwhhGEWoibGezMVOL7lRZqhxn4GDWt80Kmbtp4eprfP/aKT2Go
	 97ZWyap1noZn0kSNWIQa5RRJ5durTxt5URKQAZhIH9fb1iFtjEtXEK6kD8DIxt91XK
	 6jReYnchgpqxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A809BCD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024347368.24620.1263296759204744146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127855988ffb817633dc01f3c3a2820e2761be1457045fba825b4cb1c3143066
Date: Sun, 31 May 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780243473
