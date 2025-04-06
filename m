Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DACE1B87E2
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743938994; cv=none; b=aJS4Vv96ppqifnC2O1fmvOZKxO0Ja3PMWWorT9RkVWL3c1zbBpcY5uA8tnTB3UZOI72fpYvpzDlb3Fs2RIRdfzrbJ1goRtF1ZuNsDCXYOau6otR1k9rIqQO5ertDsbrubALMXG9GmjiexjDhPRNSGognGesphzl4jewiRgBPq+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743938994; c=relaxed/simple;
	bh=wSoQ8PS24TQuVYoCF9ClXrCud/b+hixpRaJKG/yZI/s=;
	h=To:Subject:From:Message-Id:Date; b=Vm8XwLXW76o6OTkJDG1SYA0c1G/vVx1PaWXMMjdPuhfAiyZ8//CjU47l0JfZoAmH8j/xz/cNQaNItb6A1T1CyMuoM8nz8GynIdBH6aqV2MQHh9xSWk055p04wokxmwW2mgmlCvrYR2ysNnUYLuQOg5qQUbTMLTtgUhOaqynxZ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eetl7dKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eetl7dKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE019C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743938993;
	bh=wSoQ8PS24TQuVYoCF9ClXrCud/b+hixpRaJKG/yZI/s=;
	h=To:Subject:From:Date:From;
	b=Eetl7dKEEsM3Z+0KgHRElv51JT3teT49+KYy7ZvST9K1D6ltLtlk/cbaNxEkX0Rsc
	 ABB9kN2uc0wqi82xXAhizs3Z3ruWfAvgQYIKw7pmymRSDbcHC9su81l8gmgdhXw+Bp
	 NqbEfbnwUXsCCj0mGwmtu8xLd4P5z+gkPjfDgmcWyduyY50F4JUnRvOMyL3wSe++i4
	 PoU7xDJVGVZYHedpjPVeTvfU5IZrHhZB8epE2PNiEWtcdN5bzP2Hk4S9yF9Gbx55qM
	 /iDWELv/j1aFTMlREO0g4eZY4wEUbSDXMrcbD8qf4fH9r87HpFAQ4jMNyJqUPqboqj
	 Q3aQHaQoixPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D76C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393899363.12904.9369396338828838874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9556bf3e415139061365f1b876c6cc4f369c797f0370e636690953ac321635fa
Date: Sun, 06 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743938993
