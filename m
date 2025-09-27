Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2754A1C6A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759006194; cv=none; b=rj2hfA4kypGL/SIEAI1w+amqKzQHzkyUqDA74WJ546DygnutsHBLIS2Zk2Wh8BZBz/SaAni+wjkn3yFZj6eyrtkiizuu+TB+FYARstfXI4LhmoIcyhbRUS+PGs8XcYejNNzTsimvIZqD1Y/r8mj7N7A8CiMXS42FBCD5Pmy7XwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759006194; c=relaxed/simple;
	bh=7r6j8b6uCD9KPNGcbDRvPsdQ+np6HuPwqYUM6rQHo/E=;
	h=To:Subject:From:Message-Id:Date; b=WbWAACKFlSezwm5SrMcaXmikIpDFEFMtyVtYrsR4RVT23jk6HFrbGLgE1Xe6MpeME7jyiHm2aUYLtH+Ddb6EWyI6AtLofVTumJdT5CpzjNDIDEeAgYDyMs9o4/RMUR1LjhYSLuYV/lQmQqKUtyoU+lCYvH9fNGpQBwd8HE5P9D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKD/hfB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKD/hfB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4567C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759006193;
	bh=7r6j8b6uCD9KPNGcbDRvPsdQ+np6HuPwqYUM6rQHo/E=;
	h=To:Subject:From:Date:From;
	b=tKD/hfB8Nxjwgr3XsMYQ/kgjU1Q7EZZ4Rk5BpvkpfIA/m2POGGqThpVl+msn9ID6d
	 b6IzrZ2FoTSlW1DCJKOuW9qlTnYOqS8qnTzc+zL1QE3Lb10UAgrutiaGm554O2jSg6
	 mBHpJAqqpcz6uYdZBnDbVPD5orqdfa60YoFl7DjURhZ2Sc/+ybuCBfbzjv7/r9Z/9X
	 HvwP8JAcdOVRet6O88C6shE11svDtHthdVsQq3Z0GR3nArYHzlbb53jwNZ50cnkdIV
	 BpMdnySfZwYQVTVuEoylsb22rkBqpf50+kEnTQE7xYuzUGzNU/1SbPO50UB8w2lwlm
	 QzCuVmOcopm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDECAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900619357.18331.1242152623254335255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39cfc8eeab1be345091f7c7e05d3dde3cd0e7032af76b00988fe3427df8d0f7
Date: Sat, 27 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759006193
