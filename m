Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B328EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721481954; cv=none; b=ALA3SHtCHSPIfyzxWsBz/l1FK/4iCnjUCfRmjfZwxpcCsYH+W3WZX+hFu62HfBHW8H4nABBwJYFd8CjVLh5k6112yEUzL0hSdgiKWS9RoyLb7v9ilO9OILn/2/ybXuuIiGZdyeDHX0c9qrxbmbmexSGpkytHb9M71KPdTNQVFJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721481954; c=relaxed/simple;
	bh=GM7d05N35Qlz+SiETGaBUXJZcgG473PDDinyrUZrP80=;
	h=To:Subject:From:Message-Id:Date; b=Qq2RK1Jtf5r1wgu/b2I5T2K6eRWQVrco++3+ZSbGgN5uBNF0CYJon8hGJjHmox/iqmVh0Jk+Si/V+LmG/47xXBvsj2/oxjbHhFYrS518sUVxAwpVdMYYKoeJd72ycbRSg6tfZW4cm0AhFuG7q0jAh+c8RYMNTeh/92sap8CEPqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t91UMlxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t91UMlxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49ADC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721481953;
	bh=GM7d05N35Qlz+SiETGaBUXJZcgG473PDDinyrUZrP80=;
	h=To:Subject:From:Date:From;
	b=t91UMlxnQY+M66P4MByfWPWxNQMPyq6hwA7ufB14Y2q+nCxaf7Z8TR8Ln7TdWGHNH
	 HStVKd3IgDho8ps+jhwxhoi3KRyc6+6tu2VAcPyy4Rq/6HewENacTWkK47lVAH39N7
	 DFJHrgC7Z6aqvl2XAcEzFkJPpyppcq8VkzxusRJIJsQ5MY+gYz56E2M3qKycOCVxIs
	 q7U84WA5pT+jbRicTewbjNg821UeK/Jl296iF0DH9OsV7JlphU3XH8Kr+h5UU7UefY
	 gzi75jAYZgxBtWiyK3yodfCq+w49KllUbXXAJkfN/HmAvp3+b3u6AVeWUE9XvtEPXF
	 SVbalspryH/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C3AC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148195368.6398.10998834746573333719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443efdcf8c2b0aa04639ab6585d4f03fb1f05c3d73376df9931d4dd800bee952
Date: Sat, 20 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721481953
