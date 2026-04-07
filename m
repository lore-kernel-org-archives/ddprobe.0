Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EB4322A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775587535; cv=none; b=JeQ/1H7zSPZbGeISxdVCCwSO6irwyx9H+gtvSXrkERWGpGkEjbHf1hD3r93ePp1v/aeY9N+4xChQon3P/7EtyNPOx3UKQ9kXIhY9F35lCcL88vKvO62Qg6LLsrfmB3g87dui0MociA83F78eSN4GmkufHsHaD1lbR7He2e9lP6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775587535; c=relaxed/simple;
	bh=Ax6ROtfwOdmncYRGbiMt1aFN016VrfBK9NUZT7n6FoY=;
	h=To:Subject:From:Message-Id:Date; b=nLIMbqAJA3AZEtIheoT8yqDOA7aTHwi4ohLx8BEqGk0fha0KGh0lE7KygF7yWbMyjAyxX/1jwu/fNAvyoinvMvck65qGy+wl9wvdRQUFeyl3nL8nU/qithXRiUvjU+d6+dbNB1nxoZZ1aqYXq1ItArkF52L3NLIhVimHPXwME6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR07xhgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR07xhgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775587534;
	bh=Ax6ROtfwOdmncYRGbiMt1aFN016VrfBK9NUZT7n6FoY=;
	h=To:Subject:From:Date:From;
	b=oR07xhggM6aMstnBsd/nuTUyEUxAyrD361MmJosUCooOaXCBcyfuIeksU7gcLXBQE
	 gXw0mp3qfH8ZjqtaBcoQHws1k4UHMee6sz5SPf+XiRLMV0u+Sb5BCSSN/uxbFNpTRS
	 QjAj59AZ2T+t/juJKtR6M1KY3YCNdhMlVriRpo2a2kaDkXpZdfBmcDesEnI31qbX1v
	 0VzgigU/RslF20yyDPyYbk8bTWUl2ApfQ73U4tWDnkTc8ntIw5heS1sodCjnH5T4We
	 juw6+WBevOI8vuMbl6dNXMFpV5aUEL9esoUDkGj7VVZz16U361a0n6UUEfvEPHm1yw
	 Xf9KmY4d0kreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D5FF510E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558753369.11831.8550929514456637383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0df665f6d10c111a68c92bce0dc325c4639719a3d68227243fc4b5cf5c6671f
Date: Tue, 07 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775587533
