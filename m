Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B660231852
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751444994; cv=none; b=psIFQ+kcJjeX6k/uEaNtc53bw6Q6efIkqS0+9HdBAREaQuno6MMlpAa261wb2bFyoU6hZ68OQCPSCrZ+H4TjjzUkptYZsgoV2cm+S4YctVi59qaGw3lGRQgpxRPfjrYOkH0WnLGYy0u+2LgKd3RU8RERj1AFWkhugRK2JbzPDB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751444994; c=relaxed/simple;
	bh=v4yY5o0enX7QIxNiNckESHEpDA82cHfDTFWfSViBMmM=;
	h=To:Subject:From:Message-Id:Date; b=f81WbfZjvT+TS/HeG7yzS+JoqbhtQFbv0MZSB/Fa76+2sa9A1cQQDYi0T07NUuANYYsd0MnROqjCFPFk/oE8yp/00+Ocmlp9IRGx0wBRc4xXCMHL8MLNzrmeaOv7Ws2CjffS9aOvDAiSU6c1iIsRsXJeWoZbsrr4XqpAKJQrPlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeBg8rmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeBg8rmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1AFC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751444993;
	bh=v4yY5o0enX7QIxNiNckESHEpDA82cHfDTFWfSViBMmM=;
	h=To:Subject:From:Date:From;
	b=VeBg8rmGDMTGxLkffNtL5/7oW9aLzDWId4LygG+OrdpFOEKTsQj7wxdZxmzOBxTx5
	 Thh+uWIb1QDNkYiOechFx+rvy4gcLfsl/emLr3eY5onXimAdRZCWw2UxOF5YZeXTah
	 Zh+TCG6Ktb/d/0Y/rDEdHvju/tUzG/VLiz7leVo4jbOi+qJGsh3DJQSqBkO7/3qVa9
	 dmYQnqURoiImutj7X9+l4MTN9ZXAzeoKuZskg2DCR9Bxevy/8SVIcCsNkAPyPMHHaQ
	 erkzkWspvCkRJUI8fUfLPEr8Xctovpr//lGjNdWsqiBgb7pwR/EAQpl6Luj13VIL9U
	 XCaBTBVr3yMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA10C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144499357.11538.17018885423937560376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f097693e0204ec94dd4044f5e16b504ea037a873f0f491a0b235c7a5b581c6a3
Date: Wed, 02 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751444993
