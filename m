Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CA61DFD96
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757267394; cv=none; b=Y9rU1bfYQ3ZmFfszAc09nFO/MJBzHl969Sqnk3idxg8HkhZl+obxzKb2rb5nDF/00srspCHW0cHw3kEDRyj0hdlYeeFxGnYpNE7U3k1RzDxwPdi2DkNp+XDE9DxJmSmfCB+n8t7WIxWxOgCmp0nFPr4QIFxu3yvt5aYwdbGvB7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757267394; c=relaxed/simple;
	bh=ygX3TX8+TOiZqkTRMzunTptMwoQi+mhpNkpg9QL54aU=;
	h=To:Subject:From:Message-Id:Date; b=QIY9RBj+cT8nmKHhavF89Q7vVHCL6dCjr92Qd+hF26ShFT6x/ocP8qNuz01K3uIA9J1g4IHVZ+Bs0/6HZpKmXhDZWkGmN+/n2B2a6xL4gVy6ZoarNYOES+uqGeNiXyewt/NLEAfqret2Lj8CVc294qK61Uzau94H/0XNfA7bsU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL/9lgjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL/9lgjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C4DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757267393;
	bh=ygX3TX8+TOiZqkTRMzunTptMwoQi+mhpNkpg9QL54aU=;
	h=To:Subject:From:Date:From;
	b=BL/9lgjjp3R7eC1d7yxq9QY9Vfid4yKAeBeG4NxSHXog69cl9om4c19iBVgqpGVEp
	 S/ziIuovSs7dtyoc6dl3Ru9uFN6ZVZy3xlVV+dOmLR3xzzFpaVvUvYTNA0leMIEFwd
	 stWQVPm9H2smJg2GRdEEcZnSiuhEEnLs6nLIyhM4XZQm3oHLOD8OYsXAVb69Ox+i5N
	 jmzsSBFf49/T0zUgz/fzht1Dr4RA1i3cEt5WBoV/hZnze2Jo2q/N5thlgMJY14dR1v
	 vJmyTnMivN1QpvlC7MzOIzU6Fv9LE7wDXYSsGXGpsT5+0QzxSf998f1R4q4/AK/yf1
	 WWSD3NkW4yTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93394CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726739358.5126.377338666086472622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f72efef94a76a77b7c3620177db4dfd6b55433acd250aa42b24a8332f09253
Date: Sun, 07 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757267393
