Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E258F40
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753063795; cv=none; b=Xr3wwB4HTK1g64lMobeu/+vL+KYjHZv/F7knux7u1AtOF7iqXmhsbYyFL/WyIikbctrA8oZs4QUehR2efnXjwIBLPYVbgHEmoTzj/r/e6/gHSdUlABuQhuwk9clsMVeX4f2tRbs+w6Jf5peVuZIEwfv2kLDgOmizhhX8tGbxFFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753063795; c=relaxed/simple;
	bh=/rhaFFbgnBtiEc7LCCVeMHCNO0xSIBikyLZZDUxBf7E=;
	h=To:Subject:From:Message-Id:Date; b=KvRDIh+aisxxbc4OmuHZ4qhgxd7iHvN+7ay2xSYzyr9pMa2auJJCaB5F/hwN4SppFd+qe2t9MpExdY1EXDagmko9SxOm7EgMeedv/Awx12V4VJAJ3Io2YEGmv8z8fSxvMSYtDIxYuIFzNaD16UVNc2MPyLKEXPc46/1TBiNYsj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggsvkes4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggsvkes4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6542C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753063793;
	bh=/rhaFFbgnBtiEc7LCCVeMHCNO0xSIBikyLZZDUxBf7E=;
	h=To:Subject:From:Date:From;
	b=ggsvkes4rNVoj8fG35DZegdxPXonVniYuW8GQyxfowGkOIPWnaIgbnXU+JDnv3E4W
	 kBnrk+n6DnH8ScjWKOnW4Eq+L76k6QVUUaJtyTq7YINfWOZ53Czq75k6GZ6RWMPkcj
	 QbHOyuqS89cucjFg1ASWdh1rnsxFEFoxRFsXXpC+v0CqCI3tqSsTY8Q5wAtZeZuss3
	 0dWVpZGy67z2QItBv+cOfOPaCuJXAcShQrKdRfiO7qUqF6sZ+zT5e3XymNKZ8Uc2D8
	 AV5pecRzrVfQIxqLT655lNbMNsluJ8iptHqbkEXAQpVUr+n/IlFAX+45gcgKBBpe2A
	 zbC+hShvUrc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A5FC83F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306379357.20633.14354334052414923684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b5a2e040c9612156ef3b1247697a8a7a467ff54240dc8b20e783ce3e10b4a6
Date: Mon, 21 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753063793
