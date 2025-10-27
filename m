Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962123D29F
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761540594; cv=none; b=Cbd/vEiFGENBzspYDlrXIklDp2IHR5dphiJFMuih+Eg+ot9WJ2/Nhf/FDQWgR2DJdTy2YCscMfH2CsXJJJODZtM1z+iqcVD3MVWa9gvSJgD3KW1RPY0rBi56ve/0tknlYsrskn2/GWu/s1sPY8WES1tpWjtr/CSIiFHP8hMLY7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761540594; c=relaxed/simple;
	bh=6y6cBFbjnG2q5f7lstNI+rV5qRRRR/iAziGMTcrG2P0=;
	h=To:Subject:From:Message-Id:Date; b=HeNspB0P/6ReSot28B7SEqRXti04nePdGNNJpMhAviyQrWFfvOsDntT+yySji8VhqNVgTltOqcvedXjF/RFve66Kl3qLhNohgsPPgsPFftl9f0mtRqn2gQkOJ97DAdfVz0QmfZX8f4RFLZnxY7b8Bw0nYQRurqGTWd0kDdZyKR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRmNFS51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRmNFS51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63FAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761540593;
	bh=6y6cBFbjnG2q5f7lstNI+rV5qRRRR/iAziGMTcrG2P0=;
	h=To:Subject:From:Date:From;
	b=dRmNFS51TTWgkk0svpwy/UE2FRpWhnY9Kc9YSYTVyhqJDzjrz/9kitZcS3F6yCOhD
	 Oa6AvVEU9rFbZ0+ldUugnIcHFr+zxTXDD/i3c39Y4G0exnteQx+mfijagHMQ2IK3NQ
	 7llFQ/ItcB0xNjWJV66Vpkrm5Sk2MtotbdzFuS0S9E/IryW+MRSqlSc2DPkDwbHxeX
	 qUD0Zc6H0p3FTFbea/a23ZixfXDxvQsDovVMNKk6b+qvC4CKYtaUeelJMElwUEm0lh
	 mggiRZUA8reOiiKAKK9pUpF5gb1AyhB7m8HOyQJ+dENq0HOJPV4+Nx7NGZvvM6j8w1
	 dJP0O6S5o/FOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93150CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154059359.15164.5555418968975042385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66bbdbc6c817ee9029d64c80f508ba836ac58b533eb28910b3ffa02eeab719e
Date: Mon, 27 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761540593
