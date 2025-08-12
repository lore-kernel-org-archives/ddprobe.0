Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9572D8788
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755036594; cv=none; b=AvMLyBU1RPCOvRrhLE/NbxYFUtC4bphobfS7v2Qy84L20kxbNHaIe0SWfaXXxWG/jmGRIv+TpKpI6dgBcV+x+SfCx6XyFh45J7p1EnBsGlRIdbic+dnGYeZIPz/MxOS8C03LNUYrfj8MYJhnU4HzXqlqbA4IBaNGJXQsDKKjXhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755036594; c=relaxed/simple;
	bh=vUYKPcq4nD6tCgXUmHW+WeACSjsfdw97IkwjsiRnLms=;
	h=To:Subject:From:Message-Id:Date; b=mBqyY/wC4CbXp3V7AW1soiz7E6fNzSJR1iXZRLsroBKlgqtCAh0bGGTrfvCpIn3b8Iv+dhSeP1ZCst2m+bgQMKskzZaIQPTisXDSGPGkqWB1iz4iGCk8HcZL7ipAEVNoENN9Ml7xSHdPtdCscguxKF/jRNmfOlUkdLeurj+EjBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZS9BrU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZS9BrU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755036593;
	bh=vUYKPcq4nD6tCgXUmHW+WeACSjsfdw97IkwjsiRnLms=;
	h=To:Subject:From:Date:From;
	b=XZS9BrU+cL14dr4nCVLCjMTmAjdhebXEET9MTi9IZEt0jX6sqNFymR/SufWUEizaV
	 tR4pL0ZfVLm23d5nNliy5Ih/cyRu284BOgJOnZvzCx4F0Sp2tSaAL4o6CwF05T4Ozb
	 e3C9AafSA0zmy1EoUY8SyjPNZjHX+UPyzffcK0MSz9QU0m82iaz8nQ4S1Nez99edwI
	 nXhdavDiHRvF4I4aWvUk/Xorzm7TlRm+Jy2wFQU6woj0amHKpFxSCxqVJG9LD+wNU6
	 egMVOmezn2DPk2jIU3+0YtZjeayC6XReuPIruAsgMAFValrCR7oG2tawQK+G+qWSiQ
	 Qy+mDQSC1tT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BECA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503659357.8853.9864676122535886869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51f2ebeee885460ddfa7bb5183a6a30d44b3c2d19a3ea3afa5274e68f5c0564
Date: Tue, 12 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755036593
