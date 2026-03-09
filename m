Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C5536AB7C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773086094; cv=none; b=U1YGZAOXW9MFKsuXLQC28YpKe4qVTS1FJ3KZt4EBBdSnF3O+cWFypf4V4X0aVQ8PBK/D58l2mK+E6PqlXXX3tgfNxUgaLurvmKGXrTf41QEODQyJ7ERHPI4rgGcMURbZGLJzsTDX6++0X6N2iOkAyA8VBl9KA1QOezaTt71RceI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773086094; c=relaxed/simple;
	bh=b/bUoRywvCbgJlSdnryeO0M7OwRmWXHLBdwg8kVAFSc=;
	h=To:Subject:From:Message-Id:Date; b=GyqXdTg7wP7KlL2VSlc+vHmF8NoOM47OuZmhF7SJnJPCusF7dQdqbzTgftejVNov78jb0YzMMRjN9OoPxflXloh6wZ7cW39Ec4UjpdkQoajMvk1ORUpDSeD0LpnnAunpnuWBx8Jm41Kpr6Fn1IGjKqNyhQDn1+4DuF/GOozGMQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe1n7zgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe1n7zgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773086093;
	bh=b/bUoRywvCbgJlSdnryeO0M7OwRmWXHLBdwg8kVAFSc=;
	h=To:Subject:From:Date:From;
	b=Oe1n7zgADDtgF0SGSq8OyRok+mvjVMZTrAbrNKoL66bUkRr/voqrach2ne/1OIju8
	 SlDEWkF/d6Y+BnqedFUpqlE42xzLvG7bueTzlxuSZz7IUARMOze1VgToXqsUveF1bO
	 epD0krKu8TD4vx3DuGPiDgRewXaybSIJevhi47n5W+S9vUydel81vZPwKDRFnd2YmU
	 FCeiXZ9OTYQ0jqrNX5IcX5jgJuegxMORs3TvzimmZk9/y57VOo+lZ/jPWZPdeVstEV
	 oH/i/Yu0F150PIXnWAiwOYRaJLZAxBuEzr0zmzpn2Zc+0wldWYVKR9ivvlIv7KwSH3
	 1zAwx5rkraxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA58FCA17D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308609357.32365.7835607655257691714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4ab7e71cff56b1192aae7bc261cee334ce59d8d974040e9b246ae1616de85e
Date: Mon, 09 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773086093
