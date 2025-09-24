Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE4B2EC095
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758737394; cv=none; b=ni+HTqJzgzGDM16cT2/e/VNmNngCiAbpAMo/hSYX/Jzc7NVTMIIi2MHoGdnxyLj5mA497uiBi04sPU1xYtOv7acBGV2pV1zzdaiFm/Z26zN8M5lM+jLHWB1TOCptGyNrxmb1i1D4Ni9x5U4pbOE1yW5luTA+K/PYVZDGkpZwp3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758737394; c=relaxed/simple;
	bh=qXIKvp4l2Is7Bo1gpJ/ybf7HijLLqZr8cAE5P9lb5ME=;
	h=To:Subject:From:Message-Id:Date; b=m2oH8CqmywhrhPraecMNdUbvdhhG2Jv7OIfDAk3w+gqi7Y1mEaJqwdL+COOhKzAbmZIIEin5suc5m3DMF0nykHT+8JV9DJqFOpimX5y+LtODA3MG8nrCPD1nzQdRhCr3J8zF4kLVBrMLDDPFcgNLJ1SOag925yK94R5FnbGy7E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZGAQExf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZGAQExf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758737393;
	bh=qXIKvp4l2Is7Bo1gpJ/ybf7HijLLqZr8cAE5P9lb5ME=;
	h=To:Subject:From:Date:From;
	b=VZGAQExfNIijCj8Yl2QK5a0x/azqv0ZZLM7B4SgQh0wW6sQibdSYo/0tAYBVnJ9g+
	 Se85p2BrVnQwpJPy9cgRLLIswDM4NdUsjbu2yudSFx12Bit+/Y5R/B8pJWuZfo1xRx
	 v1etVkVQl4wzX2IWjf/e7vJJbdK0Yb+54bHctQFLh5xSt8liiTyaOVUtvNCx5+6qcv
	 7++3u6DLttP6NXRWgzm43IbuSsOvgVUhVvKcTKrsyd7Cm483Mt/aYeRlGnFc8AXgX4
	 mgMlGv0Suaw2Yod3KWXO0q56NJM5E/jGZY7NzTZ5VNi7hvw1djm5ypBSQip8gggEiY
	 GQxGdXrv1feJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B7CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873739358.11809.8718953030085939630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f505970da752086022ebd4b75cac04b7f10ece9a97bdb86916b95d2f4843e6
Date: Wed, 24 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758737393
