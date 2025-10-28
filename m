Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3216623ABA7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761619794; cv=none; b=rNrMC0UAhJy2BMDkHvDmym1CAbC9Wj30dRNpVIi9j8yhrmUJSTX65VCigOpKASFRo7fRyKfpi6K6hNPqgQd6p7scdd95xOs2mtl5DzTI3fIIkSUxN0MGPGRo+uRN4cxSWF9oQ6tPobEhvugkCnL3VzaLjtZI7vQyktW781KDHZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761619794; c=relaxed/simple;
	bh=psfl1VHp8VYP4Hd3SgYmrNeDqY3aZ2pwPjfK939ctDI=;
	h=To:Subject:From:Message-Id:Date; b=rLKgvjIvQZqWzYyUIE55JBt3FSpDJSWn8y8lzb3zP+VUqzO8mmL+WrYOMfZTDx61i/Abp2GJYVS4tHH3cYlkCzpQACqYdtYLMlbmuwNPZ35nohNU1556o+NwJGkQRFE7ascNGkmNtdjmEOF1RbLgqVudEiRzCd1ApCFjx75WPTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rl5c0Aqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rl5c0Aqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761619793;
	bh=psfl1VHp8VYP4Hd3SgYmrNeDqY3aZ2pwPjfK939ctDI=;
	h=To:Subject:From:Date:From;
	b=rl5c0AqgyiFvTeNaVdpNSSlHxU7bfVm6zXJ0tyeCQWvAanbn9f4nW9MAW5hGjOFEe
	 V8RS9Ki1RnV1d72yL8jfk2uMsN9xbIroyQxBSmdC6WGhS+ojOY0HZk/L9jGagDENiM
	 xNNlck0LAx0fiA8iYWULo/QU8pGQ9z9cfE7DKvLM/akVbx3VyC6RSfFXFUYtUQeyHV
	 7rSJfqZpmDhNBim9EMMi7/xKT1RLR7csiAYmmUzWS1A+ors4wUuzT3k8pyXmmBpV+j
	 AZCWtVDDV2DOKE5QwszkIVjtiyuL0dO9R9tzmdtQBhVo19jmVozNHlyThhYusnkPqZ
	 WXDdBmhGhsSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96558CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161979357.16231.4818189275080823590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b0a4fe51f7c63af606c5b7f971dcbc39e634c45fe2b650709769c87ac025a7
Date: Tue, 28 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761619793
