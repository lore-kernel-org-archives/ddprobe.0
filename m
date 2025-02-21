Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB635979
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740121734; cv=none; b=JHdCuVg27UlJLuP3iSosBTlkIHz62qabDpNap1Qwz8j5s2sKV0bgRr+Yo/YGsJCSp+9/Tx3j8j66NqCenwAqpWvUD6fLjcHdt8HdFf6HsRiL3F75TNYmZihFXjz4IUgKtBbmsMxxrefiua/OJusQokVs9BhtadpZgi5UchHjF6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740121734; c=relaxed/simple;
	bh=0nhfTWx3m6k7HP+oYxXZG3GgfE8ms2jsnevRJAsFv8I=;
	h=To:Subject:From:Message-Id:Date; b=e7Drj0hIlEFWs1budYFHPSWyWqay+kzi35oZygQsXe5/VPyCUltGlcz4ZHLDKa90PebLBNWioXdSDQhD9/utJf19Dr8yj1MYKiUUwOG5zQVXJc2mPPFOsoas4DSlACfUXZN3NtsYoPcZwDVgbcGfQ1N2O2mQjy3FiVJHVpDBWKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbr4DRGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbr4DRGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A0FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740121733;
	bh=0nhfTWx3m6k7HP+oYxXZG3GgfE8ms2jsnevRJAsFv8I=;
	h=To:Subject:From:Date:From;
	b=cbr4DRGU7FhjHT5gDG4B5wWdnpxvx/pcU3JTMDCVMl9jrooHZUX3dB9oiqI8Js0hb
	 8PfgiZ6xGINpTF0bOhwEsgpH9u7+S9P8rbVsfykKh3FyspGauomeQlZMFclRx2jxBl
	 cRp0jACBdMyPp5PHsQ7+e7roL0oH9VuYBRAJ40GGsH+sBD3fWxCA/zvglqkInwE3mR
	 U5b0zqmk8UebQPl8bCHAdqAX/17zj8gA24+Ukdd6FRdOt3ArS2vaxKDQZyTjPjh0VH
	 lYrj7lXXxtvDNX10/KgrCPFKjLlIHqkaaHNbCLlNYtDayRyh1dBbyoD9y//l9czLL7
	 JhL68F7h66TEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C3C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012173360.20087.4156404735316768600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5adc933d937fec83237b2607eccd0c54cc65ecd35024a0fd4d14357e96543d51
Date: Fri, 21 Feb 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740121733
