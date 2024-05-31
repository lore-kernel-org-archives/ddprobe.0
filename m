Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5548178C80
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717123463; cv=none; b=N1YJrNijtqVV488NqbP+aMkCs1LBOwhTQETYVAdileVjW+PgSa+fkEQZIdvhQe6wHhtlPP8fTwMH6+Q69C/EIlfDVoiAd9wT0910FX6x16rVG97s4DNN51UEQ9jNozM6VZtdNT2hpjO9uqekTeA72xTheAanQrdjPzalTZrsiFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717123463; c=relaxed/simple;
	bh=TZ7HC0D8bexl+bdBl/YB8A9VKxlYqm/YkREL1CofnsY=;
	h=To:Subject:From:Message-Id:Date; b=NhjImbBwH/b9fL9CQpatPUsWamTYgBUO/hoz5d5Qva2GlXlZSTXHBRq0OdeQSLLLtmpppbFfw12zx3Tc5aSz072l7rpZCI5mCYdRWt3gFYCC4LYhAu75nNsAHzvEzIdvA0ZnDs8SF3d63j878IFuB/57V1gVzmaKrjXnXtYfO+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM5xJ9gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM5xJ9gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B32C4AF08
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717123462;
	bh=TZ7HC0D8bexl+bdBl/YB8A9VKxlYqm/YkREL1CofnsY=;
	h=To:Subject:From:Date:From;
	b=JM5xJ9gii9Djm0FPC+PApu7gISy5SZEFUiLdcjAy3tZhNVSN/pt4IEKSy5oevxkqD
	 x7RLBohHG94ntvYlfQuv+QXZ+TcMowTQcA8h/BysefaE4/N3vAtZ2s5AbmDwaXg51W
	 ERxQsD8isywD4DS1kUn2W521uKylcoe0QiPER5CIfi3F1RKJLmOz8vwj8PONoGMcyv
	 Mu/D+ubvYgPY0tNSu3/0G24umPtEPLtWm+ll5V+UWq8whziWn0lWNDfg+AvI3sgpYN
	 pk6kthjpp0KNaEEBIvyyLr/E/cWhQdOb/ZM4Fd2A+aX5ZdSCc7CmVaTfqAkA9LXdV3
	 D2LLecGPtrj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2778C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712346276.13105.12520643801438831610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71dbafe497db6b597a50c41bf30017942a4881e6944cd0f55930b3ec2446fe9
Date: Fri, 31 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717123462
