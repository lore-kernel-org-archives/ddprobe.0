Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42B423A96
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768908834; cv=none; b=cXiMin04uu6e2NuQs0ZbXzGhQlViMHaRktd0sFv1Ou73J+ctiRqnmEU035NF282lBKfyUM50QSjCycmh6CaDUg/yPNb8GtrUDEHZUHccyI0smMBnnWUulNmOwyEvFL+zKlW8lxo0PZyB1gm5AGqlIDvNr/VqNyfRhD07E+R8R2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768908834; c=relaxed/simple;
	bh=VnvVSeB6hnnLqZgdmiCZCluLDeYwSXqkUuw0vtHYw8c=;
	h=To:Subject:From:Message-Id:Date; b=NqUoMsiNv7nX+Vag3JSe/oO2yIrdsTfglnf4iNOwXZV78FJserBqsOxturRAifGW6UCHsygRDA/FBUibjOPRFkYBczKTa0ZqOtuTueIUc/TYJ+GMgwTcdvyp8Nz3ZAAoME3alUSnyuf/9FLnc3b2D3tUj9HTvi8cR0jOYCRpBq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXSgT2Zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXSgT2Zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1EC19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768908833;
	bh=VnvVSeB6hnnLqZgdmiCZCluLDeYwSXqkUuw0vtHYw8c=;
	h=To:Subject:From:Date:From;
	b=kXSgT2ZnW8o14j1MSWSqB7OIcqyelhWC64aG6LjI3z3cdVdqVheeURsfs6MNzPyhG
	 MIBMRxjOOhEEOdDLYC2NIHsiDHpX7ymk+RpKr1nSmzZAZdt01YJs+vGRiPRtVemhD4
	 pIc/V990t69fzSwTVCquMXN5Aj4eRz/W6wqsA4FsVTP+Lqu9YhP58o48C+8SELkUXk
	 tacwt13srUSUZtxdC/hLvyzqIcf8y6fvGMJiJ5zhAjPhv7IHUd/P96I6mdqB+ij0Ot
	 lzuq+R3FmiquZoEWciEEwkPbApYWwmOaUcAQ8Wr9Pqrkwu5xQl+oQfdkMCTRUvFeRe
	 /t3UdTYzuLVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8ED2ED13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890883359.7168.2450290055663209351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2dd7b7538d64bfccd5becd7c9509134f7b7591693ae94f1a28cd4136ce548b
Date: Tue, 20 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768908833
