Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35122094
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734060354; cv=none; b=C4l2pP23rHd70Aj9hZHs1YNojzkLjG0F+ZyecvY95ATCxE5M/qatdQeA8ueWSaJtR+uCBOVfuEoWYjLCaUsUq//wGeVvAuluQ4J2LvNDZamB2Irzdn0knc4xEZRjmxB/v8F+xNzrUatWDW7NZT0QA0xE5Y2VGvEbQMb9bziQSUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734060354; c=relaxed/simple;
	bh=us7sg8T+ioPubIMawi0tOx4RD9CJZ/2sj/EvzgZhSqM=;
	h=To:Subject:From:Message-Id:Date; b=VX76KVMbNuiorf5aWCAoPkQJ2CFCKv12SXCXnEiU6su0gW2McvBffj8ujv3vhKajVJ9xU+NhcPJ39x/UUu8TWi9/VrZAnnf4Jdr0x34r6W3sgUDsu+lcaB1luAJ8CMh9/2OIBpulguDpX/jox4Sh0EkyjRgPtmoxjfwY/vZfYlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp/DJL3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp/DJL3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE409C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734060353;
	bh=us7sg8T+ioPubIMawi0tOx4RD9CJZ/2sj/EvzgZhSqM=;
	h=To:Subject:From:Date:From;
	b=Rp/DJL3IdtVgJGKDSS7sfB064jQxRvzQr8uydDlrA4Wn/DnRuhv8TiCm7w6whHc6+
	 jrjChn+ZVD3lsx9MA1OHR6/Es7KtciTWczD2Mix/pG5zb/KdC2CYgxxdLO36VwqquF
	 JfIkgKSQUDEwfh1rhKORjuFOoYaL9ecT+5p+lNni3MRgRy27LAGm23RIuX9CMMS8+s
	 AZApNP33V8Dse0TE5ZfhJ8uWi8ZUlHCAdsOjl/F6F7pAPZ+q3Q7Sjw+2pMTq4GJMTK
	 npe7KtkqWidtqYy4QUcwoEeV6Est82Ty9WWajvNsaEPKO/CdQGkxuLkQ8481cSMn+8
	 8K2h6JWY21HJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A851BE7716A
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406035365.10415.9234460119735881191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2deac3d2dc5a432d0358782d9c120b3cffa74726cfbcdaeb2448dc39694dde92
Date: Fri, 13 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734060353
