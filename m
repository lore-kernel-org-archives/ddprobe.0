Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AC03A6F0A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781169994; cv=none; b=piIzpxYOUDrlQUIQWgLdwSHInyrZxlj709d+8T1mj3I6RMS8gKYT448G5A09zhsV8KL21+D9bxFqbWLsk4tga4nFlYn/bdnKXfbk6RIqkYC8Y7gcx1CbZvEGuf5xDoDHh1o9RGsqiwlx2fxmW5dH3bVidZKjLLr+RIiDHgK7LeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781169994; c=relaxed/simple;
	bh=ZArQEOrat1H0edIt3QqTLS46x/MFd9EceLf9AH+YD70=;
	h=To:Subject:From:Message-Id:Date; b=MbhyYjiepjWBUwAJl9MFRxW6+JpRBOdQGZ1UC3m6Wyt4HIs8cD9D5pEScbJ0umz9YfDozFFZn7C9GmfcIWdp+7C1CABcvQ4FkVIW1+HxYP/dTqv8vvCLsGO5NV0B8fBELUpekTE32MA/9wFP1eFHZht2yUje1EWPF7ZWxnJMbVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8KZhQxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8KZhQxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B0EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781169993;
	bh=ZArQEOrat1H0edIt3QqTLS46x/MFd9EceLf9AH+YD70=;
	h=To:Subject:From:Date:From;
	b=K8KZhQxdHpt1G187V9gP5Bj6XRVmwVTRBDcOXFG1Axg/NAyc/43G7xxM+R7hv8OQR
	 HJrZxaTfsarmVfCthQRJ/PtZtih+4YhGo2xmGlwGZ3Li217epKVTKC+dhRu+b3e0QE
	 lAAVVgjFmix0LnJIGuwv2DCPXGwUcxAuzlKlTYk8hisGMRMwhq7k/4+aqFAVTXEoak
	 PGrJ3qqSMFXQZwL5wXmiP71RR11GK0bzW3Hk09LeSN35rXnynsX1qLY5TX1SjY0PvR
	 TR/jk31B0KQ8Wwdhk/HHlXjbzbc91HCwmkzpf5KKxH5j+tpiSxGMpFrbkSvD9w9sn8
	 6xWXfR/L/fQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE56CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116999369.10041.679944549573740803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39ce782ba9fe677ce6abc9f6d1c1378e82a46c8efcef60aa4ce63be0a726a77
Date: Thu, 11 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781169993
