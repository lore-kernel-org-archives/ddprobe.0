Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722453A16AC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775163934; cv=none; b=ldBVKwxybQmvQSdGcYphz8CQW68H74eR31K5SrkjoY+4ZbY9osxrwstC6GumMkrlgkzZdQCLnzGpLh7AW0guyTWCMi1tsMpG8OXVuwLvfScd5kQiduogYjDTWZ9Ep/9HL3VE1ThBrUXOezmB0Jm5o5cPZ/NnRBsUV6rRHBJypX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775163934; c=relaxed/simple;
	bh=ZLaA2Gs0y7mL78JGUQbEagsoSI/WKjOB0y7uC2Th2TI=;
	h=To:Subject:From:Message-Id:Date; b=TfUNGLH1MSCOjmpqs7XGXeJ+0qGQ9wZb918cyreU+e6PCSGjYTQods/HExa0smiMlI08BdAXLEt8JgJPCEv6cyDClymTtvUq6aLvpVavwm1XOcGavHNQe6FEUAN7JzwaWK9cHRbWjJcdwAOxtSc5NJoSVe2Caz+4ZngYrv5wO/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzbMFxiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzbMFxiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9586C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775163933;
	bh=ZLaA2Gs0y7mL78JGUQbEagsoSI/WKjOB0y7uC2Th2TI=;
	h=To:Subject:From:Date:From;
	b=nzbMFxiDgovIzhF4lfj5yJGvelFbrdU7/2LL1pqH4O8VX9tlfh9oxGyYLavj75LDp
	 6L+3/Z8780fNw++7NUmMhyUpR9BxrJbtidKAg8G1nabBHlDgUEIkavP0fyB2mk8Jmd
	 /xLPXKPlRRUpsaHYUDlfzakSuwn5uDkuDRXZvsgEyzrQOD/0ATMBa6M3e6qjtcMSeh
	 hJRLvFcyRfuibTSpkwORmHbezkZfIHnqrVHPA9SDfG1HmfR0Zx8LtF1QcDWWrUB1V1
	 kUhyKMfSJ/8gmfevVnBMslbUxN8SJ54a51Ml+nBFNN+hRzhF7FxqteJYSGyiyS/86x
	 rOtLsaeG7/oFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A5BD6AB16
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516393369.12263.1626468024138915553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3f87eccdd8b0160aab97708414f2a7155686939d082f63761fee7d344ba0bc
Date: Thu, 02 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775163933
