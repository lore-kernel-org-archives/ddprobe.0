Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2CFBA2E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712722097; cv=none; b=lyG8gHpCV1FqeIR5Vxv+wHmwijUXG2iFwSeNvyJYAlfyhWhr6utzKjPsVnIC/hR3P3os0gKnU9aRbxl0pkqGcPNjO/YICo/Mx8GJglgpU3dOFk1rWBjg3+6H61M1kwyq2EMOlxkqYSMFj3t0YhjaDIOusoZfwMRFFK0V2XDOIuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712722097; c=relaxed/simple;
	bh=CI4hTqXOk8W3L8SGgLWgDky0VrPi94I7tmXUtQLha9A=;
	h=To:Subject:From:Message-Id:Date; b=j/MVezARoYs3L4yUsLdTuXyJgGZaQTMbjVSwwJm4eVTvVLVeHuN7smiqlPgjtgxeMiN/UjG/SRmahB14gx9+UrzdHrm8as1zg3l+2+hrY+0r0H4SFZqBBUTrAa2grgIaF/nX5eJ/SQH0N0Xo11FSvt/xfVZ7kEbtHuwBcDFRdPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdlAq54M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdlAq54M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EB7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712722096;
	bh=CI4hTqXOk8W3L8SGgLWgDky0VrPi94I7tmXUtQLha9A=;
	h=To:Subject:From:Date:From;
	b=IdlAq54M6NPEI+OHQ9SbFnfkZQq2yxEz/QIBsbK7ssz2GPlP3rG+4FkavP5VS8Yk2
	 Ieke1BmxWBWWr8JalkkUwzrDfqAmXyLr4PaDGcCAhi31795Y0U0lrNX7rYAOkrYxYx
	 gf/k0a9D44Gp3Z2sUbHBUbuRfhKvZW1EpKWhuDqu7ln7CPmWWuL3DsmqTNUYBzNidI
	 3DfjhnMwokPsFeDlHAdcoZW6G4PR7lJSVklcV/dFPxTZbBwh/pCHsjsykKVza40J2a
	 o0cGIPJEOt3HFiwqtzdWpH/8C25CFHlcyeF7Rx2+VqjphOsDrSpaY05MjmhucVH4AM
	 Hc3iCDrxvGxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 720FBCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272209643.7145.10823355724573677841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a4bcbf778af6f881afc774b92131a5d02cab24133edcef64040e0f52216f87
Date: Wed, 10 Apr 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712722096
