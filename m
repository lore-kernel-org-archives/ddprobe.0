Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8D71C27
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759873794; cv=none; b=QUx8vR2xh6o4wEJhd0aD7OyU9L3Kvq4UCSvHifU6DQdHN+Z16svB8WKO0h8+fOzBgnIc+wIgfGCtp/3XhV7hlqc4+cuIw/9ii0WX497P238PUiAAUlFelFRuY6l3YQavbwiogJ28I/CfREJryj5sfIAJznjp764Wn2JlevO/INU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759873794; c=relaxed/simple;
	bh=EGB9OEUaCEMkcZBp+5cFCkZqC2CjK7ty95Ox53WLXv8=;
	h=To:Subject:From:Message-Id:Date; b=oeGshORFg/EblAX9fp9KbHpwRAOfFgLIUFVSdlkMI7YavmRgbMzw/2BRid2BjDWxA8BgsrGVFAN25mzWR5yfMPyBZcjf7xrxhdFnRG/nv7vEe1U7uKq5lAIKZexNKzBsb89zKaOaHoeGE9mMn1c9F3lmb7SFfVSMS/fxMF4emiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWXAWs+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWXAWs+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F62C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759873793;
	bh=EGB9OEUaCEMkcZBp+5cFCkZqC2CjK7ty95Ox53WLXv8=;
	h=To:Subject:From:Date:From;
	b=lWXAWs+lKtTruZVDRoC3nxJAUO/3Yha3m9/5wDP58pPgQyzXHuNJnGoyyRL7Zf/CI
	 1scCfZc/KjmHEMKycZckprehDHQd6duE6yP4fwKVFQjEMcaD7uc0yn86JEcP1EoPne
	 CbXy/gBsNS7eRzBXdHqcCiywUn/NMFWNr7O5coOlrsBx4xbi2VmWkYLSOqToEJZU7o
	 jeL3cg46HJ1YAVj4BLkUecODZX8+CUXSm4w8wNCsgeDTbPatriHew7Ilpc3jPh2RfZ
	 C7ghZdc3voDIeNZJQt/Ux5oVeuuanBJLtKG40ceYIzjLxY+8BRT/Lz2pif1HZMa8U6
	 Of/DNX/bccCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987379358.5875.13062690650838501058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218638e643908ba215f3e5350b08da755b36d61b7a56dfcf0938287440a77806
Date: Tue, 07 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759873793
