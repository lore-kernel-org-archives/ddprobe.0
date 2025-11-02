Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E8C21A459
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762104594; cv=none; b=fB1aNHgjNk+VZcfWWoaeKxcokRYOxwGWYkfpEMEq93iA0NosmSYocYmCJv3JSJJi//5i2PQ9Z8APeOH74jeunRaBd2a4e+zksYfJIDQRcb4BtH6n9RhcvlaPc5H1j1YVJNeyixSRjwUadr7WBRlONS4LqQ3HEgClYM4k8AYZCrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762104594; c=relaxed/simple;
	bh=8CdR6sTR9vRgFK1h4tTHm1Qa3eQa6QNXlShw2RywZnk=;
	h=To:Subject:From:Message-Id:Date; b=cw84D3Jb865Ddw+TfKMYUbsyiDJgMCGOArnznzHgKWS9KlcQQJRg0fpT6reXZTixExJn0BhwCs+hvUUimRpGBCBk0bsw2F7BAAU18vU8DURAd2ez4ZkjacdOlBZdYRdgNmVyLUyy2K1fmrmJUejV5ZUu/xn4MKN7cSgv9eTbQOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCaO+Ap2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCaO+Ap2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762104593;
	bh=8CdR6sTR9vRgFK1h4tTHm1Qa3eQa6QNXlShw2RywZnk=;
	h=To:Subject:From:Date:From;
	b=fCaO+Ap2iOC8Lks0HtM9Bx3DQ7iWPXR13Q3PR6NZ6x8XSSFiFcxSWxT+WkFDy5Wf3
	 7Y8xnh6Mx9qYzxCYNzJ0RIkiFrcTMQinyx62yAoIHpuau5nf70FOaQIEMxJvaorZEs
	 G6G0VGyTeMKIzo0oVAx8Aawyje7nXWUjIpGnp6ARICcvpr2Mmt5zNtEswUm+QSrkv8
	 5RuzVcYvxz/cWEgGfQD5WMhEAtC+1rWoF32uYht6f435QyEC+MIt6P9o2puTmdWmKa
	 b7zcsvABHbuYeEyHww6G71RgMwO11BPWUeATtlzlCp0FUIa+2NivmYet1Wm6VhpKTN
	 6iRtIz4OkQ2tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB8CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210459358.27077.14071014520230843350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f996989477d2e2673d9e0e9f0e0539fdaa1462bb601293089c6ac8efc3af11b
Date: Sun, 02 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762104593
