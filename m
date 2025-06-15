Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4AE263F36
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750026594; cv=none; b=Q2WJtYG/OI14iWaj71mJrIDipw6ADpHuczbQe6bsCx4by74AUr4kVq8vO7fGD7iA2Xa31oXO3YZiAuMYzc1JxWkWjcwno+Yo68wjiaTtFg4HnAcnkyEEWexb+h4ezNB9ImvkbiVFkxvAo6kck7/flxJeS+wZhzghmrxkH+EYGpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750026594; c=relaxed/simple;
	bh=gYD0x8RWb9Fpv3hcJNzV70UgVQayeHTzdyCJjVBJPvE=;
	h=To:Subject:From:Message-Id:Date; b=PNowhi5NHSU/WbB/KRggbmpbMYXhUbd5NgQK219/zTYLlp1MGeXkRvxD0FwO1IWbevXEX4VS2ao3Z3yf9KTjs8swsTZ/39kRCIXcom4zbg+H4M7FRZGJFSqSEJbVQs+2GMAFniBKgRaSP27w+GnX+ryvSV6+MNEf7dmafXRr4xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFe9KuU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFe9KuU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750026593;
	bh=gYD0x8RWb9Fpv3hcJNzV70UgVQayeHTzdyCJjVBJPvE=;
	h=To:Subject:From:Date:From;
	b=fFe9KuU8BpH8Lioh3HcJr/DCIerMnu2E1+qR6o/Y1QQJWh2BZyDD7hrQ+mZMeUixx
	 zKLR7WH+fMwEut0UfXSZZQ+3YCfqwgS0G79kkpHPO41yTeT9UtQ4sSb+TGVmIgsIT2
	 WY9IcXR6+AMcMVrw1kvDMwm2OzmOP6/uGPjhb9u8dvzAc6l+UPDr47KZw/LSeUZJVX
	 lt4uWaq5n2rAiA8ss2gbc9vmRQvTvpWQDXE9YZOBEbmGkuRM+2PsCjz8Kz+UNepzdI
	 ar4WxvtjzHPkbih8rn8tLKonLnC2rhvjiz8TZjqlFbajExOdTl3snYkO/acPCHD62U
	 0KxU4sb0EzXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304AC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002659358.13845.2829652886597058627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280dc272812316a6e191ea73fb8384bd92b863b2c531303f35b51941a5021332
Date: Sun, 15 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750026593
