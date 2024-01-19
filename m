Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E2B53E03
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705683496; cv=none; b=RqOmlQXHLG5H7GCeAwzDW39wbS3MNYz7l9dzNwD0tJHcOgyu7aCD9G/h9sm0RZ7eR4k8b2Huvfp4VMdT4Hk5SnFMI1s3k3ZvsURBLlIEfb0zD29eE27k0e0F8scS4l8rubNeLBOV8k0FsEzpnQS1V7VwEt2e3uURAoh7qkYz9Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705683496; c=relaxed/simple;
	bh=4u02fq2kPpXbXpKM/pzsjUIGACcw9nIXcyN4UVaBymw=;
	h=To:Subject:From:Message-Id:Date; b=EDDjxT+p/+uYQIyMfhy9AdPH0JW4NLQR+7ZEx0ehr7eMOjjthp/uUuwvfHW9vHs4y3ewRNz3LDKwCbwgztmAeT5g7QxCkly9rrQTpQORlWsDZ206H7gJZTyXazalndfYvRT7NhRvemgNItqzXxRz9XvtmiXILL766Zx5NQ34yBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElAGUsJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElAGUsJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768DAC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705683496;
	bh=4u02fq2kPpXbXpKM/pzsjUIGACcw9nIXcyN4UVaBymw=;
	h=To:Subject:From:Date:From;
	b=ElAGUsJDxP9ozAxdbYjVVKPjvRd9w49B7HlJ5HgZt+Tc3sxKRl0/34L7L3vwVdz//
	 c+DLzmMBYjh5WTJ86O8aZFF9RaOZu+brFVYTW4czrfED/DQk6TafJK4LSGoH6FayBn
	 aUt3HGv3OkUraOV6Eobc+QRdzQ6LjcV1dSAmj9ckjxZiQ5WvlP1OTthLwYemwmgiNC
	 vD00jz/R7ZBU7y17sIeIuL/jtZcGybd0I+mycnvDH3gGqnNo0ZvcvEpzQpVnbTZSls
	 RVkbB1KwGxu3JTc71MZohxmZBLAC4Jx9uK/MPyQtq7iuOMnlTsDoTksBVH3WrRBja+
	 s8Wzsg4W4uG2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD85C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170568349637.5777.1709130679767277860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b80ee54f0a28c83c20d002c0efdebdcb06fee3ad306c7f6ec1db0241946a912
Date: Fri, 19 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705683496
