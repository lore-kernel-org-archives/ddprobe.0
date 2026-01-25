Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B328220F38
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769334234; cv=none; b=cdUA4y6gYa/zUnsUCrUAAo02/xq4jBh5XgtI3WrqjJa7CVS61vmRWy7q8zoXJ1B0UrXD+MTM1fpLMezEnf9zFqSo6wFdrJb3qnKExvdcmS/M8yreVRAb4Ch4RG4nHTSbvfrgUEQI7ZK0mwEE2X3ygmSmoMBe3+5j/WesWNZulqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769334234; c=relaxed/simple;
	bh=ti55nI+xs0DN5PFldIax+mJLzF3fR9YCAV2pJG9GnGI=;
	h=To:Subject:From:Message-Id:Date; b=bSkETYp1RrxyxXJT83H4t60UuYE+HBQRDshcAsPESSfHaglHLroGxZ+MC0Y0+Mhtw1hv+fKXwvyJEcduZg/v5RgtL64hqZFW3FcayfM3kexHREl6Q48AqvmTeXuOmbPS/pFqzfStVY/0HHyqG3fiNYjpmkLMprJcQuPQZfKxjRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXeMWZxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXeMWZxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A367DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769334233;
	bh=ti55nI+xs0DN5PFldIax+mJLzF3fR9YCAV2pJG9GnGI=;
	h=To:Subject:From:Date:From;
	b=kXeMWZxeUW1olxVrwzlFzQR+Wor8JxS7j51m8cA/lv3rK0MuGqPwwqBjdwkmZGIbi
	 /neCroUrDX8Vi349AtYd0y5N1GPry6/ako11AywOHnH5Wqj12i5g1jfs62GKNALB59
	 IpQW8L/cAkZ1KWzgWiaO0M7gtxFx/mZW72NtqVQBus0fw6Wh4E/ZoC3xK/5QGZ07ln
	 68kozVRua0b7dRJQxw58OyXOsqkS95GGtp0h4ccaiyIZon27S/v6Ls085gnIrJ9frY
	 g03WnmwK025NzGCwuBuGQz50yzhMsgWlJcUpahjV64Poz6jNG9Hby3+eDAFdNYv+uA
	 7F+mipg5ok4LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92025E63C94
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933423357.7873.16645266833599794590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160495fca6e597c32b99667613fd1bd9603df31514c49c2b6040a7884fa6ac0a
Date: Sun, 25 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769334233
