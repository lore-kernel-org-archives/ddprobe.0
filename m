Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED183F6C21
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779882755; cv=none; b=lwUdAqkk6mBrH7lKfx4vS73PCYp53VPfu1kW+Qcx7Ttt43NFE6i9ucjQuF3Px1ZY/SNYTYGtl8jnW58qIc78H4iW5547oPb5k7zc37fvBZzQJfel6thsCJSkbqzxFU/s9YAo1r6+KoI3VM9LIi2VgqNvgiJaYEfGW+ssrXO15m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779882755; c=relaxed/simple;
	bh=TvkdAGM2rFV2NPiKvdh8Ky4Hsbh5oiueNwcT9GwmL+E=;
	h=To:Subject:From:Message-Id:Date; b=NJvjnKaSjlvFEXcEYnEc01T0Y20LQWz/fH1ln/+x9hrkNXdtNb/bjBAQ8zHItwMg+JnuhRFMDNNaNvNGkijcXS3ID2n887hdWKJ3vOAglKshovahoiveQUTOV7uKtGhWGRS4b+Wa2h4JrXzhgdPrIqF2RdJAaxsf4+v9PZ66RQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYrIrQil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYrIrQil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98AEC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779882753;
	bh=TvkdAGM2rFV2NPiKvdh8Ky4Hsbh5oiueNwcT9GwmL+E=;
	h=To:Subject:From:Date:From;
	b=uYrIrQilW+UZDl8OAziebXVDt1wWaitznngfEGklOCHqKmCMIqp84Tfxv2Ii1iE/T
	 usnLCexhmnn84j2hcxTEeMdEOkjW7Ij0/rsjgVMqw0zy+lQYJwUir7aY7aooHxO3tp
	 mNOzjrnEtovgUkT0CZvSlj9Tpf7wnw/nOvjDfgRK1dw1PHEjjHLRHeyLmFF2zrEjRU
	 /B+BOCDEsPXjgzBnLy+20pz62ZUs7cQBG+tmo2cwux9ViYuGMjgmlk0uFOvs1qJNtW
	 etSHtg08rqrsZqVWrOXYKGYw1GrXmQzgl52EHAYer4/hMv4cKVXNlvxIBchl+ihHnS
	 vOjp8ZD+fkAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BECCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988275368.6510.8656662747558264335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b790d35bd357c617dbf0305835ff50218c26a536ea9ad6dfcffd9397d8ae0b
Date: Wed, 27 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779882753
