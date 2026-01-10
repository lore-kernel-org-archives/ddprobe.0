Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1A113957E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768016634; cv=none; b=UHhElWDvvB8jBtcpb7VaK9kGY59Lt7ASZFuSZ4z6og7WobyrKdWfMuwFLVYHVEKp/3S0JC/ncE8IfUQ6Q8zP+Eq/rDUaHG0jUpVQF8Om4w+v6YPF9nz9uBpaLxRUW8/QMDpsyKoGQQDQTbPOAVu4+UJeyRxxaq7doX6D3rOeTdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768016634; c=relaxed/simple;
	bh=lm+PRQKf3ozAIvFKCIUhaIXTdh8nSDP8pAovMiUpEWM=;
	h=To:Subject:From:Message-Id:Date; b=ur0GoNwsAubfhyf7sfGGSZP/b2CkXDjXsCKNUvdh/1uS3xUiDgCo9yQEIo+hK+Rsd9JHViECZoUwko9EDkkWJDtUSHtz1B4JZIVAeryOX7n/0ZWwDQva37T3/IvHizNBmf2dQ9k+0c4wwMoVu6/QSem8A28YFeDbpkCMm9OVi68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEW8r7qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEW8r7qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C70C116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768016633;
	bh=lm+PRQKf3ozAIvFKCIUhaIXTdh8nSDP8pAovMiUpEWM=;
	h=To:Subject:From:Date:From;
	b=oEW8r7qgqTOlmys7UNrOUjJLubV+35LqVXAbgLv4K2ik7aWLg/ElFOIctrduuGZJv
	 dtgpU6L8FVAffhFjQQnGo7wv62liD1kuTmQ+USajg/k2g/kSGzuxlm8M+STgkZ9BQw
	 SOp1u2uB8wCx5gE8zLE9Sq7RTSf9E8c9rGthOpOmHm7dw50z6QTaUDZP4Z0+Grgr39
	 /MzjVBrW7L6n58Ju4uVcFP2TdX5t0k2EnxjEyTw+ISWD6CryC7VrjCC34miF9Rcogd
	 O7OGOjsU6+WLruZskbVRikcinAUZLEQOH7ay948kW3M6ifKCV3o+I2mas7tXBcUCy1
	 NGlP6whvLbOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C1D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801663357.16773.5784022518477571080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7f40d86c22332d631897b14440ff1ea7cac681a3bcd0321b0d8a990ce77b9f
Date: Sat, 10 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768016633
