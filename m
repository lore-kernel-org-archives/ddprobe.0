Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B3238B125
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783139316; cv=none; b=qkAn7OD6r9pgbNe6tnOy9QaG+zr9/grRkFHYGdtcLB1j2MWnAFP2jbT+PJO2rXTswGAO56mCxdBf4QVFI2PSDS0yRBNp3TYtXpyVgDy8yZv7Jxpm7G/GppNbi2YA5/EF7FUmCuzXvaPM5wSvBeI5HXSNPNyBSTuYEC1Nz2W+zZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783139316; c=relaxed/simple;
	bh=qiy21+w507pvfxskkCtKwVIRCjLA7OMvau/O2NIDOPI=;
	h=To:Subject:From:Message-Id:Date; b=tDVnseg0paVDxWuLUTBMl65BTLF9KGm218DjIrO8yz8hY4J1GDa+gdhIoC+CIKVa9yq2WeZHuz+jNrTi49nCRp3LnrcI8cfzfEjjvXFziXIrRp++4bLp8bkXbuI5/HRRPDlU+W5xGMUwPhm9TyMoNzIkBA+hGJc7kyAitpblKyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/J2aih/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/J2aih/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B1C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783139313;
	bh=qiy21+w507pvfxskkCtKwVIRCjLA7OMvau/O2NIDOPI=;
	h=To:Subject:From:Date:From;
	b=V/J2aih/JvcPOEZt/kP9hXZBuLPz+DgLJAFm9PhpNxHNdiTx8465XHFcNedP6Rr63
	 Tw63C0oXz0u8XZ0nRAtGD6TCkB5lxt23+6z77zpekNPwDxZFvcR1DdpNZE4OntOMn7
	 7n+Zj0HO7OJzUKLMVMStFszHANnaKfSxD6mGhiBuScMA5RvkplsRHOR7X9KTinbVOr
	 jxY/6aZ2yCG9aFrlUY65ygP6Fo/yU1P6+QAxwrXm7gaFhmUHoo8qBeXppN7+isrm0Y
	 70E7QcBGN9F6/OawIoV+c5QAqGwcxBMVuu+0dQ5kG+2MeKYf+q/qeD9KpTWlp5VqUI
	 ufYknWzzXPWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE77FC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313931368.11480.18117182455893361870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de2d4690b5921f0bfdc8c32a6a7cebf21992ab03c2c9c663b3aa98d5623bfea
Date: Sat, 04 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783139313
