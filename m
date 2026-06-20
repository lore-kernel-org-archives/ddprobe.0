Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BB8391840
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781956594; cv=none; b=T3pmivl1ZXWJY/JN1Qd4BqY5IGnwBQ35j9C98MQfpDRamYENTIUQpRvk91Kv0dXunWxv+PlnZ1xKZDXfx3VZ9CikzcFBcvSEDo2WvLskmILL4pBJ/qpu0jHc2nl/7JlH+1yz6HTqWQsT+FcMRdMcS2hBogackdI+XIs1FPYpZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781956594; c=relaxed/simple;
	bh=PpF0Z21LN+t9kYy0Ny13tGYMz4f1FSAlkp9TgM/O9OA=;
	h=To:Subject:From:Message-Id:Date; b=Tq7Ge0QUrwQkjzg6OUxjh/D8Gn3d/nrpiSzaT+tMy0zeJrFo+ZJjgKLgngFLO73WjbcQzYf64OrER9hruORjpI8Gkm1/MCAhfRBgOPwxImEcEgqsqYEZVXjGaZiHtDUK48cLcO2HEe4gFPhfcuR5QZO9MX1AbAkDns3wMZLKFGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtUyG77A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtUyG77A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B5DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781956593;
	bh=PpF0Z21LN+t9kYy0Ny13tGYMz4f1FSAlkp9TgM/O9OA=;
	h=To:Subject:From:Date:From;
	b=VtUyG77Ay+osOrvvfDwUhpTsr21DBu9+oUbQUf0pMA06uURafGLrkZfhedr4GLQ8E
	 2E87uEBI7PzFftWpAt/sDC5ZksVVJpGPJClu1vLzHv7zhEZpEWd3qefNLX2iZFagg0
	 0Fm83/6dq1OVxU6yIer8l/kQAN6sovs+ipCAN0WIdlAjOmUl4lQJyYJpmOklxCW+tL
	 cKkP85Y+1tCWZjWjaUUBiFTAaVIvgqJV4NwLigIssXxOu9eKtg4q6VxnemVUvuiTX8
	 v2aV60thw6n5QqwyFCDLNpnwRE3kvrgLAy9hDm0vkpxELBLtPUueu0ArYZo6kZVo2h
	 exmxGl/zcnkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC224CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195659373.14463.13759399418907690873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da04ddf19f19d0d3dfd3c9235b597e347976de88364f27affcca27f9c50bacb6
Date: Sat, 20 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781956593
