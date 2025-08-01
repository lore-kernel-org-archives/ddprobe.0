Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C77B347DD
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754027394; cv=none; b=dJmToYbKk6zE7SCgjHm9LeOTabHIpHkuDZ2P+7wV7bo74s3CofLcNgE5k1I/65NJ3DkeC88vVvUVeLLAe/6vDByFCKJbn95FEheLwxbYC7pYL5RUidBVCGB6asbaR1JyK2xkw6WBbDCiTr0aE3etugqSRY5XV12nFD+gUJ5/Q8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754027394; c=relaxed/simple;
	bh=NM1FYYz6aQhyYmNsyizDOpPZvbFtN/w6n+4e0WpAQvI=;
	h=To:Subject:From:Message-Id:Date; b=gUPIaVLCHFpVMoZGrYjuLkE+ng9HkhZSuqeUbJBFMsX3rLJVLGVZZTWgI3R7Hz9RXMu8LSV4si8XJBNdJCCTTMocGM76YEtvZbAHL+3YfKN/7Jhxo1FRpuK6OUevKsMy864u+o/8W6Mliwmd1OOvvbC/Ook8AdJrVUQBYKr9p7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgy68Wp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgy68Wp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0058C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754027393;
	bh=NM1FYYz6aQhyYmNsyizDOpPZvbFtN/w6n+4e0WpAQvI=;
	h=To:Subject:From:Date:From;
	b=Pgy68Wp1BKdA6j27QUNQHD4n1anReLFnIXo6YPM8XR8Rg+avd/S9B5t/uYFbFr8mO
	 EKEJ4olpagl7sQXA9/Vh8g+TB+O5QiIGl6iO0IG83J4dnJnJYDkZWMxRbYo3plVkNR
	 inCTkRjV7RSH1ZUZ2bH/vxumqvCsW8f/aqoQaZOglEX7m1IQ/JxugCRrlrBA2B7tmz
	 xTiPvLDWCVhbdw9y9oQAyNrprSeSQCrC5B7MWEVPWQ/lHSzjQh/ytNP0+hbV3BM5Id
	 /AZnC31aQ4+xa1buj1qFX56bXhcMNFVHUrYrW3keOIdj+pqTUfyUgpFZZz2UWahRU/
	 qtQHA6Tqr3ZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD1C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402739357.5224.10283861604688386542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdbfb6205b63553252af26fca51f6cf5392b32f74b4aebb028a5abdbfa9a208
Date: Fri, 01 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754027393
