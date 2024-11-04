Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058A11C6F70
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730744754; cv=none; b=dzFBX/EnMslEvkvJqGRylUAITlRW7Tb6JMuO+jcRtlz5HEeVvzxKPMX+W9CZ17mHdTFwSPC1irCU/LnGdnyk2lcCoHZpgUWfDU7iAQVVeD3SUB9iDdk572Uad62j/LBt1mfZ5Gz4ElF4q2oNSQLGYP8lFCxgPDvr3bxykcPu4zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730744754; c=relaxed/simple;
	bh=p5O4s0F77Gr1qhceeC7fJP+X2FOZcGxDrL+pGCAz61k=;
	h=To:Subject:From:Message-Id:Date; b=SqxFE4E8dvCCXZ8T2unKWvzzSu6WcKMqVH3B1PiH1OSQQnROcwwQQhHbdX7Jod8eTMblzckeyjZliXTuud2B44eAVraD+Kv701lbMKG+WOAxMjLswFJ97uSNjgKw1xXHDsXcJg4oPTfN+e8Zo26n+M1NelJDepwi/Vw9f6faqzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWZapyM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWZapyM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2936C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730744753;
	bh=p5O4s0F77Gr1qhceeC7fJP+X2FOZcGxDrL+pGCAz61k=;
	h=To:Subject:From:Date:From;
	b=sWZapyM4dmb2G9zq0NJ2h8mhUehoaOi767gIpVW1YD4M3QBoFIcV4UV7A5ZVujyoq
	 6Mkrzh3DMcE5GYZyllx34ckziWIVpUqflO0ofJ6ulErsRsw2RH4QSfwefYnmoJh1kL
	 LzasDsSxOS+yvu7Ugw8QSbxwrTaoNKLaS/s53EgHRkd0Ei/7ndfX9I0CfjzR0OBSP1
	 lYrr6oXx1fahavbiLR/fCr56ba/OnmjnO4gWyV2QN4Be9mUcPVIuoxD+Yn8/Kvdywy
	 OZzMC4JdPhkjjpeX1mYhALatpC7DuYZXXeCN970wrNwCzXGUqiMtiQcFU5xy29qCJz
	 VZzYuHMPjPfmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F289D1BDDB
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173074475357.8288.8386686825763765349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f266c2da64044e26764d067b8781be73c5760b8bffd1cff6c2bfaab927565e3b
Date: Mon, 04 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730744753
