Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3641417A2E8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773832494; cv=none; b=ASYw482o81/3cC7AsJnyqmPU6FPUOBL+FeFT2zkaqR4J7Pm9RO3yP3g9ISiJdmueBCf64OJHy2FM1sFyFWVQ/S14ZHWttm+7tx/4MVABVyHo4a0W4hr7ODM3/P7Mel81U+urdG/fjrjzNfr3hGghKS83jTD/t2gKuU7k9ob68CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773832494; c=relaxed/simple;
	bh=QlkOhK3vIiaJObhY2sapqV1pphxhxYXWTCVo4xfuIEk=;
	h=To:Subject:From:Message-Id:Date; b=VEXtjiniPLs6NkeNY+Th7Z4yfmWb6VOw3jj94Z+jjhI2qV55n9MQXLmUs+bnvU/Eta9/ShPqC+Y9xzIGOgbxpMhPgb0+DZMePnAVi4UGaHZ7AFyEAdmMdLIyWEgf9uURxMKjEccC32IffX1JL+Ivw7/ep2TOoW5JbOEQAld70k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgqn4jZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgqn4jZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FCDC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773832493;
	bh=QlkOhK3vIiaJObhY2sapqV1pphxhxYXWTCVo4xfuIEk=;
	h=To:Subject:From:Date:From;
	b=mgqn4jZFEXy1I6hP5ZRxPLNS5TF4yk7HMZKj3EL3y+FIlbr+qWoIkUCw4IKzlXuYx
	 qW6wVfjJqUk0PSwGx1BoR1PP57slA7HPhlfedTTWh5enPLCTNumhzINuB9qtdRfAVg
	 gZ0Y68N4ecr7QD1455zW60z32Rf3Jnmrk2p6RC83miCfwNzQWcmGavbOS+MUlV3Ckl
	 AXKUg64CrGklPNyfuQk3yHMoh0h5NxzJWhgAq0YNE/GifF/EVwQnoqG1D7v8i/8rc8
	 pYtMQ+oh0buReXRKPI7g0YafzKwAEs2k+ghtvRbaF2cjzKTW4PVReMBISM6P+Gr7TD
	 xep/jzgaFBcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A80103E166
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383249358.11143.7619180658629679594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e0c3f90c25d78e26f5163327b3b63a2149b36df4911aad245a3693fd3d741c
Date: Wed, 18 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773832493
