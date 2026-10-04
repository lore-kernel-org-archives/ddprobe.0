Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7543B4973B7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791141034; cv=none; b=eAMYlSWCfKTMKDh6qfyVgZ2xpQXyMqlNt/M/5w5Y5r4PTHt/Fud4zilFw/v/t4U2XBfqejJWcyY3Le1GhMvZvQYAkFmx4vN6pYCHsa59gZEDJAonN/N26PYbuHaEh3SPefs8+wS1IWN99X0Aj1jUxvIRSRlw/3KlYpAIip2MN04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791141034; c=relaxed/simple;
	bh=QoXEHaDhrbhNnFO6kT1MnIkbRrCx98miAliJAEvo9Sk=;
	h=To:Subject:From:Message-Id:Date; b=OiscOat89JMqAb7fVHeuZmhxJa72gAs6/Wo2daGVCijVX5/zMih7Dscgmk95ZHo8Nm3/j4sEsnPwq8WBq/nbwDL8zV7BmmInlNQvns1T4GW0YuVO2gPsdRv+Aeo243DAmD56xiW8cRL5uBOx4/uS22VyyaRX/9+GmtfsBBuyKkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwpsOKiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwpsOKiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE49C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791141033;
	bh=QoXEHaDhrbhNnFO6kT1MnIkbRrCx98miAliJAEvo9Sk=;
	h=To:Subject:From:Date:From;
	b=cwpsOKizMmsdLnqdMv/yXc+Y+HzgiuItXCQn1v9JCXax6Oq9aHrilzXSZlsOH3BQP
	 lNs4Wrtf8s4NhTwjux5kCUXPfkFnpik3R37899szCeANGPMIK9AsigiNWhpcjyhD7i
	 VYgC0AZvJgBfBbL4VTsVdQ43Tis/ULzFiqbjSUqscAZtH2NIWS3dS4DADFXlf0Ymhj
	 /SrDyD8h8vrCIXhUXBR/K63EHpW/JsPxkDL6jHlv9BdBJMW6TucHZ3UEpZ8ei9bolj
	 oUcSq4dt84M6Be/cwMDo8KIfUxayeojNv1Qz6YqszdwwfNrLOU9Ylax1YYiocWk+up
	 aeU9ENSTt6PUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA770CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114103368.26144.5814800568217743436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9b7defc48f6e209bc24f389ff75183a7140a5be1b47f04309b19085d8a5275
Date: Sun, 04 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791141033
