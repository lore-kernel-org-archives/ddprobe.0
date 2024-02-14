Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F470604AB
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707935297; cv=none; b=aBv2BMDRJIor61fKPAcRu7vjJi9WiLJuPaveo8ZmfxKqOIgyCJ2QKSOgDkmTESXv4IZY2z1CH/puVWxbYrm2n1q6l8mhh2WSl6aIX0wN1kBVeS2LM7x9DKGvYwSBIkTLc+PUIQINNXE8ARlKm4huCE+DkU2eVHbaU+Vryw0NgP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707935297; c=relaxed/simple;
	bh=h1e4v5PIEi6YyE5pPZikBTF6Ahc98IWaPmYjsnqQt00=;
	h=To:Subject:From:Message-Id:Date; b=l4RRyOi4zJ0xKlNkwYllqSvhWNzdCModlDUjOU/KcyClg7QHrThwQs/X0/B/wMRSyacpbQzmj77A9iA0M9VqJa20UeU5zv3V7vlK/mDlRYGQilf63rQSV6M8n1Q1TKW2v1P9xm9TZCDJ7LM3lrJxk9vYCjgmn3c8HC1gXsZZ2Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JloXVy/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JloXVy/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D52DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707935296;
	bh=h1e4v5PIEi6YyE5pPZikBTF6Ahc98IWaPmYjsnqQt00=;
	h=To:Subject:From:Date:From;
	b=JloXVy/WQVxasAFAHTqlTGiIHx279+wI0jrcCQjI/4RjAb2d+pw1jOmNaGaYRVaX/
	 4g2LCfd93KYYQOkGvNA2BGGolgUwI4UD7TaoXk1Ze6bI0fTF0hgaLVmrAi62c45pfw
	 NHbQPt5OGu+3Hc44KhF+UDcLxWOhBmbVA3QlaPN5Mri5wkh9ANPQLLj5lMLVCVmKJq
	 925E0sYM0O2vYJ/sQV5+4kJEK2UkVkFWDts1p+cpusCON4R44/sMAk0CYSfafdkdn8
	 w/5EPsB0+IWcT2nWF3GXo9opVEXRgyWuibxC5/VbEsqtmze/ACKg24pfmSpbN43wBP
	 7ITQfUdgU4iKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 727DBC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793529642.5610.15238197520238989762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783700e2622d7939de8b00aa47fbe76d6a678e141b5a66d1ab8cad6a2d07c9f0
Date: Wed, 14 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707935296
