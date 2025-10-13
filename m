Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190F92E6CCD
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760338794; cv=none; b=IRNPNcGDIe7VvHZMMYpb8lrp3YjgPFTWUjDLqQLA67/ViiC46A59rQ8/ULxnvH/sSdNEWGeeT9ukYZYBt7EHDWKhDJf9xySr9sbTfz5ZBhW0+qDFzmHuPlwXVtrxTAPK/5+gLY+4po0w09IEnhdc8kgSA56hIbrtVUEUKpAaThs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760338794; c=relaxed/simple;
	bh=T7wsenOaJT6QJPESQrThThjU9yG77fuTZX76/gVNDmo=;
	h=To:Subject:From:Message-Id:Date; b=duvf6NUNC+UydPSxmZirjIm7OZON4JQXCCxF1l43/5CSlu3sl3UbkjKF69NotPYrjjmmZ5zEPqSqaVCxmsbY7bne5lwO4LZhikXh5FjAYC15oRF9fMfNU34exXx3I+KPfPhW1dUqS4l90RX2lCzMs1+tXHKdEb14tmJRAXPAjGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8zK0PGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8zK0PGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760338793;
	bh=T7wsenOaJT6QJPESQrThThjU9yG77fuTZX76/gVNDmo=;
	h=To:Subject:From:Date:From;
	b=j8zK0PGsZH854eTqEABwbZl9LBbAP3SqExiK1gyfc6xkvWWdGVg7e0ybuD98TPsvF
	 +mEZRofChia1NFsoEp1JWuX4jrKZ0w4wuIPFd3cufrKrE01bdXBTglmD6tKqXAoF7L
	 JWOENd2zcn2rRXDaEK4d/dTKcrUFQRN1jT9Ulel4fJ+0TlpGl3c+5+0sMZmZluQjep
	 IqlUny/LMvB4mK/v8CLBtoCzVOvt1Ld2m4GSL4WxbynCjfT26mh1qPVeryvf6fWbhb
	 CtGUuw3QP76HTfAmwpCRVZdhuF9pD2VmZ8LpCvmItuwCzi4OYZCJXYHB+WLFzOXmQ7
	 Z+dO4cmkgwTgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD0CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033879357.25735.8576690496326933949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f805fd282ad1e6cc2614e90abf25d7e061d44b8c84f7b19bdb69135fe67311d3
Date: Mon, 13 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760338793
