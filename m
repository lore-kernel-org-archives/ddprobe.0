Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598713FE35C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781366194; cv=none; b=c9M/eRxVc1pe8bTRtjnT46wFwJ4SBMn7yYakgpYVGBIXcGocxNt77oC6orWdk3c6ZK1NNM3nfCFZ2DKrzp0Z691KVgrcTkMY/wNuclJO7pHJnDNbE6Z3G/uMK5JY12AwS51i7V6pjDKn330AEX8HNWfIGF20cI2slUY2NWaBLp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781366194; c=relaxed/simple;
	bh=UDf72PBvo/HwBJTth8tRDKCd/7sJPZ246jvAWiD8DhU=;
	h=To:Subject:From:Message-Id:Date; b=j5qoL5ZXjD8+ck0enVmnCshg/7kezIjR2pt4DAtu/J+HQr+2QjiAU+veUZi+ayC3mXKWfsvcUyF9V8cvfoKlzD1kSLckqv5rdDMfVJMroDbhLgg9eNRF5wWE+LRtGSMny733BS4KRrjMCNIQ4rdKmWg/NEKWMoG80/Flaoct+w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5zRaYGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5zRaYGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17DFC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781366193;
	bh=UDf72PBvo/HwBJTth8tRDKCd/7sJPZ246jvAWiD8DhU=;
	h=To:Subject:From:Date:From;
	b=P5zRaYGV42VV8ONHjPg6XP837u84EIEON6lnncszJOLHERlfBLeTioLtgCyBAdku3
	 Hn2meVsMniz7h7G8in+w+MY9aBr+ERNb2y/q9Z28iGnZKmNg96supn1RaG/2W++9Zf
	 38H+e3pBXrrGIhdvEnvAbisPmE1iY/TPjux4lxpSwg2bvyhdbzkt/xmf5//cFByjwR
	 fklvyzixoOqF9BTi2fKUbuWIkmjAzy9deIHwlMpIGGGSvuL2kHATE0zYCyBQ4x4BBy
	 vOSlRTQdSWF3WGPPfRtYQ3+TgGGplHQGB5miRT4FDHVnTf1fev3kVQOeOrIt/3GLGX
	 5hq16iUiY/BDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EC0CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136619371.14142.17755174490446417717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4b989c99222801c2dcab28d79a8723968568cf33775a9161e3ec5ca4a4b617
Date: Sat, 13 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781366193
