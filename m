Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3836021D011
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756085394; cv=none; b=WSe3karGxiyERSXPS57uQP6wOCRbvkdCtGevI41XubD9EcHta4eHm/I2qI7zcGQO1wodRFkFFpC7XbP/CHd91QyvtLo9N19u4N60v+nEGeDhnP0/vQiUH0li1MBVyJUuNSPkDwH6KPndqkp6oeRqCMuBJlZiWgEl7Neh75io4aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756085394; c=relaxed/simple;
	bh=2hf44sO4TvZzuR4BtFcVy1nqhgdiJacESnwvGw/WNLA=;
	h=To:Subject:From:Message-Id:Date; b=rRkufKMBr7NVRuSJw7nhgbWQtRbxU3GFUFkSocUPo+4uTU8I82ALO3r5h4UvWjkNnmvXbmRKjSmj9cFs5C9MpkrDDBAMuSrqmWc17/T1RZ9vhSTiqRkfqFeww1C7jaPk+f0gFH/3fefsv4Mrj/VY/nAFiXvP59DgJBBED7iiJlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o62V42l0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o62V42l0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756085393;
	bh=2hf44sO4TvZzuR4BtFcVy1nqhgdiJacESnwvGw/WNLA=;
	h=To:Subject:From:Date:From;
	b=o62V42l0f77gqaTtTiRc9UBVJQzoSVSkSTTup8kVPC9XIDsuZS6vKVu1Q0ifor2it
	 /ndUX21SSH8Dx3Uy/JvppolQP57evLwVGDK//g5gWaV0jvFCc5Haq6dAEkdLcVnxN/
	 V8/Jq8+rD5Jz966y/2xYrVBbzE93rVLapjzX+azN93qrpp9lirsPlF4dqPZK3j9wco
	 02LcwGbvzNiq5JUQTCEry4b3s+6OLNZZQ/iSq9URuj6R8zJ97eWgXUnfxgCK9eYQDr
	 fi9d1ev/84qQkFTdTQf9psGm1RCdTR1nC8ScPQ40KmTY0X3+uzeONkXPyjaxtrU0fO
	 gxOtcQ6/6nDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3DCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608539357.11132.52408169869866194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0943af4c0dce2460e731f1a7e6a6e71624aa807fa612de6689affc5216369b90
Date: Mon, 25 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756085393
