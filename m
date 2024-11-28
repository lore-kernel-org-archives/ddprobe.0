Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BCA194091
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732793754; cv=none; b=cA+4EoJe2a1RrlTEm77bjo8IXdqPGoXPdcphyDGiLSGmI7kMJYAnsWyNzl7MgJ5CkIyTHjQlJK3uq3MvmE+MykONIYMrTheXWzfg10pqRiL3csN978HndLhPakIaIhRtbwQOcX858T2LX4IfboYKBUS7aWmtf21KlUJTqidUn10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732793754; c=relaxed/simple;
	bh=xchjChaUiqNasg9uoTTRBkjaGpuZ0L/asVLzVf2DsGE=;
	h=To:Subject:From:Message-Id:Date; b=Gt10E37G1k4vlfV/EHHbymy0EIuTSJE8OrvfY8JJ1FhqWK49yO1W+owLIxKpbJk5ElZ0vdXcJIoyVZeurNnUBROGTgDunqFB49w2WvICO9gYQ5bqxxIZ15CaJfWOiRUTNiYcOJGLXSODWhStZEkS6OjOJU2E73ACuR2FQOZKNP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nve3yeQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nve3yeQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA744C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732793753;
	bh=xchjChaUiqNasg9uoTTRBkjaGpuZ0L/asVLzVf2DsGE=;
	h=To:Subject:From:Date:From;
	b=nve3yeQRjX9I2QZT1I4rSQEwinc1b3Kptl3homILAenWMHRKdj6ivnF80Isn9QLcf
	 d6PX3Wtc6BYWMjxdMGEXaYqAbyuWuOfvjmKmohfLWxnvSzymQGQifG9eRa9iFazL9T
	 PKoJwan/gzV8P8GLf9ClP7LRvXxbTsEbqHKr+GpIuyAzQOPaXUoTrRsPIXDxQ+akPW
	 A97NuScGAXd1DFXG3p30BmqvAwHAqWsrdKe5/BWCGGukyQgdt9Yy7jpfCzSma2Irej
	 WHwBoF5fSohOwfieStrIbEohIUhXSt5e+flPEbRTmheO/8QlpOlRPqgmcordYJ+Ncr
	 3/G2ojIdrt6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D19D690FD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279375366.22317.16358922742186489253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80453167bbac63edd95265c4d54331de44ad15acf39a9cb21997f9082ed7f25c
Date: Thu, 28 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732793753
