Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EAA279DC2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769901834; cv=none; b=RsPiU4PgdCUJ9VLVFG3v9Aj9F+RespAub/Ae8Z1nu+0/6ycwbXukEfmkvPTGKoT7HMc/reYspN1gMP8Gh8nupNerWNKV4y4WxzrD7ZnNezLm0bkDNJgdBC5RZcmje7I49L52aXdTNxBJiqY/q2k8vC+JF1PnjYPHXJIPavZae+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769901834; c=relaxed/simple;
	bh=DtNRzEpAZTbPQLVXgbYh1wGXklnkxywdUpx5jxps57g=;
	h=To:Subject:From:Message-Id:Date; b=uKgf5Qv4FZ1VdV3VNzDeqmSCKi9uV2hwpxnoRLxKVxkL4z3wYrlWpAytYaHYqObt35jo1Ph2Ere/N9m2pJeo7yv0B/32DH0dKHoKpNDIBz+M3YaZPtbienII5NRgCVNtbpRkmgWmLkZHrY4YCQC+L38A9UmCSlYzqqbSoqtEC98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBYkDnrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBYkDnrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769901833;
	bh=DtNRzEpAZTbPQLVXgbYh1wGXklnkxywdUpx5jxps57g=;
	h=To:Subject:From:Date:From;
	b=mBYkDnrw6a1v87Dxtnfq3lkR+mWKSYEgVAgMZamtNQocvVW9ocdyq5hrkiujMGW2F
	 gmWHjhKtXzP07gERGqfVtxpdEs/EOQTQUwwE0chR03ce9CxnG0khUGx7Y8L6s0FOCv
	 y62kYNj/SgzKtHKJR71Lf4+kE7GbLhxHgzS8JIZCOl2LkjHUQdBghlzS7RiaEzFeAl
	 6F676afzfH61K4Xu9LH4St3XnKYvFxWu1jh+HxZjl8k69uuquTv2ZOv7Ua3sw6t2fV
	 3BcCcSIGCH57mWnFcxN2aNrO489BG2ZIy7go7kIw//DTVB6gppkwm4gzclyYyCcd7O
	 Lo+p2BagyXD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A6E7C6F9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990183357.12761.2442116509557473857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661991e25340d6f8a9a42b5a108549767ea48b3882e623987b80553c61d9e96f
Date: Sat, 31 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769901833
