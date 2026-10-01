Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87F4A482A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790859034; cv=none; b=WNdix+pYkgcbFdtyTCc+kmZg/Tbgw6NLDW2mZoZqehh2D6rsbDfZRO9xDg1cXbFiMJpASGxtL4vOW3bKUKtDPbwiLi4YHblK0ZW9mI4ERdX++bzc2CSCPfBAilu2TyHEsB87rYjyccUXWGbkd21xPMXSxYlfSG0DS3jlhW8pqA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790859034; c=relaxed/simple;
	bh=hIlzAHJTU+FXBCCR1N7Xofo+N2NB4Ic3LJNy1dnSrlc=;
	h=To:Subject:From:Message-Id:Date; b=rGrSfPlQrcXbw7liDh3D9Zn5cAeq++U0YGRIEBJd/ohb2VbFsNoKi3ohfj1YB6KsRtpVINIiMMstWh5wTFHXmCcNBvxQs++IvP7E+YXluQLiQCA4D4HSqQSkdGU+4sDAXWEyX2Fsh08h8EsZ2LOVMHCWyuggerDHip8gZpxKSVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlEAo4Yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlEAo4Yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AC1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790859033;
	bh=hIlzAHJTU+FXBCCR1N7Xofo+N2NB4Ic3LJNy1dnSrlc=;
	h=To:Subject:From:Date:From;
	b=BlEAo4Ynk4T53cMQkVdUDY+0Qa5FHKXsWee4L7oIZ9rOtSbCXO3lZLVkua152JNCs
	 cA8W78+HAdvOWM9vrPqkKKVW9m0BOItZcRUZSF2qc9NL3Sf5q+7chAk7vhddkaPakK
	 ZjEuB+qyNWTQBGm9ixUb/WLn/kYFHpq4F6nJvrdAsgLM53ZdBMXGeejFftHEmFkSLE
	 9xNoNTXxBdNxDJuIchEj4P5wVm3aLb/qwrPCt9vGjOJUUSUxitnkPvY8+DYtOOIAQk
	 2MBxvNIrzvy8EsvKZlCYrqnx/dw7XpgfTJ/TwMeKVDy9PnPVNhw7GgWvbH4fFbNR2P
	 lsVio8tSM2OUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59BCA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085903369.22577.2333546260029133992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b19dc6a3d6634fc1ae79b2f26910e8c3cf70806bbb7accf968bfd7744f7c7c
Date: Thu, 01 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790859033
