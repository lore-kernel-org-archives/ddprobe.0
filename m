Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245612DF3FD
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760596794; cv=none; b=V10/fLdhCpuYuqNAscQ8d4nNMnXNsjShc2459oLiRRy7PV8sVul0TE9EuHM9JQvKnF2QKlkEVUCTK4Ab6F0ajjCgblp8THvniQL/0ugN6jtFDqTfGn/B0rjyKJSKybFl8FSnO+fksYJQhpC8Ns2j/FmDXmkMlF434X/oQ1vW6tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760596794; c=relaxed/simple;
	bh=mdulU6/cziLljmab8rBCRyh5Srr4P1jmkDCUcDKKEpg=;
	h=To:Subject:From:Message-Id:Date; b=OxCthJMjzY2KthtP4r5holXVJ3Z6+JZvf9kGny/Tbke16ummrA59hxNaopO/b2Fs6+Zwtc9QUsXiRjKIRIuQOonOCZXmhVi4g8ZdYKhVbetMvxuUSih0uwq+XIjU8ZwdcTCeg4VZqO4OYLyFO4mFN5xAuOO29dGAPK8bvBe/TBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+lwQemq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+lwQemq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760596793;
	bh=mdulU6/cziLljmab8rBCRyh5Srr4P1jmkDCUcDKKEpg=;
	h=To:Subject:From:Date:From;
	b=i+lwQemq+zEaJPrlcBF90S6Ko3ZHOzcubjwimmBQ6dhq2XNzFZAq96ALZQkitwzup
	 3IAQ6ou7zKu8RcupqMor4/ov/CUHGI/YWVW0CYRbynSHmo0TTMunenW44YsucegFI+
	 LOGtsWL8L40fy5ci8nYklhjxReC62cJP5Q2l1KnS3Gh6tqjVYExRSV82EBIcMfEXsR
	 3fk1rcUg6lLpjFDxKAm0CW109bsVt0beN87TVQ1VK0fwXAsOKIcNV7Uxy85t14Meip
	 Kt6cC7pw3K0Nl36Yv/uV17LfGnl2Zf4Pk3S4h8zp+H/YFYIwUAnJtmPFxztBLyih1V
	 2wX6mNrESVmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B0CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059679358.27548.7968168634331011814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecec66a548e3b3ef26943922d5252e3a1ff04ccc3b73730d8d2f2132461018b
Date: Thu, 16 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760596793
