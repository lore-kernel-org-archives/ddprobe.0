Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521131624C5
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783711714; cv=none; b=Y7ARKt1IpM/hnA2gdGyHGEIq7iyfVFn7nC59AKgqK0ERzGmgnxTvY9Z1U/ky0SGwXfq6m3i2SX8vtgKBrVucHlmIo4ezlaQQc+rfcZVIHBosG7pe8QePMDPTNkXColaLoKTQcdKBrhHThlTUuT8OXfWHNoUY2pPx/4IGF3dyw6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783711714; c=relaxed/simple;
	bh=br3SSoK+HGFjUL1uQRsgTqU0IbazKc4r2haQrGwqHZg=;
	h=To:Subject:From:Message-Id:Date; b=Ai3WVeA8OkxOnphG9ofuFefYkiDQKqipYO2Wpy1lJ81KtKQHc5OZ+fYjex7zjzzYFbE/hQAFLF6eEcMEIpRYp6Iw7X8jbUQopEv3hkXssCiyUqvlRDyNheNcdnVoSB1OZ0H5B0tm58cL4CQTSx1KtiDy05yiV9ixyoz0w2m4QpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrrkG0b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrrkG0b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783711713;
	bh=br3SSoK+HGFjUL1uQRsgTqU0IbazKc4r2haQrGwqHZg=;
	h=To:Subject:From:Date:From;
	b=FrrkG0b3zj6aWAALCPJUv2Q+y/T9ekzanpNfuV0KtxjhRZlufbb4R79GelvpDHjrD
	 6tCrzne4tZqIax7VRMLLP46lcOsaEwozcKXlZLPyw8DwJb6q0Zkzq39w2V9gz2MKL4
	 jrzIYjm3mqXIHrrzWPnm+Spk+zXsEjXozW7IBEypYrtFKgynEQmXZOkFCGjJzazG19
	 GnwbcDC0UVITDZx7/Xmtwo08vq9N40h4zdHfvStQ5J/E/39T/aFiAordm5enFYZWEu
	 5CP2UL06lMXCo3+mzPVODPRwQGnpJJFpbv6injR+mmEnQhAT55q6lkBTYzSAnIOHko
	 9MfqlkoUzrz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371171368.1092.1571594197646622320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74b863790b200f1ac3f5e937e8459c758569d7e262830954a8f1d4e479fc895
Date: Fri, 10 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783711713
