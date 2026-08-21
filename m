Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC82FFF8B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787323834; cv=none; b=D0BY0TX5YavYSRF7E4dLkdf6qEVwfDJSJjrYkNdAghdONb8R6OFLvnVDCKSB8N5MhoS4TmrxN1G4/OsGy2UIsl+yX56st42QxdmipGBAMxUGdfnD8+wO0/CxLEbmzTl39SLdyg/ZO2+AEgE2kmzdV3rYM+wYav6Lq9DoZrqlSvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787323834; c=relaxed/simple;
	bh=TqNUFUJA6CyPucrbVsGB5TDsdU1h6JUSYqvu6KF+/Z8=;
	h=To:Subject:From:Message-Id:Date; b=ZvLjwR+ohuWfciCc6uUYay75SC8h22Ylm4PC3rSSDogq330ZwI6Z11gLC35lWMhKyUiTxkUIAiaVrCtwbH9tHn065e5ka6XbuS45NDhneImwDFqjj3aURfWiYNjvgD7hPt+sLqHTAA1J3lR+7MBNR49J6ePyIZcyYnfDWwlvq9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDZjENkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDZjENkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3649C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787323833;
	bh=TqNUFUJA6CyPucrbVsGB5TDsdU1h6JUSYqvu6KF+/Z8=;
	h=To:Subject:From:Date:From;
	b=VDZjENkz4bfeQkwkDnQTGhNfkWPZlLkiVzBRlIs/UsDRn3kTe9pBWapyZp8HzLpJm
	 +WfNduLzZX91aM54fhLr/fD5jxGFO7hjS3nXOsme+n2VL5KsvZiKC/dYaBrSw584ug
	 da9frfthj191oGrBOu0K2iS6/IF6e6nu5sZj0zqCucQJT81C686ncPohiu0dT952p/
	 LqOkhHmC/5C0faUsaVlAFI3x9+toI/knKTMh8Fv/UrgVeCtNKSbdv/qp725/shD6KP
	 O+l59eXgt8gOa2mTpEu8d6mlhqohv+lTVALhvEWyju5abklFC0WTlLzt8qJMDll9qa
	 /e91voJ04hZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88FC5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732383370.22849.17464731536479559934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d2e1e4e546405aaeff9fc1fd29333441a440124c671870ba2c42330bec964b
Date: Fri, 21 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787323833
