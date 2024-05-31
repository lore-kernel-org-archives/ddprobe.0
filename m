Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91ED1757FD
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717122263; cv=none; b=sgW2NTl+eEWlxJxqxq3T7kEugXdgXGmVYC5qGWUavmsgUbn48s3R87hpM4hbLiDUKEghCZuhQjH2esmUWiyPQ1c/8N8LBCsEC2V75kMjfLcGiR7Pu7PR/ueNKDUTSkcBd/9hIdxNZMWfxlPLcc3SFU5PKMPzmTAozZ8VknBHkbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717122263; c=relaxed/simple;
	bh=w0qLFE+RDKYqNbMMl7drSQmRkRXdkkih09Sf4exGaCw=;
	h=To:Subject:From:Message-Id:Date; b=MFEXo3I8jc59lWxPxeaisGRc360lxyT2NcgixplteI4d2G6Xw0xZHTvVJwzRXwQvkIKnxe81/l/8Jj7+Vg1QNxw4HFOhvoVEZTWMl0EwCgc8vxWoMS9/BxvGAGOp0BY/PqMXo7OgCkHJq5ApvO4Yyh8HiO0ULi6ha+EWosZ5CdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dun4SNaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dun4SNaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 056B0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717122263;
	bh=w0qLFE+RDKYqNbMMl7drSQmRkRXdkkih09Sf4exGaCw=;
	h=To:Subject:From:Date:From;
	b=Dun4SNaCx2DdY87aszUEve8lm44aeoFKy38B875bhOWGGGTj4OPV3gdrBPr+JQA3A
	 EjwPlhcxxQE8dxWOugcXLy5QEia98Ap2sZWb3kY78LtmgCeXdOqEPT0IybZGlvKkXk
	 daW4Z8vjD5NhPJhgxWN9SnRLEKFZJVYae0CoPvfDn3BgOyLEgxzlpS6UlwAwLQdSqW
	 wBF18s7J0/bilU7ZB7hw+K5UhAS+Meg6HR6KWHQzLQbH9qajqPHDnp2jPnmqjee8VU
	 shEAt0Y7XZoyhrCQkvbAUBR7+juIEn7AqhgIPE2gnPVUEf9BUyJctjTHfmVSsgdPF7
	 XTLLTkGe/Lwew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57B3C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712226283.10232.4192996081886429203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615561c5451fd1011144201bf48f0c5a4e2022d316ecec1d5603690b4c6abf11
Date: Fri, 31 May 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717122262
