Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261E1375F80
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780317274; cv=none; b=b96MlPJTJ+WbgzM2n/zvPWwSUjVw1vYWnPHWgUkCDGWPd0f9BQ9c7ctfRXBTOs6UiQrdqxXZxzwUMSU0alMQ4x/lhhgezPey6s2J8RBDZSXQvV4Ame1eJ6XGMsVXax3OkjzLXT8BwqCTfZCZqTT4UR5RxpIrEo3uit9ybSM9uHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780317274; c=relaxed/simple;
	bh=gjTFC1QufAQWL9ImHH8qAyshqQ7bcPiy13MW5gWGLvM=;
	h=To:Subject:From:Message-Id:Date; b=R0ryeM4sSV4vfVbtmwiGOudnkv/1IoPNArOKVGlQEVRE1DDQuujSPuCVHBacZi7K3T+L7gUA8GQnIXTxm2dA1YtFIFMB460R4iJRn404UhD7/ES9ZgIwgNFL4tKHYAJxNZv0ewBheEBOrhiXn3AqvNtQnoKMS1SgC3appFM1CAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dllYbMT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dllYbMT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C976FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780317273;
	bh=gjTFC1QufAQWL9ImHH8qAyshqQ7bcPiy13MW5gWGLvM=;
	h=To:Subject:From:Date:From;
	b=dllYbMT7Yl6o6OcOhRrnBo30ZUdIpVdG24HVWoncqTrUqoufPNRMWFWfn7xkXRYUX
	 uB0h7r7atLDYT1UdhXLxd9NPav+LGDjpSoi1Zzo56r7qDdegnJRIEXUJVlfgRwq3OP
	 uNMBMoZdL3zzF0oIAOIzl/2h5K7A1LVmvatuehOHfS/7shop6cZGWNPZKbs5Wfn5Jp
	 81mo8QIqgEHhGTShzt1dwh7ixte91ccw+YdQEjLcS8CwzA2nc2RoR6dVfOXErf/MvA
	 8FKVbeqW6Nyl//7XrG4Y4hCG8VUiKksUC4pLV0GYRGaOCgqNhlLJgJpnC/5M1mp9vr
	 EjuUvwZ2OgcPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA29ECD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031727368.27905.11735826584699571839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b69dada0860e7ae5fd29e18027dc495e8474280570c600a642404b81da3e4b
Date: Mon, 01 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780317273
