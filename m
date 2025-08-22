Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3561A38F9
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755870594; cv=none; b=XCggIqbxv56rTcnK+PIx4gD3zaFQuyvIdEA920hC8YqAPRKwfOWMWBn5KRO+ILtaxREAHkG7MF59yYGS9n4g8bR7duX9McCn/As5FLN5Y7l5zQdz6syGiTQ5jKZx0qxj5J1dtWG+LaAT3kA9l+uf0FlVej9Q1hhdZUcmUThvFPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755870594; c=relaxed/simple;
	bh=a7EICVIunugkoIXgrzb1FhGHlk7ZJ2BnVSSBt6f+fcE=;
	h=To:Subject:From:Message-Id:Date; b=a2b1/QCtWfSR/MBOe8bsRdC2aBzy26jQE9V0fVaLzRmavJhnUMvmXQRmu2rbs2qm2zP4Ka7n5HMGb9vWuOzXKcAMNeZKCyZJf840Hzlyhj5DiUcrbgwy/SPxRPo7BHAoGwPzNa7dUnAB6q5BcAXA5v3+zZSEloBs7LktYPyT7S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWQ4Sn78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWQ4Sn78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E483C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755870593;
	bh=a7EICVIunugkoIXgrzb1FhGHlk7ZJ2BnVSSBt6f+fcE=;
	h=To:Subject:From:Date:From;
	b=AWQ4Sn78T2srzgwHJJkOrrrVCHDJFSC/0hSJ1c7Y2CLAgTz1pFWNz4nGGlhRfoYVb
	 jfMuBjJLDRrnU+e+VoUJOSUgPJcBd46I8CYIfse8J8pWb6Rl2RJWBYFsnRxyLOQ+D0
	 g1agv6sWugaq4jXhIpKxLfbpTHMA+RN8cV53NEONqVVgX7J8bMic6HbsjCBRWWOX9/
	 SW7PlrTTJgkba/GUQfpiXDy40Cc3+X8hGSvry4dXT5mJ8y8teL4f24yZbjTNymBEcp
	 DzCFeH/g6nkgs55GuE6HjmKhvOmVF6Vf654UARY2KgvxS46XsNVaZa9aJhbx9kZvmQ
	 CJznlR4pvHmDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA81CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587059357.18131.1071127155537579001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437db748284abcb4e382e62240ebe76ed1fc23afbc49aa3954f9da047a356302
Date: Fri, 22 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755870593
