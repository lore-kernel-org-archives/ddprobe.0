Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A6B175A73
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773540894; cv=none; b=ikPTdClNvnrVOFMIsfCU+UtssqYXpsGuwud5A/t9w/trFH7LHr58NiqPJau3QCvAXxI2uVMhnAXLkeVBea74NOLpwUWT5b1GBO4lNvogqoruUjAo6jaI/vF4EnJBYve0V/wZVlwAh0J/qsF8/S0wa4PFrvkvs1C/ayTIhpalC04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773540894; c=relaxed/simple;
	bh=r+0RNuj4tHJq6+CT8ktK5IrvlimTKYQj/gZeXq3ix7s=;
	h=To:Subject:From:Message-Id:Date; b=k6gzXZA75k3zRysRY9QmJsCSVv57gh/Qhx/UXKBXhgcCMpZPjVEad64YgxtRE2m3w284UwQ+YlD5H4M2tDDOFiQ5HLJW7R1q5xh2Z0t1DWupEXZIIS9qheccLVBp/cZ7AaKXlA3MjA9QIvCqHXdmQko7spFL6yxduITfdjZ8U20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMfgAscA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMfgAscA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84DEC2BC86
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773540893;
	bh=r+0RNuj4tHJq6+CT8ktK5IrvlimTKYQj/gZeXq3ix7s=;
	h=To:Subject:From:Date:From;
	b=IMfgAscAtKCDbejCADSu61JabtD0EVGr/+KCoLlS+mw5TI1InI+pglVR/hkTgaVfa
	 mSfym5LyDLlMjp0NURnvqDjwa7fmPy0cEY9m5HR2733k05e+6ovclJsdaBqvukiPLs
	 i2MjvNTZBJRxU6v9qIHZyLb6cdPCw0nhu+8Xx/b6b6uMpAfqS1Fa5WETpXDNkvFpBs
	 gieuJJWPHUlGAZkn1ggPqW42ml5deb8qCnJwgtZZlt0Z5Zq828B6A81YGSUuFar41h
	 0mgT8EFli4HfA4RS/ciGUlyxjcJS6hULTapsJ4kgmaYsG3/Xh9/f+DJbPArxv8T1ah
	 MlquhGQxbCpUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DD210854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354089358.10335.15201290786087677944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147bd7cce71b595d730b93a677b9818c7c04cf5becd80b874f79c4b64b0e45bd
Date: Sun, 15 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773540893
