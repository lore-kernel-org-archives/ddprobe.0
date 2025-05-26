Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E9D171C9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748272794; cv=none; b=UJtLKppAYo6BPLr/2abZ6r84YCHsM6Mh8eUrNxsaIpVK393QNhprwJhTeuSwRzW5j9dyiyS7dOycr1lXXKvpw4SxUmSfvEYcBauPcrkxB9Jkax69Fg6THFgsfDfuJkWctIPKHyLPL2pA8M852dGwkrSNjmM1zZJ7YBVEj4IEUCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748272794; c=relaxed/simple;
	bh=5dryd3RfqMbGQA2OGAsQeMBhQh4jX5IYrBGeDCX0pf0=;
	h=To:Subject:From:Message-Id:Date; b=o0EwpZ/UjIJWvS8ZnR8y20TUODa4EoAaTMPxwkIpvJ8FzYll6T7XjQDPAfR+TmQY3vGIWa5KXcIV+rRwdgiX4B6OBPFwRjF+p9VxL+7hr83B0hld7GncktuRz9bvnYiKR7WvR+nW9UY/PskWmeBwIowvJAK+4lsoXLXZeIuhnpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSdpWES2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSdpWES2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD64BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748272793;
	bh=5dryd3RfqMbGQA2OGAsQeMBhQh4jX5IYrBGeDCX0pf0=;
	h=To:Subject:From:Date:From;
	b=rSdpWES2CeTJS+wVrPWDMf/X8Ax3NkGxKDU85fglDTDDYpR7+lme6yqDe3F/H33X8
	 Z9SXP5cARmQtCXLSxgrS2TkC5aBkdItILde6rBKysthy+GQOC297g7s7HSFWm5Loxp
	 9GCR8esVqD1YiQoJIuWScsQufHE6IDAqIi6QzkR0vyooaNVKtwFoPujgSlB2Pkx0/f
	 nXsTQzDAZnpuZmLqD2GyxBclPg5kDmzVs3OtI/OmvvrtAmWmMA2JtNSI5xhetRFtJ5
	 sMWvQTTsypH1+qw1M5HI924xdGdB85TKlJGrPU3v9X9ZpcCQz65tHrHcqCw4zVDmTJ
	 C4LexDOvplB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0CAC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827279360.26680.10143121184993569541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e3e69f6bb5f307947a112159d1719c67ebc33eea5b97020e107c4487faec06
Date: Mon, 26 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748272793
