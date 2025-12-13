Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281DF283686
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765642974; cv=none; b=CFv24pe5hHXNIWRfCJvHv3tJX7ZaHt7+Nr6FJIXie5Zl7J+Gy0eyTibFo+cSJGx65maBrBMsd+0sbWn77sRysuYETT9I2B2Y8spS61huu3zERVHh46SYprVit/T3LYHCkPPKhIkQiWt/df21LqRCnTgLFbSru/NokmA0PbKhIKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765642974; c=relaxed/simple;
	bh=SF+mPvl/QwB9aLCVyAJtacRqODPD7aF55L5icSk2CRw=;
	h=To:Subject:From:Message-Id:Date; b=C8Sz19yawirXpBSkXjPCWoeCHyLqT/FsPn86/lg0bNoNASYVgbcaX+vrYhY+NuBJBpCH6f4USeqdfxNXM7/q+/HL2qji9I2r3eIZdGYVMqTEOHHuZ/rZ4tpJ46pHFXYnf76O+6wyp+sai4r//S+t4f6XE8U/YwgyzbEH9HfcrGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za+V/v+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za+V/v+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2947C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765642973;
	bh=SF+mPvl/QwB9aLCVyAJtacRqODPD7aF55L5icSk2CRw=;
	h=To:Subject:From:Date:From;
	b=Za+V/v+2V/lWXvtBlpho/LzZuVGyZhjsC3g82zwF9an/tqls8TLF6vDuumad9WBIC
	 wbS2toNrtKGQbAi8qazv8XRownWvCbB5X56U+7Vrw24WcJ9e+H/eriHGHBURRy+ze7
	 is97cEFMtlDjjHaIvypNMfioN4TrGVynCGjcBbCzQmI7IZk6WS8nLUSueSColiovcx
	 eiHmXLUMVdfsBm83mkDfeV1F36NsL/XYbJ8QqqK2xC/4mWJtj98CpjoCJntjsGwQvu
	 vU7CWgorjyII2WTDiFGRdBoDaSNS/3nFDKkCmmKYLIwyUpnDR4T5262dPmgHHgeY6L
	 bxpxFae4K3TXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0911D5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564297361.5558.436866075221945753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c35692cf74a7b07210e733c443678743772bb936619318a419e739344264c5a
Date: Sat, 13 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765642973
