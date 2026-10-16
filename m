Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD83C3F67
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792156834; cv=none; b=Ojl3OmPbpktXGnXZ+vv4pj7JceknGZCikvbvozYVbcosNyvfoZVV9Q2nCVluLpk4UZCFs5WHfgJMmIBvGwMckduvwouETHaVZXJkR+UJIq0zDhi3FNfIcIAGitz/H4u7rdjyLf/sRQQb68fS2e4D2iKKBaXZJmKvuZsw/zDigwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792156834; c=relaxed/simple;
	bh=n73jNWIkUJi1raJ39XaWtHbLaK8G/cziGbVGF6+BX88=;
	h=To:Subject:From:Message-Id:Date; b=uFQDzYLyh6RENdRHir52x+4R2FOjUR0xHGfJ32or/9cRsO8cUyYsgVUYC0vlHL4FMBi2NSsgdH7Sa6oGj6fuf3kgFilLpmMHPel0x3EBTP3ZcKei7c5idM+ia2HLLJZFQXCn8efgVtOB05PWkSh9/qhXWskLKLNg9RwGAICXZS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cupewo+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cupewo+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE05C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792156833;
	bh=n73jNWIkUJi1raJ39XaWtHbLaK8G/cziGbVGF6+BX88=;
	h=To:Subject:From:Date:From;
	b=cupewo+TVl1G5dJlhxrI/9IktxJaS254HbmJl6MQ8b+Znb63brUrpZwT7In3RizWV
	 mC8BKR3NKKCUw+xofC/NcgYyHkzfRce25ODDmBKIANel+8BQh2pj3uk3yL32GQpGDJ
	 DmK0rSyDAGroYh/sSkgUED+txbC70IueHDo8gB6uQo9zMDhV0Jv3xD41tYh3Rb0EOF
	 ovFoqq3B4MYF5JZa1EIm4qUE5yMTtOP3eIhyYtYRSB/zGG6dPmuHQWWXZd8FrznRs4
	 7y5/91WPei3mn6voFYBVrDolEdKsHXCGPSEsHvA69qHo1vm0iPVeQfQAg9cRYmVnNq
	 hCoa8fg+N24Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3D7CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215683368.1014.11431094299342418174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b55d8f67b3b58cf8fc6dfa9d34bea1eba880f91570b94d7ad5037f4d6d467f0
Date: Fri, 16 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792156833
