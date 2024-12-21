Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E10370
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734759954; cv=none; b=gOWW3bXm1vtjgIYVEN0jiSWFY00x1Cw6Mcja3pR7wXgcDC3YokjU/q9Y7V8M8Ym02Ia9IMVBZuJazDLi+bKjgbqQxUB+Fl1KsV7rPAghI69bvCqcwuNL0hG9jPquim/X8C4P0fvZVPhmmT4rmUHP3qoVqP3dkHJwk8J+6HSMo78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734759954; c=relaxed/simple;
	bh=MKBFENjV85PHuJ3YiLDfcVEwFnY4S4xEsg6VsjjgUrg=;
	h=To:Subject:From:Message-Id:Date; b=HmBv9oKdHu5nslYh8Rsa0XeqwHw2inws/FNW6rc3vD4z7rs1yAz1Uaw8L7vNZfQR0k/9LH8ynXfSRqX5uzNd1wWZ05ffzf09vqrQWYjurg/mMRJV3mlaw1ajZeikbmB2lHcFiFDLaArRFySO/Ks6WGiX1XEKZixe2KqdS2nRuDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5ytsgxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5ytsgxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FCDC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734759953;
	bh=MKBFENjV85PHuJ3YiLDfcVEwFnY4S4xEsg6VsjjgUrg=;
	h=To:Subject:From:Date:From;
	b=f5ytsgxxbJQpb1gWxxnn3DVCVxKSkOcd5xlFbTq3LJ3eXhR+T5TU3JVMgRrdTmhOv
	 GKi8HGta3qH08hrDrvWCMA7AycKv5V35kODNurwj8ft1TTVDLgSeHTabERCg3if0GA
	 CFjWXPVIIRBJlZF7AgNKPpiY17jq9D4deUWKDmhAXJoR3MHmSFEFdWpSKFeiX5MAKo
	 AndTYjGyoUAgHDQa3HS3QwFLh5u2fOX0udnFuzGuBG5EcYkWaVuFimYARk3t3r78AO
	 6WFeWAFoaFJyH3O7QOQKBlvLI5Cuif6TsYHh7fjzUFlWvBKCB0OYG5zEGT4iIKDYxo
	 CEJJ0sN3LTNRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1541E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475995362.2453.10395878143288287662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077f4bfffa166e3c20c6686124a627cb144c023c567a94674129f4f3b5d85709
Date: Sat, 21 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734759953
