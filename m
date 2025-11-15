Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACBE10FD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763238654; cv=none; b=Ol4Nf2IGtm8pcdNbelnfEMun1CKegSrliKZ4dD3ZwhAXtioAiWUhsw178Pf2ZIyD6OXEJgSK+gWqLz9r9DH+1WmBGbxyDChSwaNqB3x/zc4Npg5vaiap4bt5FVoeyGtckfXVZzITJvbILiuDSjKceJ6/atgxBu7l87n9GitelRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763238654; c=relaxed/simple;
	bh=dLpf12YUUZF06xkN1X9GoNW6tIv1z671eTL4TBgP7bU=;
	h=To:Subject:From:Message-Id:Date; b=b7oWm2pU834WhDLTCy7x3xHAXJrkjrzVbOuO8y+BTe4gmL4pNHuDvSh0xx7/dBSSNoRJL3qPXNwdY1ieStNigZpa3F81h1vL22+aL8iwnPmq6tpDvJaU3ix14WjfeL4MT9UGE+Oidni+z6ShzSDRn1ZIO4kAdMfhSj4kVXO0zHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF+2yZZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF+2yZZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763238653;
	bh=dLpf12YUUZF06xkN1X9GoNW6tIv1z671eTL4TBgP7bU=;
	h=To:Subject:From:Date:From;
	b=nF+2yZZp7vig0HlEsn52omL7EH917I0MNz2W7bUW+1dnq2wo6wrQN0KukJ4YarwaV
	 GPAi4tsT+WvSw0srBACeWq9SwuegTT2CnrEOu3QwSp8vi9KkEGhL1xZGv7U81BLH2L
	 RSpdHRgQ1jkI/j56Wm12F2tq+jf+4HpJiMX3XPLls510tJD+EhRVtjJPZkEvW8K/8+
	 hXGSLvwI4Vd8IQtspaIx9E7ovDT/WMixoV4lmxV5Mtbd7K8QJigMSN3ETFE7CcjFgU
	 GJ6NnLyL0xiMGVYHgo83JFXntS9YevzRWclssGuT/H5VTq77Uub5ulmYpnkc8wGuQo
	 8Fs4eFMg//xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96425CEB2D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323865358.7090.17797553554715349170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd6beab31cccd7e68073675cd812aabfbfd48a10d64d2d35b11f57e9ea304e3
Date: Sat, 15 Nov 2025 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763238653
