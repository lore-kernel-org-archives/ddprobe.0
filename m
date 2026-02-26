Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3A3803FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772076894; cv=none; b=hhclRSRmQUEPCOof1QufTZKc2TxH0IVMdpGkwkqNhA54R1+7TDixd08VqRU2VUBZi/VdpSjbIHXlhIhQJbTQWebNsbEPVTRvgtw8ZW0j5YRX7u3yFV/ZoD3CWQMCjSJaws2heyIdf6jX6vzJxcDaIPNw9hdJKir56GlnBAczuK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772076894; c=relaxed/simple;
	bh=eEMTnjVnjMyisn/F/ax67lksVZ4kyhBNWm6jIYFHuBQ=;
	h=To:Subject:From:Message-Id:Date; b=ULwPN6NyOsj3eKRjeSZgtLXCL8Me7aSCK8jn+uyNGeA8a/oKPIQY5T6rK9h+ONZpLcYDXnNT1z+/FxLyBT2Y5Mx3Yb9psXWhmnjDvM58YRDEB1ehY+TUEMe6ukh0Te2wgaSLccoMd1URXj8gL5LNPFP6n5UqtoqnSxNEXC9d1ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLEoY8Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLEoY8Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3250C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772076893;
	bh=eEMTnjVnjMyisn/F/ax67lksVZ4kyhBNWm6jIYFHuBQ=;
	h=To:Subject:From:Date:From;
	b=QLEoY8AfT7DsF1gmH/EQmm+Ol9QC3gE/3GSWou7viGiktJ3q3oZLjP06o58BYrgG4
	 MsDtJuOTBYAd0U5v0aig1yQgNgJjUV+VdqarpBSSX9u8B7PCGIySPVdx4dB5LDaKff
	 iBmgeJ8e0rDsMigMld1SMvIUf3mUO9VjXFZYXZnsds+tHHnBGJk5EloaR0jBDccmWm
	 1rP4qCcU8yPzhVPljWfa+nuQIK7LHHm9DEgHzDY2ntIsmhSXHB9xJNTCtwF/6CfxLc
	 KG7+dHB5IFjeiEfGpTAsgu9UQ4leUaB9WGaCNDPN6EX+REL3GbXsugqckB1pIbP6ZV
	 Bu4xuY3ScYs0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A201EFD460B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207689364.16771.12049543796109769355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bf1b2a3a32e855f5ab7a97826b46e7295a020736d62598339121a271f26555
Date: Thu, 26 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772076893
