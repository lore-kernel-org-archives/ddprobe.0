Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764D34908AE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784934634; cv=none; b=WdcgyegyXnkjVRAf+fuWyBdfJKTzeHc8D1rW01h/nGL8xxXt2aBh0r3Y+ptUmLbiim1KwzbCx5ZhCAAS58el03I4VKMaiuxfKeZlJaUyuJ6toHjHMl5P/AlrG1lmuY5c3agFwfq9WsJTkwDNYTmIblDwuXFd6svbz9vm59mSij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784934634; c=relaxed/simple;
	bh=5sIfD6MUmTofkJvHozuKC3E41h3Mh/6DpVu6zEWszwY=;
	h=To:Subject:From:Message-Id:Date; b=e8lr0kmy/axWBsa/TGLKCecWpnmHXZXSV4CV6A8B+PTgSFQ4KCT2WdAjADk0mvdtjnkMW6Fparg8pkyMwmIZSV+Nre81WXvs2brJHueAya22Xjqo+8PYqbHccitNPTavh0SM3SIYl0TNPr05Hyik1DrHl2iC3+nz97oaKVC0RvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj3Pce8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj3Pce8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFC3C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784934633;
	bh=5sIfD6MUmTofkJvHozuKC3E41h3Mh/6DpVu6zEWszwY=;
	h=To:Subject:From:Date:From;
	b=Bj3Pce8FAazXF1UWuP1Unj2/d8KE20m2hTI3Y2/5+nyvusnNikN9BlEPqqeAyNlDp
	 5qZDdtOKxHwinZDVMMiIjI0aMildYYFkwZXSN7t/oNVuWQc5YXTYW/IpVWHt+7kWjH
	 exYOttq+buKkUBuoEjE9+9DhfuHuiWR3NnmUFCAxQk8MW1WjE3375rWUQas3xfeUTg
	 51R8OUmNfvMEbhKbhukLEaL1yRjrcEK/UkD4kqHUGsZEyFmABstimNAEMAUjrPWz73
	 xckNr2VS5HFB9EEBLslUKrw2HjjioIKlGSmUG9giD3NXAz8ppY2hzzKunJxRuSWb4P
	 E/RK7epTkg9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F7C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493463368.30549.15177065561421737114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aab58a196143937ecc8b65344a7a8dac899a77602d887235f069282eda57cac
Date: Fri, 24 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784934633
