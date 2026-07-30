Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0836536EA99
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785391835; cv=none; b=u34w1Xb0EeFKs0ztyatST6o+GVgjQOZxL+xsf77KaUaOLAlQYVdZzoUrg/AHxoZDORTo1LfPWWkvAawDY6TSGfrpYf9CVAWk/7pvzVMeFuzL2YTET/wzvbLEbtKjF7HP1pyowLY95nNHMEtWtE9O2rezNRPy2Tc8hcJ1ghO7loc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785391835; c=relaxed/simple;
	bh=zCcv8fSJau57+AsBPHZ29dPaAjhl2nixQVCWklgS/N8=;
	h=To:Subject:From:Message-Id:Date; b=PipyXY9KhkxoEEoGoj/jQkd0hF8hLJTE/atDvHpj3ztkZX/q50hw7czb/3ACK84AgQ6rQFtYVto00f8QXMxNRYy17EH+7HjrXRV2nkXjKV39tn8RBX83NkTxJiuyqZsNG0QTKCgR32UiwXVirtZByTg6wP8LyMT9XxuvvsfNCwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az0Fai+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az0Fai+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 521A5C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785391834;
	bh=zCcv8fSJau57+AsBPHZ29dPaAjhl2nixQVCWklgS/N8=;
	h=To:Subject:From:Date:From;
	b=Az0Fai+joIDbCifZe+xv8AfDYsWh/tSTRLfzSpfC5WVtVbKbUMb2K/P2j4SvSvOp3
	 +bMqGnm/9BkXYN7S8nafY4RcJlJ64TuMHxYX1WxX5IsB96KMZ6VeOm8KfYSo4vBmIT
	 c/4eGp2Qg+dbJSGb18fQD1FHbU3je01x2SRRAIW83y8e1N2Tc+VVrt956o3LlAHh5x
	 6k0M7i9w88IS+99LBewn1Kz/gk2MfhEMq6wmP2Of9ZGMsPJkIj1pzJh6NJaHMHOXJx
	 1yQeSYCQxf6xq07Z1oW+FpjuYCMFszjSLQTq/4aUi0QuL3tY329AAjGqIs+U/8GJzo
	 98S3vC9AMgotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2C84C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539183392.17698.5060016047371315550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7f587787d0c1c2c135b0c198beb7620a65bfcf5714d3f3d63f22d6e3df83ff
Date: Thu, 30 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785391833
