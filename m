Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED71C696
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721838354; cv=none; b=M3PaMajwekUaLsKHxHcNdHdectCRBSzUwEIy9rNOZfnjOYqbyZttbBZdOY+ldQeXKlK8B7sx+dQMCqTD+gGjBDsR6VNRDoFCpuzI3vwZXWBhlqScaVXeICe1pPEkiedQpB+pvbv6EJNI+WRx367dQ2WsvNVE5g8Dr8Thq845c6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721838354; c=relaxed/simple;
	bh=vkAvcDbPFBrcwrAHIQCITo8Ve7lVazW/sry0AH+/7YM=;
	h=To:Subject:From:Message-Id:Date; b=RwWtZyb3mUY6MP21pNmAXBHnoZCfVf0uWKOGB7aXbb3EOwtEiW+wesz2BTa3L4ivndHWTGczy0HpS5gw9ex2z4eYwTvu9+4yh2LN8F06FFSePngVxzBE/nqIqKSlV1pAEvZ6AmhBPSvLeQrYQwrbhfnl4oYRCpmLkzrZfth4TNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFxn16Dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFxn16Dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC86CC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721838353;
	bh=vkAvcDbPFBrcwrAHIQCITo8Ve7lVazW/sry0AH+/7YM=;
	h=To:Subject:From:Date:From;
	b=MFxn16Dhno8enb7ihrxPVd1mA5Fb6Iei+vIEWqg33b4ZenF83F+mODJh0dYHp2lCl
	 vl9o7ejpUATYOW+xV8M25EmN4n2vXu/0v4yxyjWRheofETers5AGo6lDVT25XCQrpT
	 aLU5oQy4VvoOxZbpoUnjhYcEjEXxWbsEgXnYBuIyLQMC2aM1Usmyrgr0TV3ZQEBiW/
	 vYK4m3DuJCmLDCaVkya+W8m1IhOWmsflZKc4ePC+W8yKLX+GW5ziCwFMz6kmOzTBHm
	 Irj/lUIFxS0nwSpMSi9HZMWalwSjHQgvZ9ZUfmujJG3ISLpEN61DBg1V1yGh2OEnZd
	 8CNZJuAzYn9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB6C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172183835359.16153.14327278649370730088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f65745fae89a1fe2c0c4a1b7224dedfd82ba761f872548c2d4572338a46c6d
Date: Wed, 24 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721838353
