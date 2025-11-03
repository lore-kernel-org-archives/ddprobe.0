Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144C91C75E2
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762133394; cv=none; b=UxmPRDoJe1YOMova9f/AE8uMzVoBVjtejxUjn3fNMExUAzmmKprRw5jAoConekKux6m5mTRf+YtddUaDZBuDgW04jXT/LBvgEndvniVELQ89YUJlkB2UGn9VCNIYtf4PbQhPQ19aofU57CDwFvl/FqFE6Ehdy9jEQZAJjYCfqVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762133394; c=relaxed/simple;
	bh=BKVYUskwF3ahFKBpfLTg95kpluJI6ZaJzZBfZOTec1o=;
	h=To:Subject:From:Message-Id:Date; b=AP3M6BsF8YVFYpfc/7tQotIHerVHxibG26FiG1yDGQBA9bkuhsWiycpui7ekEarCNUaqOGNuvdJ6qmazDRaFnbZioZL+llHLOmKNOqozk0bA5Sd9l+55ZumyuMzS8F535oEXHYecKyyYZHzWrVs1e4uF+PmV/vAB+VPgGEZdNEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfbY07kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfbY07kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DEC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762133393;
	bh=BKVYUskwF3ahFKBpfLTg95kpluJI6ZaJzZBfZOTec1o=;
	h=To:Subject:From:Date:From;
	b=PfbY07kYxFmymx+9zLdFg9scO5CD6MVvnV6nc5KxYcphGhr2zQjCzR2w7InZoqhwY
	 /IX7Z+ELd3GEIcy/o/oEcrlMxKQVkVhBmBEi8RPnljmtki+uK/RqF2NQIJECwHR2Ma
	 7+73NNLiG6HDc2o4zpXj+/3qnWEqzNYkyNVnqMEMNSMwFNRu/NZ+WYWLZOo1KoCluv
	 ajLC3Wb5YRmyVq0yIGMTwPMdJCUz1BpsK/7KhAEKI4VgHfalooI/GyQgvhVgNYEGdN
	 RmgBJjpc4X3+Sahg/5s/drUdHhPgL78ky8bcJi50vERfYne5vC46WrLBiBLvPB3Dqc
	 AlWFR76/xcpJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C9CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213339358.7122.17948964339366345391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0652119b6ec5f2ae89129f432242d9d62772c31d5b206adb7a76de8be901f36e
Date: Mon, 03 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762133393
