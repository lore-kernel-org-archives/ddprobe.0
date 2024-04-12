Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41106249E8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712956763; cv=none; b=qn8SEf0yq/BuOX21aOZU8dqxtpIP9bCTQVv/KVflge40R4sLMujFwVJrCXl1naF47N6HJTY3kIjS2MYAHeZZCCvO2zWcP4zk4bAHlbWN8V42NKKEqEJCSxm14jx/i5pts84jcntAlBKtorB9Uh9rrl7Oqdun6n3HWs6QKPpE3b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712956763; c=relaxed/simple;
	bh=KkiOB78vzbBWxlIg+r26iT08AF9KO8G6t2cdh0v+cao=;
	h=To:Subject:From:Message-Id:Date; b=OrbG9Onp7HfTJdJp4Ag5D/ZTInGexhrecfFp4HTRSZsc5vm4u3kbqGGocylr+gotq80n6SHahVlidiKcU7mhka3xrp+4x3XmnuY4Utqw+MbzRIL4Qzth0km+pAJd93diZe1OGRXsmneBrfFFsu2aX4FbEHG7yxrVcrm+kwICKpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ0sl1zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ0sl1zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D54C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712956762;
	bh=KkiOB78vzbBWxlIg+r26iT08AF9KO8G6t2cdh0v+cao=;
	h=To:Subject:From:Date:From;
	b=IJ0sl1zBO4g+iG8RJS8n66r0ih1Vfiyg3bsU2WlGWosOW0R9Jf1uqm8Tg8c0v4nPu
	 KImoD4dWyS5BaKVMPGpgWvnwk7aL44DblMsGytpPMpDiPAKIFN9rNVqiUIGl0NRX1Q
	 9ZsCjMT+hNrkB0JzFRjeu0INfngMYKqJAcGH7wrzAGeFD2z3BoYVz81YQ9kNUjCJaR
	 x6b6lubp/Gb6WNYml1QEFMvMZidm5wwJcifpA5/ON744whRNLE7zdq/4uw0tKuxRB1
	 bEr2cP/7mZcHF4D1iE+rY21ErXMXtI/1+yB1ZnVcIFRky32JsHJzdLHQIkwiDu6780
	 DOG7LnyxhoDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14DDC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295676278.4974.16145768048846328562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebc04ec2312c598f743cc16b9a935a12d539637e20aa2929c01a81d0aca6838
Date: Fri, 12 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712956762
