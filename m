Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB053271F2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768490034; cv=none; b=l1HLy/7s5yYtJ34OcIsHurs5h5jlp8Hftu/9SdAlOfWy1FHAXVajEELiyFoGxYoyjMlCQxde6z2GmS64PgYkacWnhiSsN3aoSsW7i6WoxVWX9NFgdyqY9jw2WG8QgfhACB7IsVaBd7A1X7vtNftHAion3cNvEU8hoLPrikfl8ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768490034; c=relaxed/simple;
	bh=i4uBDBAfBDlE3xDIR94POjbkhfahG968HfIUzZUoAAY=;
	h=To:Subject:From:Message-Id:Date; b=RdgbF8fSHwVDoqNXOY3I4GpGX37vLjfvKDTddbRgJE+FFhMCMIgk3mTcjqZ7udp/zRY1JCrscRyXQhs0c6nIkkZ66PbqOrbujfzB7IafCncf/0eKJhxGZZtWqEKbHTeJ3a9wU+QMMYByrF3Os6AvWeTmcIsJUP+BQ1+mPW20/mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A66U2oTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A66U2oTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECFC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768490033;
	bh=i4uBDBAfBDlE3xDIR94POjbkhfahG968HfIUzZUoAAY=;
	h=To:Subject:From:Date:From;
	b=A66U2oTJGvPvtboJmB4as6pfqmJjmDf5iF1czIOTp3FqNyLJznLMggOhG7+xAXBWX
	 2UVLEdhcQxk+3fUwBLP3iRcbEyeHj70SLHchxcXNu6CSTr2049jeb2tDKC1Zmo6XXA
	 BSgxJVGHARpYi+PlPw1euGbxsNXygD4/TwTospRTkkpEDxx9uEKbAtR8cuWd00eDWG
	 2p3QmxOKSiSTNQLNkeA/LmhsexyCGiiwz9T/minXEORzYYcZKPPdu1TgtXFeEhrbtd
	 87+SsjTgq7Yqn8oyvgzvnTcEhNMX2P6jI/HmjG/7GDyYDG1LSGoTaArJSq0utSfRSx
	 JUwLhSMBzfmcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F9D44C63
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849003358.30821.12188977034600370928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b0fc1a949ec2c07b9da1273bf42b70d9ed45ab904ed4f02f51f37d2e469e62
Date: Thu, 15 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768490033
