Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9C923BCF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756448995; cv=none; b=IF1ohJzx3+vBtPpzWXr31pGqO1e8/p9Fi9SwhJmZJ+eEfAD/FBc7A4MC3cljtmkdm60E9XAmgN5LrWKXJzbMj6ZoWBtSOKaOspPkR2ABGeWJRhvzB+Kqz4D9F9aZvWWvJH3HMX5t1PXmCDBWqNmC5rXkDGYevtlxZ0Aayfna6XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756448995; c=relaxed/simple;
	bh=QbtbCfg68Py+9fUvtKGutO66ejjwtOM7Ae+iaLED808=;
	h=To:Subject:From:Message-Id:Date; b=m0vT86laET72QjEX6HBcufZvVzh/v/PolJdwkHwNSkSaTd3x9zNxaCapvmim5YPmMl51tV83sXncKoOxI5e2xMEV3EuPlWnd8EyZ/FMWPhXtbkyei8pAtX3MbuFNrQ1Crv122qGMdVukoWeLwQNpnON1bz03YXF1wBLIdeO5ms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS9+Rosv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS9+Rosv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756448993;
	bh=QbtbCfg68Py+9fUvtKGutO66ejjwtOM7Ae+iaLED808=;
	h=To:Subject:From:Date:From;
	b=lS9+Rosv1PIwKtKK3PccvGCT3/kCYm1qvdWCerJl0yawpx/ShoYTUrp+y/URByK0c
	 xu0daNCS8hUdiVrO+rxeW+vAJCYsj2aIUYbtfZLPzZZKZetwoV/iME934haCi/w9CU
	 8MYjVPGO9BoJX93HjWZvlb1kunxbAnsQ+b8PwFEu2AuvQBELJJNCyN/yvykg+EduAz
	 tjeQuoJOeJkJUannGHM9OOyfKwgBOcpqXnmQA6aIyamt+l15C+QLQKkgMlk4xa3XQZ
	 Cu/Uz1JaugEXHXOe3dHAMHr6E/bAjuAN009IOgTELaYX26WFzY7VhlpsF7rluHBEGX
	 r+hb5W/FIa+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E763C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644899357.16180.3862602189253978892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9704f6653fa34ce9a7f741f2ff042f7f26956a09432cbdef934dadeeca9cf3c
Date: Fri, 29 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756448993
