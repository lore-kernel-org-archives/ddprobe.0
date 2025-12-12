Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BC68C1F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765521174; cv=none; b=N9Ru3ymchBRW1HoBNfzsZI3OdTjmiAWOHAlSRWrF0TPAEHlp3DmfCXOcLRlZcFYHQQsiM1QtKyVe3/8/Ulu3E+nFduifnEziXWVtxUIvTeoV2pfzZlrst3m47U0kkkozUfIArSCcsikVzpr+/uK8tZchHfRKkzHolmAWf6RZhnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765521174; c=relaxed/simple;
	bh=mJXMN3r7Abctue98Iorcgc7jn/YHnBNahpAponiaUVo=;
	h=To:Subject:From:Message-Id:Date; b=Oo/KTkykvPSn1ZkcsSahkWyw6xFf/JPqJ9C96CflSLh2HD35QkqiBrZoAL1OaV3fTGT23Q6PEJHrtwypA91kG3vOUzUBTqPZFoGkxyoOvIcMg1HXLPdnXvmi8Zz70QozrJn4NO8FX4MNLVLkOet8jot5/fIvTOGpOv3bzaF4xOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCGcZWGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCGcZWGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8ABC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765521173;
	bh=mJXMN3r7Abctue98Iorcgc7jn/YHnBNahpAponiaUVo=;
	h=To:Subject:From:Date:From;
	b=YCGcZWGTc+5dxjc9Q5EsCI0B+RHNhHDZVapxdBzu57e5+jLKm3Po7BqnhdqCjKOWD
	 b38s8fJdILLB7Wf6spHRmY0QD8ueLooFjSLVq1HHnOyiaUFMv+LztuTHyMewbGWeuj
	 Hi3dh5NsgZsJDKzDWW7sNaMcoj9rBq58tiQ3ZL/5SduR3UAP3V3i0SY9s7XbJ4epQ9
	 zaCsRdVgronOAE9/9xCo4ioYtFd6T537kWl8qcjcKXwKb54sz5+ehzAqSI10vZfuqG
	 /kdwmVYYWBA+uVGubNAqb20TpOTYteuNmissq+JG1jgK1DP1c8hY1frPOWHfMdWQp4
	 wXi+3jsRkn2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97251D43363
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552117359.3696.7984867806927918170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e4250b902a1acf1b08403099644a9b2e1e76d8ef13ac849554f8a2dd5ca97c
Date: Fri, 12 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765521173
