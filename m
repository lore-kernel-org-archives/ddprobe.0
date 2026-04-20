Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330224A02
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776669454; cv=none; b=AvXurwgEJNvo5uEkA5koRIiv2M7z4eYhT7FK6rmkyn3MfL8/1+PTuInCmfn/3alpaRzCf1Qt8wxUZotEJ/PE4Hp/1BnkM3Styiru85fsGibkgb989BhZRLD+U7bb6J/tF6u2oaJimJelfb86SXg+lzKEzcXfCj0DnSbw8/ceLVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776669454; c=relaxed/simple;
	bh=Y6MMh/BS5Vwoq/35Ff7ozra1bavGuia0566kSMwwY/4=;
	h=To:Subject:From:Message-Id:Date; b=YP+39S/FcVZu604+r0FPPvobMRiJJLWgjIA7B5l33qEAOaX8V8tSZQKz++MfPV6RPaO3u3z9wszOhY7T9FJ9OEJesyrZCyxs6EqrgQ/P+gtjNqRRwvsahwXl8b/aJpPzRmKe2OI2MZpYwaLV/GYnpDCutXLhrS1q67SdUqYV/5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIAtfiHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIAtfiHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7A8C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776669453;
	bh=Y6MMh/BS5Vwoq/35Ff7ozra1bavGuia0566kSMwwY/4=;
	h=To:Subject:From:Date:From;
	b=bIAtfiHHitaIFEwYHLjJwzljpFM+fkrkb4ZpTpVeIsYQEbvGL3yWJ0Ja7RAUHjG0p
	 hjQY5Sm9KuX9POtdfciSIR3qIKDLij9i2HTkUFmxJoErzhOu+udjniFGMDZIuKHf9U
	 WMivV/AlVxdqBbK01ClffLVSveohu2thRwsjr+NCXE7clgjNj/bSgpVxVeeTizyf4M
	 wFlWRdBstrjfdgiZD6b8pSVLRtAtytSov5e28JEF9VKW4lnvetBGJHDEFc1zeThsdA
	 7J1Iu34y9xjoEa6a+VrE/HKQZMduJOhSe/m/U90j7du3LFOCfT+ujb/NOccryYtcHU
	 TP3XP95/ORV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9F4F36C2C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666945368.11604.11174860435997057451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5e8d4fbd0d16d6a686d5845294353e64c5b25b1719b6db02b9628731650f13
Date: Mon, 20 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776669453
