Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926B1DA4D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720381583; cv=none; b=bgQxDIKJYzcy0ZtEX5aeyip7Mkrk/6pwMPhmmpKpVS+ca6rP92997m4xa1uY6/r6RgRvY2zAdog3mMZhNYXjjCGcfg2VXgJfl0Dd8lRfziEaj5H4ZaLGIeM8BVvCwLr4UlKQT2IHEd6VPmwi2UZ/LoffvaMAYd74huER02A6ul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720381583; c=relaxed/simple;
	bh=4X08I5WgKS54gXUeb0xR0YogZ/vM/tyHgUgkDlInJYk=;
	h=To:Subject:From:Message-Id:Date; b=mzlnBehKbgGwJmUyeSX3KQtgLf/dzufSqVVMy2CjYAWImsPlP582+tIwzfobLywOvMf9qFyw7PwCKtb4+wJKjbp274yh7ux3mlc4vJYLH+fVQwGDgt8s1JhpSJHIE2ebhTThasvrpa2+09OPjNLmFayJLr4WtdLYYLXi9uy/GXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvsXXk/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvsXXk/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD742C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720381582;
	bh=4X08I5WgKS54gXUeb0xR0YogZ/vM/tyHgUgkDlInJYk=;
	h=To:Subject:From:Date:From;
	b=JvsXXk/XjwP2NEi4pYxJeMDFRhsysGuVIvp707xDfCRoV8QW9qWyEAAtArfXAkY7A
	 1CPQLT2cGzny+OlFHjbHJ0/pmlSg1PZ4IIStc7Okwd2uLNfnEXTPagzaiOdFNObdEj
	 /LJOtG221bXGwBez9ZYqvY9yqzPjgjLFpyw2jQqJ8jKCfHE6AZr8mZBekGv+KXq82J
	 RWapioTjz4p3yjgiRzb873qY+nDel2HY3C3egBypx+iQAeqewToVUZRItyXwM+7S3d
	 t/psATpirotYKRI7F5qR6hBTwgw71zNj/ai9nap/JN+UvgCWioqtfTyGeLQ7fAIZc7
	 cPhjTMH6JM1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0404C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038158277.26359.12949341574612878323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588888134fb9785cc9b089d50ee1aa713e279f951d1ea650700a8e3e37b7ad69
Date: Sun, 07 Jul 2024 19:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720381582
