Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C85C33AD85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976034; cv=none; b=He7lZZRzi4hswrBIFINDhdhdLfW0eZcfil8gLtHj0AZzFmcDvMEwI9NhFSlkT4xS1VVS1e31IDz3srDzaRIdj4VLzd8AVW/auk2s+wznN+QoTgtoNP0UPWjux8lZXHHvrDrnPEyq4o7GwONxE6QIh4V67D+rk+YCWKXX327Y09I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976034; c=relaxed/simple;
	bh=jJYI+9r0rPigMQL5Qu7iNmglOH2CdH5FpumwMTgGmaI=;
	h=To:Subject:From:Message-Id:Date; b=Q9PPnxZhttzRwQW/yhPcjeuaDtzIyitAksqgm5V+dsJjzhTWm4H1v2x2U2IEvJbGTUdTnJTl2r57bc1uh06VzXLgZdq/rt7J9qrYSEBamcarG1LpMY/6shw3e5kibwQ3xfKF0YmutbyZ27L4Udx0yPTj7BiIudAry4XW3V8PBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/0ISN3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/0ISN3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E60C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765976033;
	bh=jJYI+9r0rPigMQL5Qu7iNmglOH2CdH5FpumwMTgGmaI=;
	h=To:Subject:From:Date:From;
	b=u/0ISN3ZC3duNkEg1q03q/bgBN01v4EUieLMteD+e0aqJaMED0qUyD+CtTYa/aM5F
	 lbCJ/wPzZRHOl/5NdDi2ieWwi30u9lEx7yivKMsBB2DJAJEWxbGvrf8ZtJGH9smBJp
	 NdhoD1BVYog65cPmvL1vvGGAHvJfTapvo29BBaKNkeHnluX/9H17utsb4tlOd6s6Vi
	 LUG8T0w8eOLxtLCGDuE3BbKbT4x9gMxm6LymdNgo440JyZnG2RVzc9LtY0srmtO4fk
	 jNTKXyjbzlEBEWbgj3+x5a/WWhrfmuqegFZIPqMAbFohuOZRneEZG6HUvnMvbmSqmf
	 YY8dgWZzUEpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91866D6407A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597603358.16826.10212402198016738750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e4ec6062d9a26261a12a7df524230798409b2fe99329379109b937061513b7
Date: Wed, 17 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765976033
