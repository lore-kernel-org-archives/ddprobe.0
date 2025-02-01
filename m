Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562CC1CCEF6
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738445154; cv=none; b=YlJHLN4cXFNv9ud2dMWkaosyV3P8bqyZyaA7n51VaykZNblhrN3B/ycByOdMypLqMjXGQCryFY/eR3jh9fOdiD6C0dhAoLUGlqfUEpV56NnhV2wg4XZDqe2Cg0SswyaCFJp+ujXNjiRicKjTvTnMnUb0TO+bfnY+d60SlHaoNrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738445154; c=relaxed/simple;
	bh=lPwedzNOVCP3tYXaItOrWcoTaWztBy1wzvWJB7ndMnk=;
	h=To:Subject:From:Message-Id:Date; b=VP09KZkSXrzr/jiJuBrs1aSMyhYM+viZp8PtSX/qB0LN85XPT+1angjGA3kDZQuRLQd2b7vOyistwsVmE28adTEB58nvG0t6WPTK+or5Gs+kVEvGOl7Voni6Lr7SRHspt9LmTa1+b8ZSYvQMx32W5tvOhfswXEy/Kqdy8k+xZYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roXucIc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roXucIc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83F5C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738445153;
	bh=lPwedzNOVCP3tYXaItOrWcoTaWztBy1wzvWJB7ndMnk=;
	h=To:Subject:From:Date:From;
	b=roXucIc3bIYcVRccuN3WaYUJXap1Eg2dLcvasO8WJa3I0QAexJMgM0p8y9l4SFcBX
	 pRCBLcY9Z5bk+4W4QVaJHypNk7e6kurncrDqdmocRUwf1vDjEvabka8TC/E7I1XeiW
	 +QrnI0en039tAjjMaa7VBgULDfY2WceypmuSH63C+NGTlL3nf1fu59ESvD9dNn+0Cn
	 IRFVqsSHuwnd5If3BEYg6gA+sizLHA+dl20o+CVMta65RT8P4L5a3wDBXYEyJIuf9N
	 8hfXpGX/WS7QxHbShgh0Omzy5mk0AJ2LGvaCnTUP1k3y37v62iNNHBc4zlwa/cp4/P
	 dMrOUF869P0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AD0C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844515359.28860.12940762992248615880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e485793ea5f515e2588f7db940c17612af3ef1ee084476c0abc829d69f9f74
Date: Sat, 01 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738445153
