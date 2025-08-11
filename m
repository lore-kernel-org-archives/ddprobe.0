Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3042D77F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754939393; cv=none; b=AkGlvai362f5abREfT45G82EnGosjYFwCZbUznJIyHQrfIE8ojwZY3W4upyReNPFya/koxgmUs4JJC93Yr5/ECTFpxP3lSJRrHqUjPfSi40tEaQVtxraBJ4JUYZq2VsAIrcevkj7nqFWcStCWIb6BCyRMzpmSoODhIAbaSTkNVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754939393; c=relaxed/simple;
	bh=KTfM2z133jT2sIMP5JG2xi80XO97xgZGMAmM6g7AJvA=;
	h=To:Subject:From:Message-Id:Date; b=Rn1QECWcCNEn8nBZwzq3tqGvz39lkLx+oCtqNZbk8v5Xf281AN3FrKvaQqrv9CsPuv/ijoy4dVYMhjBTidJ7nF3xH6+E0m8B1/hk8Zgr4YEcnn7Rfin82rl0s6koMryPxGToCyTcTcZzTRx0lDdt9OWcO3Zag/B8A4VmZXJ+mr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2pt5B3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2pt5B3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754939393;
	bh=KTfM2z133jT2sIMP5JG2xi80XO97xgZGMAmM6g7AJvA=;
	h=To:Subject:From:Date:From;
	b=H2pt5B3VN0VneeJwc2S7pwQC3m1L09qNHj9xy51nbFLifBG50a75DwZ/QtpDmcUMn
	 aLE8pq4dnwFN7ug8h9I8qjndDPNORBeBIXPOeWUWYJjcvuiYA0qi8BkmLg/ZC/++ws
	 d3RfU5eFYNE2i/9Q//Dsqnm6N0yW/KmnwQtIAFU1AisF67ZMee+sMUzoV73pmLaD77
	 ZiiXLXNWCHsZN4vATy5jgyxYlszV2CSBt6fL64k7aQ/aoiojQYOtywEqkoA8W8h9U7
	 g0eoMX+dJgF1ShVlPzMkbEp1fPlH9+OpFZIC/O0+JYQsmfgqNmjDoMA0GywgJ4OSXH
	 UTRMSQ7bcGG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90077CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493939358.12238.916987472085101177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c71fbee172ec25f7c39506ce7077090400a32b0b859986943f8adad497ffad
Date: Mon, 11 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754939393
