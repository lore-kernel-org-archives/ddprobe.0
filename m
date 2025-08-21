Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106F22E8DFF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755766794; cv=none; b=sh27DjAXxiPIIpguJpNMix8z5hkSG4WqhJ3Sjtoejb94EKCnWerULpFOJtFyF36BCOTxmxafsoO3qNxMZJ/94AR368CReTSh8G0jql9qhjzPu01n+rNpivUjs9uDvKrkMiP7LjSjFrDn71sc7XjirE+z3R/FRletC/y6pKEVnAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755766794; c=relaxed/simple;
	bh=wfoLmLBz2nMkL9cwe7x2S384TdotqjzvfxQnWRKMhJI=;
	h=To:Subject:From:Message-Id:Date; b=PfNHJLaecJaVdH/WPFe6mHy2p3L2EQxPHVW650WmnVCiVsXrgc71YA1bpz/5Pa1uYL2ATTdbUPT8EME3lh84tmsTuZy8bKxJZ4b1NtVlKWOAYHfnXwTwjNu7f+gzywpua7KrbrNeAbYjAoJUZ2INBYJJbrzAT+6sMI7S+31esKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LduEGw9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LduEGw9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0696C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755766793;
	bh=wfoLmLBz2nMkL9cwe7x2S384TdotqjzvfxQnWRKMhJI=;
	h=To:Subject:From:Date:From;
	b=LduEGw9uJrYEese9CB8E9KGFXvSnBxJ+tbI7b4IxM0+X1MFDts4AKAp3FaegAnfd1
	 e8+UcNWMUdNuEZcvHNmlcdpXQGBV5VYfvlBDCCZQHuFs8Rl6lfuUkMasqJlAOTlhms
	 kkAt6F7vC8JDvOapIa56nkeVxEgbCcH0C/G+cjVWHLL48pgStA/amhBI5gtklsrzwX
	 APXt9e9d/TjA43pOIj6RMmoT2i46HJz9BYrYlXM4OSqIWmnB8frzhzg5QHlRUiImA5
	 OIE6C7VOKbAmKkxz/Zbh9kEZ5eU2ALweTEdqTQyDo1UUZI5crrzMGUh3GHHWgSU9IJ
	 tNbB535vvnPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F560CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576679357.1645.3208126918412935983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c852634b0bbda5fa0d2c359e6dd23f262c95d8a75819fd521749e51d6147f975
Date: Thu, 21 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755766793
