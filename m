Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA7714D2BB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747289994; cv=none; b=DCvzwCBOYPp9+YDhw3sNMV/RQWb0MbL2bZEpPh36M6HY7gdG8hDCv01syHAfMNQP8gbM7gbqT9OXoqPt+xfU63vtteXh39zP71hDP5f+Bpcj5evi4FVBmpD8hcmi+s61IGS160Wb3aap37AtTfEDub1wPuKiIo6OT/l/vd9FI4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747289994; c=relaxed/simple;
	bh=T5Mlxu+9UyPosnYerLO3zFOGIDzXCdf60HAf1qdFdfU=;
	h=To:Subject:From:Message-Id:Date; b=hGZlevXXG8b6sXKKy2VLMF4MXh/G0LCAdWju9U0DA956RIeIJTgmwg6t7ExdpN1J9qgHjgXLvU/JRW3UtgbGjahfQsyY2Nu3cNlh1IoGjxBTDiDV5GUGOJOO82hWIg3eS+vlUihTdiGqaVRaoFXK8cySQdqX8JYHe50RVzI/qJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYayDmWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYayDmWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747289993;
	bh=T5Mlxu+9UyPosnYerLO3zFOGIDzXCdf60HAf1qdFdfU=;
	h=To:Subject:From:Date:From;
	b=aYayDmWCyIxxVoGAR3vojNMQTjaZc3I4ziB51vuB+USDhfefrtf1kLwvby13iHlfQ
	 jROMvvE3O10Ge6hlNJq6jeAbgYlpVVjxhhGCe0NA420k9lf6r5x30oYx40TASEbU3E
	 XEg/wBy1Lkfmdc8ct9FBc0iZhfBLuhQhLTi+G7KiuczrEc+6vLCxxojQXXB7griGpP
	 nKLJODIpdrS900TIlJSugrPW+vfbpVNgA6aQ8RqtnLj6a3mAlMaAnTlBUl/qJ1Jwj4
	 9P52ucNokCma2x/e4xZaurMA7tJylQGkoq83aeSNVdup+24mtxcGccpetP0X5LBeLn
	 gj2kxMI6u+tCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F393C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728999357.3092.13840085407101523293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535334c5e14b48ea5b1f3e1a5c2d9479429778d29e5ac93918dfae042e27c565
Date: Thu, 15 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747289993
