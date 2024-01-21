Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148308824
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705808297; cv=none; b=onr3dEsaGzXS+k/Tyog0DW7ThoIBF0xSVnBwCmBUMRZVTjpeuDcILhbLlQ5FNMGtgJx64T6GBpABl2esJnhW7i+3KRQtbou4ID2IzI95RMiCPuPtkxkTjjGCNghameBdt1WA8NHoR7OOLYqOuQgZqD7IE31tQXYVYi1bOMui7L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705808297; c=relaxed/simple;
	bh=AmEIF5mbjppzNJ+Ob6eMdfo5dxJMBomxAakf6ukTX/8=;
	h=To:Subject:From:Message-Id:Date; b=hlJ0Ou5L9rMYJXMK2uinkCkfPlFVXbSQ/NWBdL687XAetprva2pEv4I8Fq0cVH/5cTd2E54VMjKqg4dYtOtznTAbQsDcF15CChWJJfha3xUO5g3OrEFBDKyYP7CnmU5wDmMnTW6r9IKUN/qEfD5uUgdRcGwzCYQLyB4Bga55jPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atY23/FB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atY23/FB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D9EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705808296;
	bh=AmEIF5mbjppzNJ+Ob6eMdfo5dxJMBomxAakf6ukTX/8=;
	h=To:Subject:From:Date:From;
	b=atY23/FBEmieiUSCESg14QkEzmnMQ+Ob/ZueLg8F0JCJ9EL0X1CRYqAp4kASgoUxS
	 1B2TLwq95Z4xU3G9GK2ghYuFKKkQsjbOF8vai9D+luS4No09yRFvkxhNLq9on6xB60
	 DgCfwcRwopuEWcOWmatHRVo5RlMS2dMlErosobZPETL4CvgKwUYPtEuz1H1t2U8X6a
	 LrKvbXl7zmI8QY6rGSJ3Bffebi2f+TWKd3R0ELGLSKSethl51wP2pYYKP+sXZ+MCU4
	 mVNJ5mECm5ZRagm0AsNyiRvz+HOIGYfagcjNFAAfF5N+tJVbm3S7VLMsY/S3dzEmY/
	 1y2QwG6nPZadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9D9C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170580829636.25937.7839255790988526570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc5941c8a7954604798f6fd2edd928023a07018745bd5d942751257a9cdfc74
Date: Sun, 21 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705808296
