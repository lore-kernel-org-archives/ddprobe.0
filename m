Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2290848B39F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769001834; cv=none; b=X4NHK3MvY6G/9xHeFNoERrITxUp1o1qMMvlwSZBYbKn8STQiXVo0bf6cojMejBtIDTv+Di3qO61D7sV/x1EspCLCZZm2zmBaWL1njALeU26VYWBAFhBHVkwlL+zSQYo+lxj42jUFYyGcD328CCFsrySsBvuxaAKrjQseMrlEflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769001834; c=relaxed/simple;
	bh=dI1GagMxsut34sOnj7grawUZdEZbp8ncp3O/j3Jdd2M=;
	h=To:Subject:From:Message-Id:Date; b=Nn3usuTurSMT6XDIxeU0O582o3sslJ/riCgeBaz6wofj6X9D+YSILVeiXk5qG78f/9ulFzIo5kl0icNelHXmfMTQz4d3pzZutZ/xt54tdKrzusuOyUIE/+5Drt3JeY6XDJG0T1Pkee9TNFlGOf6Nsj7vJgD1tiobPsGzp4D+pzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwPSZSLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwPSZSLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B1C19421
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769001833;
	bh=dI1GagMxsut34sOnj7grawUZdEZbp8ncp3O/j3Jdd2M=;
	h=To:Subject:From:Date:From;
	b=QwPSZSLZwK6yMPGPo+5AbL7xewxt/exmHoonHuI1B7EFxiR2P2ftVrcR+xg/gIloH
	 AXHa10KPft5DbCpiyESJIiqKSxvEwpXNZ1F6MLd1w9bP6XzGe5EWuNcXJrTvYX/9QW
	 wcgXOaHo/kCS2aIckpa4KRyUqnCi46X2ZcJzSQSnzqG7W4vRemtYvFyAyF9qbBHtoT
	 iG1D8dxHXLZ6xMD/2uTSXVsz3sF8KJOkjWW+8Oj0AySFfadQwnak8II1UFkagKNVZB
	 BtA+MzJ4X9kxDU4Axs0FcnNpMQRuACMe8wWqhOLx7S6VtvP4cLBaKKEq9hudBWBaJO
	 +ca4np0uYp/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378FC4452E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900183359.11400.14521756366009383840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c775aacd4ee77a4f377a7e0375c4c0445d87557aa6fdb8676f8f8e557eb4e6
Date: Wed, 21 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769001833
