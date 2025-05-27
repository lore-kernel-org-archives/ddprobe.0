Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F220FA85
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748386794; cv=none; b=BGGWziPWBb9ODHr+jMMUKVhpkPkQs2s0iIRI+CGuT8aMIoVbR5f+xpYYoeQ5A/l695nMHUIS2BRiEZQL1LM6LzCP+nPE/+E664iFrP1MUPLF1NFXSHIcansVLGqDF+16a3SU7USv64OUW7Emg4nND5r1YOVxydSTTI0PuZFhGO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748386794; c=relaxed/simple;
	bh=3yVyv7q5Vkb6cmk4rp59SCpwodx1e5TsJjP15woKz4Y=;
	h=To:Subject:From:Message-Id:Date; b=jj03XjrNuth51CSqMFvpG8fSYN/lt0tNbDay/gJsfidSDnBmSkYzw3reK+1qDmKCLP0mzkRj1Eic7Fl7ZeBxrZUbIckNLTM3U1hCGe96dNy8CHPOFjC9qAZ7TfSCDtkteObOqzNwTWIzgQGTYQymxnQXsBN15Ty1FYaUWF7KREk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY73rUsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY73rUsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB703C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748386793;
	bh=3yVyv7q5Vkb6cmk4rp59SCpwodx1e5TsJjP15woKz4Y=;
	h=To:Subject:From:Date:From;
	b=cY73rUsJLxBHRaN1Phv3tBlwS40mpAZ5BL6q2YvmFVZE+StwV8JTq5YMwP4Yh7ILO
	 bfCPZYtWEQV1Gq0v3sMjFzV7rv6yxCJRYQZDeJOi2n6qYIyNsMiI3MeChcVDceFbqA
	 S8nd16Uw5/N4zhVYJuN0BzC5topS1ehgQDSVKwUrhQW8z4W0670/QMazO5ADMtTB1K
	 VrSUv4j9ozs/CJyD/vUcWQPjfiX2DKFCPdKYjDc6s4Pbd+11z0jTeBM7vEWVJOoxj/
	 mLR7yf1LMtuQuIOByh6E04/fVaB25WFnyqw1c438l2jF+BBM/MO2idcz954D21Y8Z0
	 9j7nBOEljKerg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E38C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838679358.22640.5426800898024885518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8ab3c68cc6e9d02916cb236f00c2b443f91ec23e59871ed53cb61b88152123
Date: Tue, 27 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748386793
