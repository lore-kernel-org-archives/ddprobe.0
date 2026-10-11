Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01637C91B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791718234; cv=none; b=Z6fmVAyS6Rj/PsVCaXnjbrH31usjjhK9aqXvzHI8eOvFaLw69MdIRFEQJpNM6GP2yj+7UxG5wta5jtC6kG7/5vcIp2v5BkE+Ydp6jYYds7s0bm5ZSmLFal9lboNDN3mgNdJM4RomNZNRvS8mi8/xOcErQxdN7Frtvk1D0p2nl9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791718234; c=relaxed/simple;
	bh=8feC5go4ymvOhsmFbIu24PZK13jHgs3jaXxZEp/XkdQ=;
	h=To:Subject:From:Message-Id:Date; b=hrADScilxcJhSQzAAj4Tpzhp0Oweh2OXlT1Ou6Ohi+WZnj1xOmWNZzHXsOz9Ao+aTxgkV81TkpzKxWJ+WVpTm5t4iXBGDJxFsEuW0aNNP/PWMmaGWj/5Arx4pg7iHlPBFoh4LV2JPo8FSUQM2w/kTBguPGALS713yfrctQTlNBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRE34qpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRE34qpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A83C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791718233;
	bh=8feC5go4ymvOhsmFbIu24PZK13jHgs3jaXxZEp/XkdQ=;
	h=To:Subject:From:Date:From;
	b=ZRE34qpQLX1ebhDe3gVQtB00V7cdzxfzmwda9g+BOgKes9/uNOQzMAMmIptHRqgIQ
	 9GiEZeXZ1VWvpqCnSrk07RYBjoO7Xs6bpLlD3yKaA5djYCKTYPtwg8HQQOW0jlrlrr
	 MwXmIOpRBGiiil1DrDhefmGFTThKlVzCAH9Go4B78AhP+s5iVhwh++t4D3+2mHTJWI
	 VZJBWOqnOyoZvhQfUfxi2p3pHEdVXSUomeX9vgdpkrSImkdI7KQofQklLtsrUMjFo0
	 HpxszjrxScTF5O63Ic9gjgl+YZKPmIfckx1W2uJHZweoqDwTS0XkXtoTLB7j1upBGv
	 IPGU5cbTagAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE6FCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171823369.11348.16997625833101495998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7339ec0d071d46150a66a3bef3115653766f3273a093272c5f7c52305cd34499
Date: Sun, 11 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791718233
