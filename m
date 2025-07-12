Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F6E86348
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752349794; cv=none; b=n4PP9p2cuhULX+1opAbJUzrCK0cRfGM0bNgUKp6cS0mjB2DrFyA3YQit46/vOr0xNFSm1Z8F7JgnY90hOQAym4qMFmt4dzwbDysFnm357D1o2Kn9Dmm8ggjk00a/3cwq/IuOWPlxkXXRv4ZkY/4d1XugfW4OYGhk9DO5jsGSOq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752349794; c=relaxed/simple;
	bh=66Wncnca7ikJk08qCr/d/OpbrqPxzz5ZjC1n8Vo8w9c=;
	h=To:Subject:From:Message-Id:Date; b=fqdzKXhDy1jR1wayZdE+OwlEzZ4iwZNSEUSbV+756Vw21Unar/7++us/xfXH6ybxOBqbIpYIE1JiK0crOxWBbeS9IFyQn7pjmjMuucvPwBsumB5vvTaYT4Ov1T+pzFfCZ79pGW37F8TIaXp2lP3I0mqHGFKZyQUgPymjzqA45NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLr9Vf/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLr9Vf/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D62C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752349793;
	bh=66Wncnca7ikJk08qCr/d/OpbrqPxzz5ZjC1n8Vo8w9c=;
	h=To:Subject:From:Date:From;
	b=tLr9Vf/WyvXviudShTSf4RKMjFYih1pjjwVApX4IkygmayC5/+yA0vGPcAoBssPHS
	 MfPWoaQpcapprWL0G2eSEeacX0I+vSpbvd/TWlcO+W24AAq/mTHhzb6u+ICQ9aX6fp
	 A3pTTEX70ciahOeClKvT6zqNnkhC4Mm6IXQB68G5rOq87ko0NVlWgmdClnrZQLmH8I
	 ykcS3G/eqjNbkPpJTqWbzwBIxIeU3uHy0PIkgNQ0S5YHVlb/HA05crbUxfWW4jGCV/
	 rHcpzI01muIAXIgjZoZDYJhzLVIxTaGswTcLzGJj8AcvoFp246ZHfQAqs+JhrtPDmz
	 47W7bHKYelz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A4C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234979357.11161.8409550389828418147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86361c4f5fe99304a2940653dc9b083e2a989d961793a8179f11bf7687f0e86
Date: Sat, 12 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752349793
