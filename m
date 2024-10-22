Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DDF4A18
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729610154; cv=none; b=DbggocH1hicWSBnEHjwknYnWuyKJV0o3cdwwi1rmCXxX55yaz+CedHGGQXsoG0uXQgOzVI8odLW73NFh5bedv1/UTUTkUzAOd0mSdOwzj9xojy/fc7dVQEOOMZaCry1ByDsSrJktpXXd2rUI+2oT7uh2q3VT3pxC9BUW2cuwcbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729610154; c=relaxed/simple;
	bh=IToudpdOAyN3Bylr8niIf6J6C86sxaaJDkWpZbKCP3o=;
	h=To:Subject:From:Message-Id:Date; b=RJTwVPh8MSW+S9Ikn6rED8Bn99zFsqk0UhM5SBcv0Av0oQFG6Ap6JFdNDg1Ns9wEt9PCSdRi/L+DmAEpM6hQ0y3Ow6+F/wrgG+03AW3U55tUM8b2EWV0fODvvmCyiE4ci433lMmWfzYvlTO2HybyO+8QJCV9Bz7WpvErrhOS5Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLdAAvN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLdAAvN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C0BC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729610153;
	bh=IToudpdOAyN3Bylr8niIf6J6C86sxaaJDkWpZbKCP3o=;
	h=To:Subject:From:Date:From;
	b=qLdAAvN26/U0vNQIJjilwRN7tCftwGo5jRuJonlAAp0cs4h4Gy/xZPYsigsXn1gs0
	 +tsFF5r4i/R//5Np7UeHj1w9LReOAVEHHiIOwjSSJs+LAYlMHNIkB8NltfavXm6x2l
	 9Wm1Zc7Ai3hbSsXLuwY/VyqPk8HBYKWoiX3VQb0cqYy3j+h5dmLYdySVs8hnhzi+ps
	 lNP7Y56t2spDKDUuqAExWyEoK1OtS7xy3Tlu0VjeCUZPyKlgSfMKHU0qlzUK0xMM7X
	 GPVNwQlWtymzvUOnxrKAXhYZhYBXFVOk/sKXX0T6QSuPNVH1+LKTb+UBdPAUxGSVJL
	 PwOYPN2KzYQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC61AD2C56C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961015369.7208.13981392903239716645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea691bbabac64ee421181f04bb232d103112640019d017bc6f3afa89277f1d0
Date: Tue, 22 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729610153
