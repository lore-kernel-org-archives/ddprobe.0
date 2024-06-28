Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF7113E041
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719557663; cv=none; b=EZxZEAl/j+ZgG9vzPwYpRJe5dv0cLOnIxfqw6LrkQoTivzLZmQqj/QP/n6n1Rav2STQNikULiL2qGRFt8g3oRD/wBC2s8DpGJn1RQJFKuWbMtUGnAPumOAbFpCBxe3dvEHyIDHrEEaNXkYcoFK3LR+ZFd4JqPNTl2ZU0uPoaQ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719557663; c=relaxed/simple;
	bh=kJzwYtqgNAEdxz2rjLJJu+ML2SaNlsWaVZ2pDQjFwNo=;
	h=To:Subject:From:Message-Id:Date; b=msCFr3rIABA9RFEoiFCTjcu/eMyKQ1k90JVopKfVW5DaS3Kjif2WcX7yCeswhxiIeKT+gxMFkjQrZ7X0TMo6/uI6v+QBjdnCTpKeZjuOzbKZfnFxGzivE4sQ204GSGLDxZHWS0w+Oopp1SxDH0+wYF9dKiLbJK5zNtR6v33p6UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy4aUDyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy4aUDyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD7C32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719557662;
	bh=kJzwYtqgNAEdxz2rjLJJu+ML2SaNlsWaVZ2pDQjFwNo=;
	h=To:Subject:From:Date:From;
	b=Zy4aUDyq0wGvsO9l8a/QmZ7Mnm0w584hOmDmNbbBRQHIfb/Ax/ruwqBYWexN/rCoH
	 DKPa5XijP8/UcgaeawjSFmtX3z/tV8MUaM6q/CE8AfuwmTaTVqZFlhYe29KVj0IDXi
	 SsVWRpb3NmfJ6rWI831IW8/9E6+l15V7WO5vj0jiYcV0gnl8GCHqSSDPLj4dpRJ7g6
	 gxpeESG9D1rkbuxH8pn+FkT4r/oyjhsAaHya0Hnue8ZD1hOWOXZ0Tskl2YSQbB3dBw
	 zBdcjfkcOpHuDKnjqPamINbrtRcVBIfJN1flaE+MafZDVFwfdeGqnUUj1o1Ju18BFi
	 e1nBjcMVAzXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0330C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955766277.25229.10048707124127894496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82d13007c1c1592cc2766b6818f3aa66f92f81cda471036bcd54aa974ec639a
Date: Fri, 28 Jun 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719557662
