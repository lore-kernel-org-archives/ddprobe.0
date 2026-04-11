Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B450214813
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775912854; cv=none; b=BRDclBrt4REGmPQlA7xKwrsOKTZf3Oiiibt79rR1jFZT5I0a3DgROFhX7zbuMzojzMCZeBclZA84HkeMSQfBKBNpJxfPWWXeXwtjCs7wnbHGu033K4MZWsfh56DsO78o7z8QjiI1Mumdx6+6YU1YQ3osFQnKEQCSuPEClZTNdc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775912854; c=relaxed/simple;
	bh=UsfRlB48dA2t1Ob1WgJlqQzWTsHRiKkqm4ywVei+bBM=;
	h=To:Subject:From:Message-Id:Date; b=GdBFmn52PPdipVCTvdYOro4ET0oBCI2KTElp2DfBOizyXUKq28lcCP+ryFheK8alM1j4HyQ6u13q+k1ZyySKnNb/2PtU3wwA9NJvYH5+sxYooBqWtCYzZDxEdqqKmd/NXPhQYnRP64FKwq9NuXQ8dkvmp2JWX10KpXij8cX5IiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr7xWT4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr7xWT4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0571C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775912853;
	bh=UsfRlB48dA2t1Ob1WgJlqQzWTsHRiKkqm4ywVei+bBM=;
	h=To:Subject:From:Date:From;
	b=Wr7xWT4EBa7+IfBXM3O7RPMvfUXEI7Lwed/P8ovEp4DB1XwW+n2Zn1XU/Si61nc+d
	 Cu9LNHBX58MAi3Avg5fWUx8gvu5yZLkBG/uBjpT+LdXUT3jT+u3v9iw2k0dHJa1Mff
	 JX7ovZ1dveLEfWw4UkJgg6+S4A0bHtxaw306SxrWhS7WgddjQiSaMY3nX9FBFN5Dms
	 XHFh5vjxYpGON/OA2ot1qZXm0dXLq42TnD/qCajEq24To0ifn+WdUeW27+k7M4qfQg
	 Hfmi2f4CykYPuDaFOxI9dvSx4sZosKuxJ2bGHV3E9HGK4ZXIdDxNNyfxwh0wKBoi49
	 cciCdd/slt80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5CF3ED4C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591285368.19748.10321778382538484507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81aa5f07690502c44ad09a51dd12aff47a9c1f0636daad2d0ec4448631239ab6
Date: Sat, 11 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775912853
