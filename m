Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFB82652AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784309314; cv=none; b=QLVvmjRUnOwqtmLKBNTLxG9cKMs5Lwg1HxcCPOirHwI5Q5ApWfA0rohwG46QZkdmQEOBo8rfYmwwvjOjwWOfb5TYAWtySjtFqqU8lMijtpiXleGf3SGXyoUDcXUbicfIDBcETCKcjOwFNXPTmPG9s2v4i3BMaueF2NpQ9NANL1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784309314; c=relaxed/simple;
	bh=Fy2849R67n5GkPgts5mIxdrJE/j2QKPcYmHPiYC62NE=;
	h=To:Subject:From:Message-Id:Date; b=pfswQ/1ryqI4Ia/111aB/jCtEyztnSbmrKF43vgVd0ITUmyOvvR+xJmcFon0h2T7Cn4180pnhnmeBbTH2j8R6G/t47VReYpfC7e94ol2GDqBombofcSIUcf0C6+tXPXteCpgOz/aibAasu+dRbCpKE7SvumtPEt1nBLrWxMMrf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRB9gMRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRB9gMRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDC6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784309313;
	bh=Fy2849R67n5GkPgts5mIxdrJE/j2QKPcYmHPiYC62NE=;
	h=To:Subject:From:Date:From;
	b=HRB9gMRQnwgE+FKi64YKiZ88XAyY92xhsTSCySY5UqI/h+IIRAX+95Ho1cdpvkuFe
	 5GXkziOCOEuKdriC7uRbDupDCwHBgvp1qi01ZvnQ49qK0cjaehr84GN5KbCrKcDEXA
	 T4Favu/tu4HYi5joDxf2j4kNzwrdcvYK6Ar78WZqGTnc0Oz6G8hv0OETPBIQDgxMPj
	 FMAZxne6s9jUrQcuhkjUpXWB6hzp9n5UTMKx2YBoWirB/1XGql6kMgnTbM24E7nho/
	 myyb/APYyXM6Eu5jFNrINwF9TmIPtYVxkNYuHWerCbRzFvozWkh7kBZfY5jVXgaQ3s
	 fxTbwWa4zCU4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD79BC44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430931370.8629.17689171303382868183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04462e46498214a373962896e391b6f871f332be0b972675f431d6aa8004141
Date: Fri, 17 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784309313
