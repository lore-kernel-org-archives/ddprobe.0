Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34DE30C378
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768626833; cv=none; b=UCnwGyABMkAw13eEoele3YQYw4aDJTQvRsjCvyQKrC7D0f/B5b9fFfET16EhUGEd6/crGPcM6POrNgSvGQrm0YcefzEsJSM03A9gt/bk+BniPjPZhT+E1V6VirrKss0qWLP6W9jsShBVTw2BO+gqBBzwHoBkO8E9eoi/zvx1ijk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768626833; c=relaxed/simple;
	bh=nWqFED4DbmGgMghmys1b2CJmOVvZIdgUBucL1P68Smg=;
	h=To:Subject:From:Message-Id:Date; b=apDrC7vJE1c6h7boQ3BAU+euPD8U808wYLNvwmSlN7wEKWSoy+lJolQhM1bfEbk+e5nPvOEqyrDdarPzKtFTE910ilmF+TvIx90l3m0KbOcSnPmsYZfwHH85uOoiX9WwRWdxiWAOqwaT+bIkegVjwDSHnm4kCgMdbmUTQj7UvjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg5WnN8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg5WnN8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768626833;
	bh=nWqFED4DbmGgMghmys1b2CJmOVvZIdgUBucL1P68Smg=;
	h=To:Subject:From:Date:From;
	b=cg5WnN8sRq0cNZX9IQpweS9sh97MzLFyXZDjBLEl0hIMEe85Tissx+a3H8ifKI02D
	 bWCDSgnpbBlsxl+p1227BpvQ0sxmECRhh8oMRXwhsltu0TtKAmwQrs6Xkf3tX20akM
	 LuKE/sq26HLTez397uUH1ixqoD/k01KRgyjPoyLgArT2LZQtJF1KHTFWq7o0UftFHJ
	 BlWQTmJWa816GYXLOr3y5aJWRxPlKbcv96AtxDFYfaZ9j9UP+adFIoOMCgJvHVgfu/
	 EIVFWDS8ZSReq0t2UllNdDySbyuai7w43MiKVUB5IRkclS3qki1AaSTFAouMkeVmnE
	 yuJKo7GEresJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABACD4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862683360.23925.5903114638850100607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fd74a3ba05769d90ecbe2806f04f45320b7b190bfe192e890b6e6c9a7728bf
Date: Sat, 17 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768626833
