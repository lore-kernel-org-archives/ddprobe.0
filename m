Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6819C433AD
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717837643; cv=none; b=Wq4BGUFWa6FEc8dEErkgGS+f62QnyG454GXPrlWkl/iN11FWCw25gHnb0E4qTMnobTTel4BhdWLU0ET8WiB/u2QZY7Uff0BF/zHlsoybg00Dv67rEFcr4twzmwgHPkK7EYXrm3VABsdLDEH+VpkTYqvfBpYuEsFgdK4kE7ezS6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717837643; c=relaxed/simple;
	bh=Ye0b/mfngocINsKhi1Gz/UOxVr9btJXT7XaLRmF3m3E=;
	h=To:Subject:From:Message-Id:Date; b=lSTgisTnHLKiIcr7lejqCQMCNsklcYMEmXSlC3i0kEMo2hg11E0CMd2AaDx3Q8ShLm34QZpQvK9bn/I1asbXyjl9oIN9TzfNbEWnTrzxbfp6yGNcSZ9xUUeMf5HhfOt1unKFvDDEoktQYeXZngRVh7BqSAqHwokNhjDMM8/e15Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufC4KBFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufC4KBFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2EEC3277B
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717837643;
	bh=Ye0b/mfngocINsKhi1Gz/UOxVr9btJXT7XaLRmF3m3E=;
	h=To:Subject:From:Date:From;
	b=ufC4KBFWCsBPMrw/CN4mGabLej8KY/wlRfXzQbAiQdHUFMiolRa70SiCgE6wSCWjC
	 ctU4MgBzVZ/TM9+0cVzC3vYZt1jMkMtPirQOkUqEBPNEuw8uGdu6ZKJUgGXIqWLpxv
	 ngx089e+Csg/Bz8UvmTfky2FKIXRis8ffXkFTRPkGybneVEGuJI9UBCiA4Y9ipEEmi
	 ckdtdn12HiBjE6zz5N6uUKbSSS4n5OUIphPyqrOceYgr3KT/qTzrV0vMET8IOwnlmy
	 ty7CcumF5FOSXLZzTPlTd2W1ACfgp0gBX43s3xDywPnnH0HLht344/GPJDP5behxgm
	 t5llmoOeU/abw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24A9C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783764281.3859.8194643958579081721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7720158a7146afff2efa05559e55a7bc3150df19d32b884d045f32ffc1573d9c
Date: Sat, 08 Jun 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717837642
