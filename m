Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536317BB21
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750439994; cv=none; b=kIuLw8yhq3fghPy7+7QpILV3tU9YE1VNGYVCHbwpFaP/bb1X19MxTW2k9uzUa7lpV/CzIc0RTKRWilYGLkQH/JRuKeOLPrdgpozddaiJppUu8l38TQV8I7+d1/GUbfUrdBm8Gx9uwcp2z+7NL8YsJxx6PCKSDXfQzJYjSIn17EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750439994; c=relaxed/simple;
	bh=G9ykFhL26uoge1YpGIwNYsJq0EH+mb6TTzUN390S2tM=;
	h=To:Subject:From:Message-Id:Date; b=EnA5SwbWFZJTBSlg0Svi3QZuZcXncMRP3n1DFHYixlH1G1D8yAUU3tectI9Go20u4n8KCuCM1/UvCqhpcs3j4Su4iVuStP2p12uSNT6rAR5fVXyQWPFYWK9vb2JsgZcKlXYMVxDp3NvvdXMOaGRV3b7N/qSTS4xpXsNQ2ck8fXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXjd4sah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXjd4sah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750439993;
	bh=G9ykFhL26uoge1YpGIwNYsJq0EH+mb6TTzUN390S2tM=;
	h=To:Subject:From:Date:From;
	b=PXjd4sah4pvwiS51S7u9QGMu+ptM0novoGNfsztklqgaimRj87MPdAjmn1GtksbfW
	 QKRnPh2JuhSUODwL+GeTAHJ48bGjvGf5c+KTZrcIVBYcpvfy7CBvFmYy9ISKr5o3fk
	 dgtpkQ33Yq5ciBjS1cXAPFVu/HC4M7YQ5JxpmdpQB9vRJCKuLUvSquQxgo5fEw0Yy4
	 xZ4thGKhy/8I8BH6+hO5BQYElFdko+IYTGGovz9s1Z1qkzPp+t4uKN6XMXV01lkGbn
	 vIRlCmEaRI8wwrUZMH5nc+lSppK5zQZMLzah6rwJgGin17jgrstKWNmv16IBUwP49a
	 gWBqRecmB5ahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC62C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043999357.19504.3681652324534010879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcaa02df8f50354ff1bf8669a16edc940672bcd3d1be3593a6ac9fee225bbaa
Date: Fri, 20 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750439993
