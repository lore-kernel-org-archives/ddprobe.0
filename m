Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23133156678
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763840514; cv=none; b=M40zrPsWqtxE6ayDmuVFdariOZETN589FM1u1Ow7FDOcxqrHCqPIKrpJlbAdJcX3S+hNcseGV8FLaQN66OaEbxrnkdPv1vODFaH39M+GqsRey3oAPy3q5aoQG9vUzxUkfGPTE1MnhND6o5dTIBWKxeDWbY/yW3eIg84E8dhpdhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763840514; c=relaxed/simple;
	bh=2FqJIuuz/RLDCbi+WY6rLcDnI9diJ9tkXZ1QRnqc/sg=;
	h=To:Subject:From:Message-Id:Date; b=Vwixo4741AwklOn0figPQ1uMoJKsAgCuOfny7D7ujMElz6M+3+V6n4vY3PYIj3T/mLtO1+O8RBrLv0kNex/GJa2hVhrbPwJKG6A6Kc6exyZ2LdVZUyREq4zVWEfE5QsVGFe7kA8qAO4kMQrMcEHwCuYvsGAsEOohBJacE2Vjp2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAlPjKLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAlPjKLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763840513;
	bh=2FqJIuuz/RLDCbi+WY6rLcDnI9diJ9tkXZ1QRnqc/sg=;
	h=To:Subject:From:Date:From;
	b=lAlPjKLaIzotaNu+487CjQ4jA5JHWEz2Wtuepi4GETRqDnMQX3DdSHj4wVDhLahkt
	 hmyL7tll6fnXNpnnSL1eWlV5DSjLoz45XBA6jMDM6Uqg7ZRiB7boWdY291TOHgJTis
	 Bv4B0/AIidIbAdacUUuDg9z4g4BhLze40fpo1rAdLjICRRl49cxi9QrNvJcHD+QDs1
	 pm8N784NUQTMl4aMr27Wcmn3H85TKqfh0XTa7TDCh1qQkQaYsv0N4j7isPbHySvL44
	 DsvQ4Q9MzX+GiYfj87bOi9wMe13BthhiYvsFSxb3ABkUR1kDMMbRX9JeUBg3o1XCGi
	 KQ9yeRMvAcGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F30CFD2EB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384051358.3023.1754261078693043609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501695988314f31df0facab7ff792c45196c8b24f31009b5ab38265edb6f482a
Date: Sat, 22 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763840513
