Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7F235C06
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736762154; cv=none; b=Qkq2h8pGCT21rFzVytLzPI9xj6sdCtC+/r78KlJLdWKRDkfxwDHB8/RPfJl71eBbTX+t0jC4c0yfMt8iRH/0YUXjuxEKifOqVzfUTnkAweXenNntBK5J8uLpYA2nrUDthRZEViM4ukCdI8Wepdapk+wXwjaHQgvkFJEI4Oz4vCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736762154; c=relaxed/simple;
	bh=qDcPBCwOiDL5yj9794X0Ng73IYm8yFfoTAGUUgKhDPE=;
	h=To:Subject:From:Message-Id:Date; b=PMJAPbMPPDdNEueMWJWbK5AnPAMO2YHcTwQ/+YrFM6vFKA2BVJr7MdzKNFuBKD+3M8jOEcbGS1NYAK2PkONSsRIOUOqNjC7bclOATcSGvviHQkMQA4SfdjYj60GqwrPJ8Ni5ut2qY+a8itMUG77UPuoLVoGH0KkFifVAOihjk+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vus+WrLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vus+WrLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFDCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736762153;
	bh=qDcPBCwOiDL5yj9794X0Ng73IYm8yFfoTAGUUgKhDPE=;
	h=To:Subject:From:Date:From;
	b=Vus+WrLiBawFzoOQDQr4TA0nECP4i11AtYhyKBk+bUheoRi7e/SZ26mVvhyg0eTT8
	 Q4+cXInh4vvJZ4KKrpjXFDlBT3b+Sh0pDNhTw+Ou3/PsAkfRVcGdqaJ1EAxMVhQY8i
	 fG803rLQn/YELeRj0JdoDlW/EjLrebdiRlIvF0Weg6o+nAqmK8nLDTUe1AHfUOubyC
	 0Kn4uCwnw4g0yyhULskSVL34b9lK7geSN272Ngmwn13zUirivs/S0+joYW32YvqWSi
	 B9Qx4OLTbQT7c8EEBOWf7L0IrV4LfXMX0sTCt9eZrRAQFBDX3bnWLFC0qmvA1SvjBS
	 //wFf9gfLF0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90079E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676215358.29529.12964336999748455211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ae47ac84a355b56967c6ba4ba1e8fb29085a653d2d661e556de5f00803f160
Date: Mon, 13 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736762153
