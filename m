Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436CC8EB
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775411734; cv=none; b=dB5LlUfTjNwk05TJ1YRLHhIY0AD8i5z6jkqIm7kJBpxSxRU0amyd5lLIyYMNCEK458t4B+CEK37keG7q6yaKwTSeJGgK9EHhy5evW/zauCZhQQkxyHKqc4rPAJyVi3saQcFH8VbRnbGuyx1PeygXK9dJA91X5YMte9lk8QC3OFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775411734; c=relaxed/simple;
	bh=EcEZXzQDdm9dwa6AcIcfszl5i4gZSWzAz4UD6dKtb7k=;
	h=To:Subject:From:Message-Id:Date; b=BRwe8STG4qCbOwRY0GkpSUlvDX0Vc9NMbXM7IEGRPcvvjccqV9vfiT1CXZ6ga8kzy7Obba1DB8RASfwfu7jMagyIu0T/goKBHI0Ji0X0RfHqqXNlScaPGiN72EpJjUC3BYqzlte/xNvNLXQh61Ee/RD5Ify0FmwF9LuFLpt3vNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPFVmso7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPFVmso7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FF1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775411733;
	bh=EcEZXzQDdm9dwa6AcIcfszl5i4gZSWzAz4UD6dKtb7k=;
	h=To:Subject:From:Date:From;
	b=sPFVmso7GSWi64dM7oDHiwBTqiuHmqQO4RR+Oto1UyTlFC1x/6pniaWfSCvOkPiHt
	 eevZoVACkMcSrkU6t5LnAhxpQnvHq1rQXWIGxqooi8JJxALpoyeM9Uq+9LFkG7xZDt
	 k/H//w0N4fTQlsdkZ77wXQq8gvHEn1j6sp1u41FaKZ4Np9FoVzANdeUtAaCRK7x6hq
	 g8vNSucUQk2f4A/T+QIJD5MWXI3PgQBq4rKx0846cwgL12VDUYWflTUnD2jUw4hgdm
	 kLa35o0tuC6QzGVNBRpy8YqD8UpMo2PcIxn3v4IFFZgx10KhylwoFR24N7LUdrSa5H
	 +qR1WNni/ODVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029DE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541173368.11689.5671772915448379004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf8b35037b06989a69b48b301c98ad2584dccb3272077d0ad7e51235cf3b514
Date: Sun, 05 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775411733
