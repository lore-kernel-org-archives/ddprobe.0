Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27526184F
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727414154; cv=none; b=Ns9mkc2bFJlfv0FHFSX7a55iNBKYkDSYuvTi/HnuwXg1dnq+hUHfSlNaeWuLpi2itxzofoySOAezdpNS3iwFDkkiaBf/oWHWMHiy7CJK3Y+krZuainYpDr6Vc1iqPGur7zJNuhg1YBEn3PkqHc3f3MiJ/9uhBMMF38uOuhrrS00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727414154; c=relaxed/simple;
	bh=2+pgZvOVEZPraspgb7p8cnzCYgT7ay0ieCx/zouhXOQ=;
	h=To:Subject:From:Message-Id:Date; b=D6UFtiq5isHwkAe7pN3p7QjPW1xh6X2JGKsgpW9uX4DFXY4O3Hq08RqW5YKwMHxb52nyISsX9Qn0rSwYzcNifuhkJjmeX5xQUqhiEdoyfvKiul3vhGV5TQHiuKifeaIPTD5a1sMkxkH4hGc97kAYVTdayIW2/GxeCGHbs9x/JZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8j4A+w1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8j4A+w1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC018C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727414153;
	bh=2+pgZvOVEZPraspgb7p8cnzCYgT7ay0ieCx/zouhXOQ=;
	h=To:Subject:From:Date:From;
	b=o8j4A+w1iLh3jEQVi+7cTnwtinCqdtR873qR1biCOeziIm7s6kVgKw9Ie//87eni9
	 1nqHn8JocO0JOkd8yxZvXkleNaCzJv8O2feNAcEWgQ6cVH6KSPBcGKmtViDUj0jrqX
	 Aqbyb47HNdObyHbQtb2Zkt2XuTkaR7Q+bi0th4LrympdNGWy0tDbkW57ZK1/CDx0/Z
	 tw7VNICq142Opmz9c9Ry5alIBD6BCiGh0MjQAhJaHRMnpIXATbEK7zCgP0O7SYTXYg
	 Np5WFeOVaw8WT+gD/s2LQ4HJTPyH3TCTG6bcyjHyUXsxS+LQlfEv2MUESmiLwbgn7S
	 3cRxvoDA/AjCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D647CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741415361.3737.10647952477247149553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905672c8058aad4967a49e488cb5e1c9c82187e39c0eff5bff3a30719d19cc16
Date: Fri, 27 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727414153
