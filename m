Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26949140E34
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750472994; cv=none; b=bxQQQr0gsOp0ETIL3euUTjHRSW4vuh9AP050Eaf/0aAS8h4glJTMjRMJ1QpledmVyO9mJMMdSWXj+gtdYm74mIhv2HZ817mqDUqBA11JTzBTEv2fl6Oqqnntepi9KQOqFJdv7XmQbT+mmZZn1NCYRAOuSGdbkak81SxNXReMGaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750472994; c=relaxed/simple;
	bh=jzbvyRnPnFfnHYT28vAKm1B8vdvkraxOsIHJqUqMehE=;
	h=To:Subject:From:Message-Id:Date; b=sWXoxivWvAGtyxdrNwAiCudhXZQMrvCxhIAdXM8fb9Ey30d829O1N0e2dj31E/S4iHeOrqdW4jeh/rdoYJquTVVQ8pxUTM3Lhi7oLgIoH+WeSXc2DUE0pf6rAUHz8W6bWv4jd2IjWxnqargvJmnekgN8jhcNadiYcHwFvaHhBWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQOSfZfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQOSfZfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750472993;
	bh=jzbvyRnPnFfnHYT28vAKm1B8vdvkraxOsIHJqUqMehE=;
	h=To:Subject:From:Date:From;
	b=nQOSfZfqz7ovwu0lu3Toetp2visOk+pDSoGR/1q0DIV4TFoexVpIKDV2vQWGCxyeq
	 9e0ikiF9Dsdd976+6k9NppfLTicw3Kv9zYdnNb3AX4O3xcfL4kFwsVumsdVZa1nxo7
	 bBk8F0eygv3eX8XtW2mNhL4QVY87OWAWxERC1wBMnMhVGuISDSKBkYfnRkWO2tY8Ow
	 8nG5YeYkGXK/zfJuRVr5/rulNs7jcauYkNIjEVSeUh9uCGd/WIJ3NWcT7585ea+qhM
	 RSjhZ/UV7Cs+/poMm/8hw0HuU5Xanztce3COaup9fX4kFfoLv0V65O2V3S1UomSFpq
	 MPw7ZlA/Wqwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B04C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047299358.27996.7421315649078027628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3654c0cc521b2b31334781b57a427e39a34ced98f5819dcb149ca8961d983a3
Date: Sat, 21 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750472993
