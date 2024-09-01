Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6FDA94B
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725173754; cv=none; b=U5Snbk78Vo7liHNjDYdft1M6ptrfiIMd86IHvmkQSNtJD5UOfIxikUu5eirwjWxvAbvzJCAlwAEPxnkfLNYbr1Rlm8yNAS0BMOPdcxDHoeirpv3K0UX8t2+Wl/PnQCRVXo/L4kV017NVCnwqXpGagt0EN0NhhEFxuYAhOYI6/cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725173754; c=relaxed/simple;
	bh=0kl2EjjVBW5R71KIbvhHi4MUVXhMQRP/ZgjovtkRpV4=;
	h=To:Subject:From:Message-Id:Date; b=E480bc7xPAUMG/xblbZ2K7BbXzvccg2fQr/E8cl+t3imgZdwm8IU2YdUETZi+86obbFQzRkamWKVRNNiE2JaA2QPkZq5qo1vfEk7v90GpH1nbxraeX82UQAlnwr/rt8yJOeMtFGD3xDCQkTPwaXWZgdS/IwfHjZNNdrJFZTlW+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4z/BeRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4z/BeRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F06C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725173753;
	bh=0kl2EjjVBW5R71KIbvhHi4MUVXhMQRP/ZgjovtkRpV4=;
	h=To:Subject:From:Date:From;
	b=O4z/BeRx/w8Scc4NqKrjCS+W3xPAj/5tJJio87QfpAQChqcUxU2gyovvHs2FV8fev
	 rx5jgSFiVmyzWIgDbhEytSXna2dPTLxrb/kt7c/gp6BfhapzdtQeap833R6UMwxeTA
	 1NRmvgQKEgEHBylQ1m8FqK81eHTTwVZhKEvsKIxweQMeie9alWSnA53rJVTjeY7w5W
	 QnS4RnSc4Ng7NyEJj87ElboBNE+nRLfZbavMHUa/c5XVD1FNfabcXGBhBYf+GUdzta
	 upkyBtAIHuexOKuv2eE8Wfdc3yiYHa8sddT01q0vTPym9piHgzhQBFr4HbB18cTnDR
	 //+vTne46Azwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED86C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517375357.12548.5265159676532504604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06ffa77612ee946dd1fda84d0dba2c00c445975a301d892bf275dde46694579
Date: Sun, 01 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725173753
