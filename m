Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CDE34BA2B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758498594; cv=none; b=ECji0Qc4NYIkC/zbd0zN/q/Fd5Fj6nHTnLK2QHIwPYEh/UHZfQpzdd/4YSE6XzEsbKr+GUAL+ZZt9BAZx5KcLckf7XdVgAvaqpHxmFpcbAKhdvu0RCGS/g437PFFQY8UWIqk8lesv7qV2YeENvp3HvEa1Aba2GCQYufwzJV7C/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758498594; c=relaxed/simple;
	bh=Fwho8zkBT1lcBcSAH1L9Xs+gskMu7ZA1UYAkllFndYU=;
	h=To:Subject:From:Message-Id:Date; b=FNXlkfLrvfEW20rMgCuZub/lOkych3bknMPkYebBk09wDJA4K+FiA5BM0aR5px9J2tIKHEth/HqYaFiqYaKjFCUZ5Zsq1NAeA0Lyr0N1AJkz6CGRReWT7VqkruvrpZl5/CuJ3yVIHmQxeVJlbdiXgjyLM8h4xQotV0IcC5SqAUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwngWOqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwngWOqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9564C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758498593;
	bh=Fwho8zkBT1lcBcSAH1L9Xs+gskMu7ZA1UYAkllFndYU=;
	h=To:Subject:From:Date:From;
	b=JwngWOqCF4/+FQk/eb8Qwix7N00LCjY0pUSf+t0kdGRW4CmeAFIe//yVM+7376kg5
	 3ExqyezLNN40bbKHIuGdZqHllZ850o86NfXqcjIsHInA4AGki6tkOKAWPGlGxPmvoa
	 G0m+U6wyc1wUbmn8w2UGxmi1ZzUdNml5V4CHjjDhz3Okee4uq47bJrfr5E+vVvBRcx
	 1I4K1pzByzkS1ilggF7ckKAhHChNYJG3Yb1PqnN/mVhCl/ZlfTsw3gKnBB0Wa+PWps
	 1ahajjTJNOMJtvE1GOcUaFk6eRJtBwdi40xFCuEpZIxIouSxxkAiH58++LBs/HsInY
	 Bmd1PwovhXR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5CCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849859358.20443.9643605940306586920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0760ec04b887ce9ff22a2fdb1ffa6a05a0bfc0104d30da4993c34f192e8b0620
Date: Sun, 21 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758498593
