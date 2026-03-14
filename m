Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA64274652
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773512094; cv=none; b=SLrsfn5AQPOhxnz13pXXTe6B5FPf5+0TV47EtEbNsYlhRQQItKANTs+/HNosex9pWyoLCOt4dSOhfM50iIIy7qiqiwQSYsPe6NgeTYukDYNVq+GYyH6K6YmOX6s/i/6y3LfKbT/xYAktppzHXlFUk9JpIw1/oPNOVW/2MuqM00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773512094; c=relaxed/simple;
	bh=h8SbTaVFJIqZVSM8TPq90MPdLCJmAVPnPK/GfBorE7Y=;
	h=To:Subject:From:Message-Id:Date; b=AOB4GNuaLZEXYNT1qkvYTUdN3YWIjouASWs6mkj6ycfLG2zwvX3XQUE913E2Mqkzwb4lA41qyco5GYAjJPA8xtDYKeEDItYMzcUAvgfLFX2LvwNS81TCrpKEo6dz/rYAbslWLHiqQZ/Ud93lwVnK7UzyjsKm4xFmEddbBmXdIhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNKtxf+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNKtxf+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773512093;
	bh=h8SbTaVFJIqZVSM8TPq90MPdLCJmAVPnPK/GfBorE7Y=;
	h=To:Subject:From:Date:From;
	b=fNKtxf+u1wPK+vCVbYJ1gpisRDW6t7vaOKKFDQ+VOFkPxGUMgo661tH7sYTrD2TbY
	 ppbTmaVcJXhyexYsv+4qtK5Uyq7f2cPVCz5rAjjeHyCdJeQcPNdVIulBODdWUI407A
	 0OnWaIUH43xWYYU33ULrtO5O/agleDRdAdORiQOS9VWiuRVwSrnjybkJnZ1dwiDRKI
	 XMaOZqNOUZ5V3/vB3tKy9rwI08UEwkLGWL2tOOROsQhXk5HzSJy9vagB/VnirmzX0H
	 VuFghonC2xYphljEDkYyKNzxO8yb021ag2i4ZLgx+SFRj5oMhaQjQoKxJxZn71tm91
	 Yeix4SLBRg3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562510706F1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351209358.390.3716990602196380838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03af19b2b418c18caabffef6bc0b5dd4358a87255b0bf88524f69add0b4e57e9
Date: Sat, 14 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773512093
