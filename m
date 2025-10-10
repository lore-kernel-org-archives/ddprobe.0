Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439181494CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760096994; cv=none; b=VQVPOc5fY38lvFAMT1CalqC569W8vECNWsK320kfu6Nglj+tcpfIFhxX6SIxSeiuYEuJ8aBvKoDJBbKuyS0tOJJBQ5EcD2sCpEpMGkrlEf3Em+Jv2lFmLrs7RZp1FlEfomIQ/JCCmzylfVtGoiVYzFoRvn4nAti9l2jDNsRHYs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760096994; c=relaxed/simple;
	bh=Yk+txPqhxn5zSmgtqz8bPSNRMRaV+q+ph/0UIu+UVPM=;
	h=To:Subject:From:Message-Id:Date; b=myfWrD8FsAcJGyRLid4ZhVJUJPFXQZ9Dr3GRYTWLd3nQgam3JavNcksmP3vZvW+BRrpaDip6kVwEbe4MUglqPq2tSEJda7XB9NLUUJ4VD1p3VEE+x96JYiRGbrsX+pwM0Hev70K/Qn7UkmcNJU24UzNHTm9QrJ7cjnpqXVB5d/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8jt2+aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8jt2+aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30F1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760096993;
	bh=Yk+txPqhxn5zSmgtqz8bPSNRMRaV+q+ph/0UIu+UVPM=;
	h=To:Subject:From:Date:From;
	b=C8jt2+aMcIMF/eXzbqJ+3hy6qCntXbnqBWyOR0zA1+RA94rfKFlHNc2S+lBxe4hxC
	 N3Roq9kWrZ9oLeeMJeeQHz1RC5wHQ48obl9AFrl1Bo5J7sSsTNGF/wDjDUe+96YOtu
	 5HOsFr8M46eG3XeJdAgKUwn22QOxw7WU3aXGTBwHc3EyfmGuCxFzkfnVjD3h/AIvBl
	 SrBzqqZHlgK733Ipw79qV+Lg8aAUTTfJcij0y8V3H1PVAg0V0Q2eVHQ8FRxasQQD2L
	 3DV+UoJdsqbUvdNvOpP8F1KnieH3E9bw2fUi/NFJnRKghW9/7zv9qHJfmOXjnebrrq
	 VRHMQGgGXsEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D511CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009699363.26711.8019940520510532321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7d7bf3ed694107112c0cb1802bb21d16b335b367c4fb0806deeb03b7d53c38
Date: Fri, 10 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760096993
