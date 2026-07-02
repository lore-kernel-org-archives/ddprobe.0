Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9241A9FAF
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782953314; cv=none; b=QNsd5/bZ9jc1svgK2IXUqYeLLvfLVSKnWUCJSvfo3nExrftsg74bIQeRHYUP4t/7B8sOE7bdC5IVIP7MnelVQmty9tueM9yXMN3ZMDd3SqV9fwvhHGHKtwOYaZ+aaW5iWDAniorCI0nOgSRyElJg4eJsl8sFBvCvnYXwK+kF0lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782953314; c=relaxed/simple;
	bh=TDmQwmOAw99fYZvraZt0makQz1fBGeXCnUHiO7Gl+Oc=;
	h=To:Subject:From:Message-Id:Date; b=LMiluCyt946hLbKhUM3JbSOJqmO85VPOcNaC89IvVzsJQXvCVPncPJ/5WMtvQbjL4fnzhsB28qII2a+/E0GfWoL1ECrKVE2wJaga9XCIwksITXlfbdkMJl6uJQbQf+srSvH+KIl0/djUpRHbZdn8oKVrkPBg0Uu8wreS08wExqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfrr2UaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfrr2UaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF89C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782953313;
	bh=TDmQwmOAw99fYZvraZt0makQz1fBGeXCnUHiO7Gl+Oc=;
	h=To:Subject:From:Date:From;
	b=Lfrr2UaDSTOXV4GdPdTySpxaS/v2rbIGDeQbPTNyJnRc44O6TrT2ORoWNuqu78oHP
	 23YyFmJmEcf2NInOI6wMb5+Lzaidi5JCya0Z95eorq1ct2n4LpyAvco2BaUx2WIqMs
	 HIB03yTKpQOlsJfAiUsej/pKepCAJ4VOwlvdxEFCwWJ6PniJT8f3a/gcIvEV2F3flM
	 KNV5NVehHLDKPdAhcfnITr46TELXCoVgQjCUR6PiEahArOfnHD8/tX0QL5nQ1IDrIV
	 zT+jnQSrUwoOwVCebupM5YkhJwru32ewBg7Z3zdwr5QAi0AVgKoRRzXrzn4f1C3aGx
	 pLW/n3cSl2NHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D71C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295331368.301.3677429675753142576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700512eed4f69269df5ad50fc31b48de5d399804ac6d884576c1c8618815af65
Date: Thu, 02 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782953313
