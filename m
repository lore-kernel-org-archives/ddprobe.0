Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B91A149E17
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746305395; cv=none; b=LhLMkT6yDbBpvyanOEl0sUZgABh8N3EnUMbLujqXMfbQdKMh0H/x0k+adPkCaeYiIDlBsEFXKdSBiAtCkIybHEL96Mp8d+647neV8PZtkfsWo1O5H6XwgWs5MzsfUbgo/T6XL+Y40sju/LzebgnetzMLeKfbmv4i/1qjZ7NdcZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746305395; c=relaxed/simple;
	bh=X5Ovkcbroxwuz6E2Bc0qXuym3I7kOa3VHzusnfZ5X1c=;
	h=To:Subject:From:Message-Id:Date; b=mPRfHDWn54gIwCSwrEcCaX2EkCWiAFHW69yT46rIBuAaTRjMoAIcPQ0Mx6eVkkGIuVokFnYVMomi1dlVLd/9ONFtK7b0PAwIBUWeqTKSYKZs5xHUPw2W991KK4zgO9KfCpkKA+saiepel/b5rW5HkAjUgouKi3hLnYqlhy/lDN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZrE/68m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZrE/68m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A401AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746305393;
	bh=X5Ovkcbroxwuz6E2Bc0qXuym3I7kOa3VHzusnfZ5X1c=;
	h=To:Subject:From:Date:From;
	b=AZrE/68m+71MA02mwdoLlUNHMndQkAgZ7BKBtLGIeJj8SYCj1u5aIybJAliOc2nIn
	 K8fPKmMNmm+gPyZkg4yjBS51JF+H9+nCW3THaFcAuCtgGgwJaqwbxr87gVIeiNK6Zr
	 fgQbKZcrbFt+QOGe4bofFsir5chI84JHmT/kC8g+hb4aJ2obrdeNM1ARga9dv3aKwz
	 AVaXYck2vOls3LNkqxSKff2YMBGVLFUPQ7Fi0/PvR2r0QMgImROk1MUYv0iTm6HjlZ
	 oND26R4R7v/rl+XiiaOUUuls/240+6cvC5LhfVWEDIgYToT80BTYBVkUS4D5OlPTag
	 V7dhylwuutqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F17C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630539357.30703.16818994884511827714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2f075364c56422eb4c4b3686c305a6f16a069097402e28a854198c0621ae8f
Date: Sat, 03 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746305393
