Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8218511E6C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789651834; cv=none; b=CnHAJPVHjfFXCUkIWADAQlLE8V6smCPTFicE39mIgCLSGKsiRjfOlHpcuTtCtjRG/GI2PyeakpyQ86RBWF+cLQCRwLfpJy7wPRuUA71tb/yI9sBc7IhwQxDhtJOczqcFrL2hPIx5AiWykLqBELdIBgJTXjNZrzwzn4r2iVc1txI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789651834; c=relaxed/simple;
	bh=5kNjTVKWEn6Za2TyR8K9vXh/QofkLBRIXi14Y/U4tWg=;
	h=To:Subject:From:Message-Id:Date; b=nFzRWFpO1HkIZRaE9G0rZrDd9veBc75kxiqvuV/6/yDRdLRSiBEjoF81728brSDvHCNLiTsPdlyb50tn1YjosyVGnNwQNicLC/vRK79X1PpJghczaU1q4potaCUpFiObHjb7huxezzo+xy/gFHu/dsk3gg3mpLJEZBIUTx+DJFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS4OAeaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS4OAeaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB03C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789651833;
	bh=5kNjTVKWEn6Za2TyR8K9vXh/QofkLBRIXi14Y/U4tWg=;
	h=To:Subject:From:Date:From;
	b=LS4OAeaGtyXs9iCsi/7PnFj/xD8ZLI5lp6RTmLXuAx2/NDSHdBP+wRdWvEczX5Yd1
	 3NVjmcNgzIzRkeuuVswGxT56Yat6DINEEWpOjNVKZ9zw5VpCpCW2KuhuJLwfeStgzR
	 stUtLkB5QRLHgHmnDDql4Y7Z8gNow8zVoS1DAStsT7ElLLvVgcAQsaMinQcQ8pU4KN
	 WFQZC0/fh6BldiGjzM04crj/OmOWWDZhahR2wE2yOBiR7B/kt05Vy6auD1CP5lYNcg
	 qXcssJleIAZ2sKG1rsWdhbL10nS3QYkXH0/TZYAl3pqR/hDAKzeT79hhXqoT64GUwg
	 up2jbI7RYkzFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B8BC982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965183372.25640.970382854863376136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb5b9b95440e88ab4eb54262f8181e97f4e986403cb02322b479c6685c61ca4
Date: Thu, 17 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789651833
