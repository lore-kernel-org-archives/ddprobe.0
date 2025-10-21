Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBCC27F4E7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761013194; cv=none; b=YwZfWUfP26OqusMqynOF6TElhXVAtJQqMoVTJ/0t/+1Y4i1+F9Z4St93dhKgjmW8FZ3v23HIR7yJS1xgwtY0GaSWME4/csmDmw6ZEMNJvSJtLXoXS2dUkIrR9TZYISlET8It0aYKi9sYd3MRGP8xjBRuuSIcMDNps27nWIUq0sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761013194; c=relaxed/simple;
	bh=yJ4lOG378yBMfT7dqBFKERMdqkiZljaFYWJwLHkHG9s=;
	h=To:Subject:From:Message-Id:Date; b=gbaOUdXPu7IpmzdfymgaFI28DA8zVmJoVRxiQATcVmuUC/XpuwklBy5+6pSnc2Qhp9fM125NA4jQJC+DMv0Wosbv3qbXB77VW/7eqyacZ7wA9kGM4QUHBjXLwVjCgvLPU5YEBpBTg21sAAylT2GndRDae903hWaXsPPi25wriuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii9dAaps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii9dAaps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6896C116B1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761013193;
	bh=yJ4lOG378yBMfT7dqBFKERMdqkiZljaFYWJwLHkHG9s=;
	h=To:Subject:From:Date:From;
	b=ii9dAapsycM0Jg6ypOQexfxdix2hgPOjbq9GfH3YRjVvCe2FpmomGPtoj9tbjhU9e
	 zNA7pH28Qo0nAyY/IQwVXy6QoOkDadndE27jesiYnz96lTR7w9d71bpocOMiiNvXbn
	 EExOcvK/RP2lLrk1gaDOIDqty/6zGG1kcGrdkI9woBQJB5WK7+ruFFugSH1rZTn4m8
	 Y63QaV7V6+OM6XW44rgy+gB3eKMzNotZW157+LRTGKgqE97Ci+XIWF63vrAaB2Uj2W
	 0E8ThvlihNdGKnj1dGgYW0ONP418Ueh4aro2zPS+zG+6PCbtsKBQhDM4qlwjXl2Mmf
	 6WGeNwA9g2i6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95711CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101319359.5571.612182664530015134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21141c96b79b3a4889901a83db5503a8fe4b86a322ae0cb0da4cc0e704d65084
Date: Tue, 21 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761013193
