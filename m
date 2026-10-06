Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1273D88F5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791289234; cv=none; b=eJG66VorGVc/pEPgTnJXw2N4GMu/QrP7dTpS3ufgX4H6oSdCcMk1U5PJtpb+joETpeMJxLVCK3hCJqHg4HzLXBlE3GW9sAeBPZdUuslfSNPI48ZcXoUg6YiTjKV+TiRpwD7c/Hi5zehKNLoLJ9eLANzVf1Wn/sNPIIQaAXqj19M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791289234; c=relaxed/simple;
	bh=ZPvOd3FMCyOFQe94cl14k57GvWxXLvYjRIDloZzRvKg=;
	h=To:Subject:From:Message-Id:Date; b=Nlmj8ac9X4P/sWkxmFIHLXq/axRX2vsel6jmseV0+5Xn1u5jbshGwLuKrQkwhbICUykn4UW7yvpJqF9kg8Zc3PIPPQYJAMtprEJbzzCZCsuDUKCvlKXYXAGxqfHhTiywULO79jEdIZQdvPsANgHgmxCte2FWTW8JrUkSNGzHs5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbrue3O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbrue3O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDD7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791289233;
	bh=ZPvOd3FMCyOFQe94cl14k57GvWxXLvYjRIDloZzRvKg=;
	h=To:Subject:From:Date:From;
	b=Kbrue3O4lsRpL7Q8nFqAb8om8z0VVCqJbOMQzfvr8+0ezCedAHvPjt0HUhFLwnwfk
	 pG+orZtVx/dkXfuQloBixRX7sBQ0K1OxOKitptBFlQ0WBsAmOx0rdAe11ukeXwTrvg
	 lUevW2/+sB6OPuJ00+EdoYkF13zhoOl0LgIOJgjUX8p/6WRhR1VY7RAONYv4T/1hKy
	 iJ5VpkI/KBeCQ0Y9N1NMsXS/pZu4VRkwzh8/Q8KFV28oK3oPhOTtnUrbz1XWVD1938
	 dcwSJAL3FXtWs7WiF6E5UrFs7BDl9fhFLqRnHV+w22D+oPKpYK6+vya8OTOPRgIRQA
	 Cq+Hep2TdFa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB210CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128923369.22192.2302633487069032078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5750768eee83ec3e40c996fd70cd219abdbdd4ac03616d694fad723c0f5ea118
Date: Tue, 06 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791289233
