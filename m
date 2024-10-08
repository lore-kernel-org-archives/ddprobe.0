Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41983179954
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728425154; cv=none; b=OiP579TD3/mSGOF9UTaPjfaUKYj4F8PTMH2pQ37ha8A4jhKGJA0IpMRjJiqI+Zdk0FQ06OXMyJ3hKlHfPQI07qZB55OF2Vn5mfjUpzuEKYssx7Cjuv7Jdn25X0/bVpse2AHhl3Da9pv/vrIAUqTFUdqAU+zQhw5t1Oi0V5sTR8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728425154; c=relaxed/simple;
	bh=VBQPQVBftgY3Tw6ZqdSsyIBExPq3sQWG8IsXgnXJABE=;
	h=To:Subject:From:Message-Id:Date; b=gfHgLNLrb2PP8BVQjScsGi8MQOjnS9IY894lcUUsx8XRKPNZmGpXR5BPzROZ/TsHH1p9ZujIcK4tqAXlaxobpJLGCoPqefnMyDO/4LxkvRURTu5Pa0doFT+/fETcpyJuEpLzuvX5jrCNAVm1WCYnZQsVybHBKKb/XaTuvBC/CaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGVAiPPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGVAiPPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F5C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728425153;
	bh=VBQPQVBftgY3Tw6ZqdSsyIBExPq3sQWG8IsXgnXJABE=;
	h=To:Subject:From:Date:From;
	b=PGVAiPPecj5Y4/MSG2vufwlHnNsrPPaDRaFaFVDk5EcJwuumEcVgVUZpzbMKbjqe2
	 Z/DMA+lrm8q79kucgxTmdg0T7RF5GZ6VMxly4e4bdlKGrZaGYerXpkqi0xvdzWbZpx
	 gELf5+ueR4l6DEFyoCtT7My48Ni8aCm6I+Na94D7RT5M6e7tfPRCxQuNRQtgNvpUea
	 CTxx9VFFzpKjJ7KFgZUHGDOo6xJDyJ0JVpK9+L9MXBTMjvrCiZt7XBN1SNcfdOr2y9
	 uEaWdeMtzYVbQueZomn48jggcf3iKzcZ0BMkpAjnL6oo/H6N931nZ2Ma4Mvr3ZG0Ke
	 6TZSsc6gezNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D36CF0428
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842515361.14989.11691073183683247383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ec3fd00bd0b61e591f16756999d0377530848856354127504421ec6d139664
Date: Tue, 08 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728425153
