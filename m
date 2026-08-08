Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF2363097
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786174834; cv=none; b=HI/yYhR1C83harCD1skHk7jIvjLC6O5Vxen613PBRE60phkY3C+dS1iziy7LMsNyHb6c1WWi6QhDKJ1vVTNPyA195n4MuABYOmPM9PYRanHENUuBszf/SyaU9aYrfQWqfpohi3xhyKEJsRDa3EBSp/LpWnYuN9NX9L4julgSkqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786174834; c=relaxed/simple;
	bh=+3ffIHYUSPr1WUpfmaGeuX1BL141NTiwixlS1LvPFfk=;
	h=To:Subject:From:Message-Id:Date; b=LdeCFvbcG20vxB/lI5n+VPKX189DUZBZ7+frtxAFqlfFpEmA3pniptfxrI3/Q55BcLooirrquNIIRItB2BC1NeAQ4oXTJwI9EjeW14b1qovmSoUUpm3PseU/PBE5mpGYpnudBwhJ0q+1St2az+REwx9/1iUsBGEpzaxlG4WZjTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnafCFYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnafCFYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0414C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786174833;
	bh=+3ffIHYUSPr1WUpfmaGeuX1BL141NTiwixlS1LvPFfk=;
	h=To:Subject:From:Date:From;
	b=jnafCFYIcbANtLlSxrsZKbcgdco5AyAeRoAWi5iN5f+6C0WtoB4lLfi8z+4pjXVKD
	 YmqeH+iBcsIHfmxpEgv9vOA+i4cPn36g/mpZ8vk3kG7k3tNTebqVqSjB5B68PQkgWy
	 GuJE5U2Scg58mmKJErBWtvLcvlp4ymlXUCFwRO8iwDrsGPrUHcM6C4ct7Ouyo3ke7Z
	 ZLp8V4kxhKiAOHeS/HwemPlbij97ltHTRxtYgt3aFv/owf0IU6aQh6e/Z5QDc+66NZ
	 uZyT1DKhrNmhuhIK8S09Mrh2WMuKdmmTxOk1KgOs+j+3SFqSJeGLq3PzArVFIMcFAp
	 7mQvD0DJNCbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC415C5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617483369.21485.9844455717781400630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc82a5ee7d37e5164936ebb63dbf73602cbab9bbe5b686a0dbb8c23ae458d13
Date: Sat, 08 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786174833
