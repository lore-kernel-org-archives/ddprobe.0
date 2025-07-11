Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A6B2F1FEA
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752255594; cv=none; b=lobjpIrvllIDdLP+OHnLSt546yFkMU/VXPc7D/vjBWFzt7FIeKYBtoXAj8Z8eEwLa/JpKtkf9I2Z1q2z2tuwLYUuj5lHyhjDyQKauyUFwoQ0f3FQ1qO6dqyN4/x+dPYyu6frPi0SbwHUw6PTrzplBSes6cM/31Dkhwf8wX0xXJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752255594; c=relaxed/simple;
	bh=j9+mqwXj8fy0TRCZNaRLEo9zBccH9L+loowXrMXHYt8=;
	h=To:Subject:From:Message-Id:Date; b=H0xX68GBOqUBSA4vyvNGQFf5wTmCtDlYeu92bxGPnd6BVm1K5SjMCpSft/+Fz9HSOGsb0+WumqXHUeIs0EQPPQWKq18dbJQsDnnebWVpilZPoN4ujfiUmRaGUTNh2cuxGY/QXqlKvnKUCT9PCxEH7B0nDypauG7hloBt5kRNzvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUtA+K3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUtA+K3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC17C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752255593;
	bh=j9+mqwXj8fy0TRCZNaRLEo9zBccH9L+loowXrMXHYt8=;
	h=To:Subject:From:Date:From;
	b=hUtA+K3oHWd+XelLtwboSKgN/gGLZ5+b+h8/gdd4ukBa9Xoysva1URcq3JPQwfzig
	 KplWxN6QYYHh5X5Nk5lEQDoPK8nsVKFfei8ARbJt/0vrVh4IVhtzD56Zr34cCuDx9v
	 AYLt1xeX9sRNf77UP+cArGeweu75F+fLsw1pUcpjZS/0Jnvz6QbOq4M7+qdLeYHF8i
	 QxuF8tZ9SsEZEsSZ6T27kejPp3hf1uU/Y+/631nOv9/gcjHmbvFCAWBjyKTqJyw13/
	 +T1nOn8gZ/2LIhonNuduG/E16W208dQusEiUmYnY96OmgwdPtE8Yt4EqVtboPcURom
	 awxtYzcfIAjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F775C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225559357.12840.2171714923108516292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a6d1b9d2d4b3c147677ce2b24ab5a86e594815f5a02a1fa4b969175cf956da
Date: Fri, 11 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752255593
