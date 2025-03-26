Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A45664D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742972394; cv=none; b=c5Hl5Dj1w35HTE4jqC2ZU1UtRuiXe83I8HG3ss3dncF1zzO4fQpRKutEcyCePUPc9Opqqojd+YHUlhwqw1ngijcTHgGxBFRbiY6RCeUS/8AXKcmUS5vTvaTuJZ8Z81Dg02PuKnwMiHrIhyiN0amQYORhc/LDasBj1X09aI8mPfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742972394; c=relaxed/simple;
	bh=xNZABYbYJ1nkS69/raXwy26iYVf564r5/kypv74DRMM=;
	h=To:Subject:From:Message-Id:Date; b=UvEf9gwAsS50kFJR1vf9P2QEiwGE4ERI5ia/9DS8Xi/M0JSxqvTYzDmzAP4VIAeqC2MgUJ0skMPIk2kRt13C+o2aM18qBAG+jkS/TQKNZ+Wbg8pB8ZOhwgyHILRlV7YhesTkoYoJi6Qpq8FEowQ3hG784dKe94OKfhJGgHOBJBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/gy+Vmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/gy+Vmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2D8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742972393;
	bh=xNZABYbYJ1nkS69/raXwy26iYVf564r5/kypv74DRMM=;
	h=To:Subject:From:Date:From;
	b=f/gy+Vmcs5EpQy/io1XX/yrP64NibIx8ZkOXtu3QvPT3XnVupQ1JcFTteoIhynjme
	 NzvZzI6gXBCp4JMiHSx98uqpisysRmmk5PdYJY5Z/opEWR0KHOfjOeXk7E9f5rb7eS
	 9iiaTXSInOfP8v1Sy1Bzq22cgwdunyfAR/ogHw0GzobK2rXU9+GcdyeMzkF09YrH8I
	 ReRjBVxQzckhqb+dzIdQvHA/dhZ+rMoNtINccfXK83GEu7BVIVIyT73PKS9X/6VPC3
	 kv02gBbiC0HRW72/ger+xRNjEEvbhSHxWldnrwbx35iU/MnqpO8cCMa+OGPSXU36Kh
	 z666YGsLcBzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98775C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297239361.24005.8819756350390785601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cf378fd97cc4ae77a976b70df3073fa0a83c7e098b42287b1515e8d91b770a
Date: Wed, 26 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742972393
