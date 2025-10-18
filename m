Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E78A155C87
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760798994; cv=none; b=eCVE5Bj8DDT/gINVwnop3aD4gEtLa50aN2HPOpgGHPYoYv2z4Ojw3I5er4aing9N62K6tsEB2oPQ+YJK6dfncnUnGfczzhwMvRz37lKZFhZxhwrH0leACx6ZGhyiCXw94k9Du+A86zpLFuDwCEzt/iGWUysd7nxH0eXe6mKhuic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760798994; c=relaxed/simple;
	bh=awSmiTFsoN3BmMCnY29sSaVgx390/q9dJmoNMw4euYI=;
	h=To:Subject:From:Message-Id:Date; b=N+FusZXlbIoXdvQ4baJ/3REYWtRmjbQ3zdK6dEXgE9ucOyrMMQjtbG6D4ms+0Ih4l5Irs88cpZWXmmqUGCU9GYcsk4gzPntD+NMmg+NzUGyV94EJKMvJPXWMLlCgyH82E1GalzGZmekVUssIIibrzeIXcBnI132AVvRGZdpKJzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iorgVX1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iorgVX1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BEC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760798993;
	bh=awSmiTFsoN3BmMCnY29sSaVgx390/q9dJmoNMw4euYI=;
	h=To:Subject:From:Date:From;
	b=iorgVX1n3RFzKlCxamIbhcCsUoHy4blGcnRly1YJk2iiBHPZPffK/jgJgO1rn7Iqg
	 OlPUfEgPtyaxDzWzwpR002sjVD4XJZpl9paSjLaE+1JIb8/6uTHMqvs5OqwxPJopaw
	 Qidr/2TzuwIK8ci+ldXVUiKzImhnjgNWwUOBhuJNGCH/BJuq0oybWqH3CqlpCBY13w
	 dupiRxilvUk3a8fUod1EKbk4ollHMk2bFrgE3xbJ2NdWLnAW9+eWVvWkk8mikq5a0m
	 nVP5p2KgPFBYlja+fk6A6YIjsTf73f7V5GcHvTHumBDMEQTZX8vXM0qSJ7qPLZUa1J
	 DjFrWB5I0K6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFBCCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079899357.17665.9081422665529521713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86a57bba34de27db674fc64fc26153311c6bb421ffcfec60c0c1dbcfa8453d6
Date: Sat, 18 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760798993
