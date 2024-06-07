Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC9414F9E6
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717741043; cv=none; b=r5lmX29uHT/VnYtLtkdCb+kmqHwRL/zIKFWF1kdHI1+PUUoNKG8CGttm9AiUBNvqX/tTuYI0FvwjbfpgyOXEiD+B1wagZflQqNkQrM8m4ENKTajUxJTLfrtAGVo8xsr836U2leXhUtL0dAWzTAJQc60zHHkNb2b+dqSX440kewQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717741043; c=relaxed/simple;
	bh=aJv3H5j0s1CQPw7nWxS5R9oO2sWRaVBkilF95v9QtQU=;
	h=To:Subject:From:Message-Id:Date; b=jEkEYByA8DHGTo+P27wg85equLyBxsmbxOPnjRlu7L4a1NZfAkj09KtEG5XqlC7JYmcqTwQiy9Vfv2YzEb8Kg65laief1B1Sx/5cNDkQ5lJ/LVfff5QvcU6iQIjxG40cFKJqyBHZgZT+M6PP8xN4gt3W6W1MCc8KrLwkjc11Vhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRsLU5Sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRsLU5Sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A41C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717741042;
	bh=aJv3H5j0s1CQPw7nWxS5R9oO2sWRaVBkilF95v9QtQU=;
	h=To:Subject:From:Date:From;
	b=VRsLU5Srnr6AgIuO2A6LmTTRJEhOTodCO3GBlLu7kNvyUTKPDMxTQodzQrIsXvo+v
	 A60I547hTtEPlwgwmcSe0owsfTc+AD1LyQA9eYKqOpA5ALAwQAloI4Ll4ODsyOIDgV
	 8LSUYA3m2ToeV5qIfOO+M0aKwT+nTXEya64tZq5QKhs824LljnxzEedazZy/Jz4Rni
	 ZMEwpZzi0jomVxVySshrCR2P5I1sXr7zARfnSua6LvUfky8p7d/MhA4Y/FIqJMxcFh
	 1UhfIVkuxlq9cbzShQQZpTtQ74/qG8JSeS90bXdtVJVuuW1561Ay/LWM4CzzW3Mktz
	 MuwVITZA8TWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE724C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774104277.17266.11584652870682592766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb9d73e2d461d2f02bf307ac093da12985b6fecb8f753695d53198f8d7ec7b0
Date: Fri, 07 Jun 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717741042
