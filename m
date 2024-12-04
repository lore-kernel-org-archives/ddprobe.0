Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1099B184520
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733294754; cv=none; b=fJENlmSY0QTMxLAYWa8i67G0O3Ou2avkQEXfxxN7h7GQfe9ZgKGjlP5TpDfGUti2vn3dTzaLTQ9JGBeT02Bp2e+WXx9w+MRsfBFPJtKBntqdBLUhR6z10LyGyUusCy/vKabos5+jIsMl+t4Ks5ZDUYyHIH3lkxig0Uv+HjONMI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733294754; c=relaxed/simple;
	bh=0FcM25/7CJ1nyOVS0LypavLp1ZZ6XXelqZJ1D94yCE8=;
	h=To:Subject:From:Message-Id:Date; b=tFN9DIT9aSeEqDinQTJf3UYZFQ/DGWSiwSSavF+Zgywnqm7sQz+yUlGbbwZvLRD0sPI5aPzZULgYkV55EOr36YvMy97V3O7gS86nR1l0M1eig4nNcQhVUG02zHmNsVUsB+z5LoqGe25k+DwbTZV1Z5TLX2fjZwf56vGbr11G89E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh6gKs5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh6gKs5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6211C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733294753;
	bh=0FcM25/7CJ1nyOVS0LypavLp1ZZ6XXelqZJ1D94yCE8=;
	h=To:Subject:From:Date:From;
	b=Lh6gKs5Me+Se7sbrcAZFetXU+H9lMmpLRjL/pQR/TBvM3A/VvU1Mvn3JW/PLFfClC
	 iqVbS1Gd/zD2R++DeJjmI++pR8H0v3rJn5rvdzAC7ark7p4bQ9y7ZmWW1P4CR4aXd+
	 1/YI4VOCR3sYM5E0ighON/A991EVyg6wfnuJgGKin/WjqJIVuD20qdset2wZw/qWrk
	 PH5Szj0TWq9zD8YkDbeYEuJIzS44zwbBHl4xF44U/5nuyCBwicRXI54sHEz47RdjBv
	 R4CWhKCeu3AmHRs63g5dEPCb9xgxQgJcbC2aAbtdh3ORAOhDEAZY3xXbQ8JvV3KQHN
	 fOQkRp7VyRX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329475358.16025.9020218736668674168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28d0f9b95f13ea09895cfef3a61426f4a71ed1512ec432e8cef702cdadc95ab
Date: Wed, 04 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733294753
