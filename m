Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EEB3A6405
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769083434; cv=none; b=QraDIILdOYvUCHfqc0gOr0CDHHoA/P+aNihoInuyN9MkL+T/i81ORs3Wi1Wbl4gX2aP041dWG6hT+hUBXnsY9Xd9WxOcxvSYToNnfQN3RlRvwYKhLHgaFaVqLlaM3HKorc2dGXTS72fpWvAkkzYyJ20jDz4dPevIznb97ZsfBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769083434; c=relaxed/simple;
	bh=dbwYSTCl8uh71HG8tpgj38rxBSjnk6axffLU+P6V+IM=;
	h=To:Subject:From:Message-Id:Date; b=YTD+kZ3VFv2dOBM270r4T+xJ7Gq8mkiratNooGT00xyps19xD5NjF2FAMiwCECtq4vgj6RQtojzOKZRLn7H8eyI33rGCwSMAI6GaHnUJ1RrlLyz8yF4z6tIN6twTJ0vbVhRGBWi0LZjlYZxmo1wKFbRztfs8vgDqvYMiEfsOPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQpe+h75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQpe+h75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC9DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769083433;
	bh=dbwYSTCl8uh71HG8tpgj38rxBSjnk6axffLU+P6V+IM=;
	h=To:Subject:From:Date:From;
	b=BQpe+h75Or0boZtoSTku7OgyI4SuU/YkE/K9OXF9EMvxWen10QyC3wjeg5yiaGRGy
	 28Iy5HGe7j2kEA5PoLa9EHtgvkRjGzOtgwsowTqwjvnoqEdD2daMUJd6SaqsDHgEWF
	 fHxSU26l6qEcLFzEt7vO/MsqKwuvxA+26jsbdr5dGK8pbTU3+TtdAILYM3KEfbuUrP
	 snJa98bu0lcb/iFpQok3msf9c5/i8agpboHUAjOIANSL9ja83IHgH6XD+QuXLB8Wxg
	 F0JIuxOvTOQ7VPNZASj/aeRVmCj3kPGIUJA/gg+7Mrdqh33aRNyfb5eQY+3N8BhlsT
	 +tmuuASEFSPeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503EC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908343358.24762.1765265355141703025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980aed185addb03cd9dea5386c79146c90d6884b5dbb954a4e3b3d6073dca391
Date: Thu, 22 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769083433
