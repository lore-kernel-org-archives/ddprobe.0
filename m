Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676B32A3C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762530594; cv=none; b=BhhPSDR8X91g2gQnPgwEet4dJghcR2NmDi4jglx9ZPu2qZfM+ej6rcUgeG+p1YaIvg9+kcv7372jkLOXF9khjm8CP2WvnaE9ukKDLUH8qlr+Cv8DYu3+tGB7ohqXYf/MBkEqzYVu4PllAEWrtiva0iV3jG1BWtYITWzgIQMlUh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762530594; c=relaxed/simple;
	bh=dqLFf+Kv4rBp9U0pkMDCIHBts0OL+XhUIQcn8oIQNSk=;
	h=To:Subject:From:Message-Id:Date; b=OdOZ39G52DE3nXux6CvZFEVuJfl0KpxGS4s7QmnPtOF8eXIuWU6fQqALVUjR9RbVg/dEtJ2f8ltPsuy9a8l9wcZ1WUnnBmiG7SggCCTQ5nEdXuwQr454VTIQnTI2mQMLsNQ4GefTRH6+iT9woOEmcus+RQZfBQAh+FbqNwRVtCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci2DLUl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci2DLUl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C854C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762530593;
	bh=dqLFf+Kv4rBp9U0pkMDCIHBts0OL+XhUIQcn8oIQNSk=;
	h=To:Subject:From:Date:From;
	b=Ci2DLUl7lhoAHMvoj6gHADwJL+NhP2Sle42QIiiAz2/CKB3VRDv+YwmBDlN91YN6Q
	 /S4Igpd/SdRX4/XAyrf9qryv7OjWtvR9pT5Fla6mykj4tyGRMrc24vcLzumjDtR9lj
	 QbKUTST0b6+WPnMBX5lzknAB8UEsMFIYpYSf+0TeiC4Uqjl9mH8WePgv+ZcfPrVGMv
	 7P1UPN0H0J2hj9pwRUenru9muPBWResb8aFuNpmvH3Tej54uEWZhIfE0pxj7SxpgGk
	 tSGXX8WRK7ZJvRg19+8kcaeBbk5nXG3Da3EnDWRafxJWus4uFtDVg1xez/iY/3Etn9
	 h1T2F1r/5r3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C7CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253059358.3684.16988382884014358953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb2206c7c13ff2243821822e4cea56a4f9e1ba7737f6d042c2a23478731f6d1
Date: Fri, 07 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762530593
