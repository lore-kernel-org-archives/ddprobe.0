Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB931BC3F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749904795; cv=none; b=ao3eu/OvFKROUTcdKis8HF5ofP0oTdGdwDl8XS4SnnIDrbK4shTIw2Ax0ZUrxsOWtr8vyOZTIGHOgRbC/HEYMG9TpMgi6Qax4g2dKj15ZGKatqROiWKXpPGxzehWtvMLIrWfJjprSzznNVxhhf+sBPD1w/Vs7UnYwRvRxX6Ie8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749904795; c=relaxed/simple;
	bh=V5EmqDm8GHlv7ETPJ7BlWwjNDEA/tNBwfKB+Kjv+dck=;
	h=To:Subject:From:Message-Id:Date; b=IFP5aoKIJvMBh0DjQkzTu1HaE8KnXItyycyGeIrHduNV6nn/3oEZwWvFW9yCIt4InC4S35MZ7jGOA/NrGZSE7EjHKV+LqDVFTwNYTkaug5swq17udLZZYUAYsvcrn0cV1Xg0y/UGOE61vPmG8vLW6AlQ2BhctfZdo2iyrs8iYB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqEj6tln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqEj6tln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABA8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749904793;
	bh=V5EmqDm8GHlv7ETPJ7BlWwjNDEA/tNBwfKB+Kjv+dck=;
	h=To:Subject:From:Date:From;
	b=bqEj6tlngpVyXoT0JZkeaD+rISD4lg+xj4WwTRxkPc0UKfOFBfRNDyDMv39eHVilA
	 DUQmxS1QUACON/HVBVBalmuKXJ3KkviD46ExCJU4ZoDag3PzrdRpf0hUL+8B+6lTdp
	 kljDmWRsrb5JGXa4UwHrMnje07oxwcFhIpRy02hrfbuFRReDvXYYD/ZeLNWFKSf9Sl
	 WaRhxW52zlnRMKZuNxmkxcvLBM/AnXTtjFTgi7iaxcJ+BwHkDRj58QmiykZ1z0xutY
	 KbtWvToUI7UDWFTExXN88T4KLHJ4vrRnQ7KfdCMG8aIZEFFpcc8zc86Qwpx41XcWmU
	 M0vMNVnslIEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978BFC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990479358.7259.2553125030380680566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb2125914773ecfe2e521ff5e63e30cba583e4afc19f573596bf098c10b0380
Date: Sat, 14 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749904793
