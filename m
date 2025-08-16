Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFCC21D585
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755340194; cv=none; b=ohf8aHHZgOsaszojgkQQZLF3hkqtTL0XhaVZQOVLjTKG6AVhFV7dkJ1Iz8PSXup53bwECuOQZXb0OP/CnD2ygmcraTRSwQ2hypSxPNSVeE9+wEbmfTyvdfwtKIY0CrUsubKhXcL2C3Dy4oUtwN/pR7b1t47B/pwtux7bMM0KXPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755340194; c=relaxed/simple;
	bh=JfVONz3UZB4ZMLmzj6bUtGDmBbdj5yIGkG+FeZY03C8=;
	h=To:Subject:From:Message-Id:Date; b=ZvgBQtfTp+nlwMyZsFQbdqLI8XKXkVzkOd8i62MlxcrfeYa6Nf3c9QCF+fiq2P6gpwfmWyMV31+zCPPBZuFfxk392lWlNJ4gcUFSNaDGuCFMMP0PDqC2sbHfb9SfI/LSGKNtcjlncVEjd7vbdvMQ5JsNoLOOrlBRJo0mZKtIyJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bexlkUhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bexlkUhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755340193;
	bh=JfVONz3UZB4ZMLmzj6bUtGDmBbdj5yIGkG+FeZY03C8=;
	h=To:Subject:From:Date:From;
	b=bexlkUhRBkb9Y2fo+gCLoD9Ip74BdvGIJ2f3q13r95J23+5Ef+BJX153Un7vqqQm0
	 45QquE3Z9EnYHOgwK9GEx2amrPt47rRKfYqRMEOU/RklSfwtYIGc5TOCRtKHtkunmi
	 UtA/40zQk6/M4c0n5K6Siyn6tg6VrVFBAxJjbsv2mvu+P7IhHSTvC959YW1a1zWiMD
	 JFOChHlp8mhdWzJKwdF/HESGgRAjAqm428AdHRdybtF0qocpCN8SYrQUdmvFkRrqj5
	 396F84095ApMEpKwXRcW86PBeDTqXhsPcjvlloFZRshSkEw+m0GzhKrWE3arQztNYt
	 tdXDOL147la0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534019357.7928.16101692104467730425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921870276336658e338c910cdbeccef95544503965ddc4cbe9668961f60401a2
Date: Sat, 16 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755340193
