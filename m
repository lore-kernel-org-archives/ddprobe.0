Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C3634EEFA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773467094; cv=none; b=RFNG07u/fiDtDnu/6kDC5Dw55hJQmzwhM6Rl1iG/m/9pEXW5MduBNA2wFc3WhMImif4lIAfCEwbW/EefiqSy+EC+HbULc8pGIDdV6ih7F6acQ9twvQgRkfs2TBDgA1ktF6jCixTYbC0QbbkwbS8Mgc0j/LpFzx/z9HabANNnUro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773467094; c=relaxed/simple;
	bh=EoIo2D4NpNAR0Gl5T53mI4B8b3gLR6LqiJYApbxY+2Q=;
	h=To:Subject:From:Message-Id:Date; b=YObxvPOmssJsBURKrNqJ4qwaTz5bM/rCpdeM51is4viwuhH0EUQO86LslSXTSHXUF6e+7BdI4+hUv5XDD4dClJqiMhQVkNBum1YSc+m6nJKZQ2z2zfTDP1EE4Gr0kxFmk+ZWt0AfbRdzKdJornjABNkqRuF9gjYhkDuvK7WggQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MygDg8en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MygDg8en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD18C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773467093;
	bh=EoIo2D4NpNAR0Gl5T53mI4B8b3gLR6LqiJYApbxY+2Q=;
	h=To:Subject:From:Date:From;
	b=MygDg8en0+CiTB5LU9Nc9ih57Tr8jA86oG09c3VNZz6/d/WinVZrFAlSlV2mnuKb2
	 z4+LYFYxmPJ9DsyRAENvACAG3kiFd0yOA2vUP5+l7smKHCr6j0qOTSHiholO1LxHed
	 oYLOJ9q9eFdY4zFJaHu6PR43FW5k59CLbXK0yZD3t5RdsK668hA9jaj6iojG88QO58
	 Ib+elNMBKKq7xUs/hjad+WZAIhRJh8AakrjG7VF/+/YqEQgRjPpMzoaPJE620hD7Xp
	 XHXkR7sjFhWvfB1lZRFhxeLUXqwA47LlTt4efC0Kq8by5PLOmOPPyZf5rCdylXROHZ
	 QxKsgFU9bWIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D3107BCF7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346709358.27232.7549409136477579051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06dcb80ed1f7fbee4c1b26090a13fb664935c0d61b5d00f86cc6929a91799d9c
Date: Sat, 14 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773467093
