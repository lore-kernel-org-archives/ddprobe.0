Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A885135A53
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747247395; cv=none; b=XbSN93mEVNaGSgZMaJDQAPbA/CwzyU8dt/WNrBIZ/TjxFy1eN4d5iSYzn4AxeqZqiHE71pz/Waxc49w6aylc5LInI28tyIgpW67T1+vLrtqYvHRIjYSKnhSRBGqKGCTGqW+596AckvvC3RyV05eUuG3syAotyzdm/6bEwFULm3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747247395; c=relaxed/simple;
	bh=say4aK+FVsErS+KM31gIpui5S6aQvd/FOhkRg91R1Go=;
	h=To:Subject:From:Message-Id:Date; b=VCVsaM+CWhGoFSj50ABHND+81KfN3dJAeM3ELkurFYag2ccLvEFVFu23Y5TP2ikw6ayIOTtwdoA/fME5Al7cfEilOxnvQKDwcJa8VHZNF585xEPPf96qHC+eIMMzhG16DLIXHoKMlb2Dua4Wel7bSehapHYyx9f4Z8GHX0i6cWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aliY3m2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aliY3m2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A756BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747247393;
	bh=say4aK+FVsErS+KM31gIpui5S6aQvd/FOhkRg91R1Go=;
	h=To:Subject:From:Date:From;
	b=aliY3m2+3o6odMB0zgq//jFSK2UDwKlsLeoEE38/MXor+gN+dJEv5kZWgGpSJzgfV
	 yAXa6ObL8+FLkJA5hNXKdRES1A/PlKl4GuRuZ5Do44eMXfWmX7ZewWWn1qIR+21Wqs
	 a2+UcTwclvEi2kg6Fa0jPWd+HBHJxEYtHMS+F+4kVbTMTyQDdVmDTTwou/RYhYZpKT
	 HHEX4NXh7yZzJnrExUVI4OTdjtkJ52lRBZswq0WwcsGq2avGome98KU0UMmelKNkO+
	 9AB1Tdcei9DXEXlB9DdqVC5Q3aWKj6Lf9IKh3O6mLblS/oZPgAj6fUEmxd5d2moPGu
	 HRmITIHFaLKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97557C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724739358.10991.2281991885554207409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2c5e8cc40e70ff457ab14d9a49c0e100d9e3d8a686adbafb0f16a3c86770e6
Date: Wed, 14 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747247393
