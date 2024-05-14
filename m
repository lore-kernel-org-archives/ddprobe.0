Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0D31CD38
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715665343; cv=none; b=eEami6Ik3wadcGc4govjqB2bK1aatfU4aniKXnSb40uSQjYN2c7iOJvafQkfyrKQwUAigvO3dyJJHdRTAGGoJjn+1XIMt/K79Qxu+9S5XkGquk+PLvjGAQh1tm8S022OvYlw9M58TovlQpwMgJggYgbdXzNpmVYkeHOL7yL6sug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715665343; c=relaxed/simple;
	bh=JNwJSvwt9fIF2u0CiYdWK+TSMOVRgA/MyZ2HtqezkRo=;
	h=To:Subject:From:Message-Id:Date; b=tA1gmwKz2LxxdRrjP9odaykz3Yhq9ucGQ0A2weuvnJT/dxNKwRze5IYE9Nov7Bkn/PaBQNiDWwhCWOrUKGPb24PTKawsGF8WxSKyIoeLHRa4xHLNkJzafFQ8eKBfN/LhXivY7v3NpIuW4Gs2O3i3M8wNy3wu9dN328lMk9wZ5tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4yvIVfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4yvIVfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6962C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715665342;
	bh=JNwJSvwt9fIF2u0CiYdWK+TSMOVRgA/MyZ2HtqezkRo=;
	h=To:Subject:From:Date:From;
	b=e4yvIVfUxnUbTU3hHN5iJw/8q3Zdsgs8hkbJ9gNYa8M8L1Tty6AaRnoqaXGddvAAE
	 S14Jno2Hm60OOYFnh48ck0Fe9ZsOlSc0mmNt+En9KoUZL83aEPAAzDTL66qOQgMDPl
	 zGdL2Iy/aMZXiPlzc0qksBCnu+JGfsjwlp7nZRdfisESeldqJguptjpIZEwHS58B7k
	 PrpyNSZ3H6DX/Dey3A1CLqiZsywLU0oOAIkpJ5FzEohiSQ36opKNaOLrCBu/Hb0eH+
	 KCMd2hztovmcgUGFv73rlXcidZxV+QWwIPseYpTp+tqQ3v+NroBfXN7LQxvxA+nVS/
	 JYAJQlDwT+V9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE58EC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566534276.13156.2161636120819489668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7199a5c9d894b0c636b7423de718320237961d9cdb422fd1ff0dca0e0de5d5f1
Date: Tue, 14 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715665342
