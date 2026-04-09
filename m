Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB5E3DBD7F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775754454; cv=none; b=TvZWrDdrTCeimHKS7M1efBz3w+7bLuWG5nJVfXjh3BgIFr6Y1fcplw+PbzDjmcAUlDw6a9DHCHl8eE+OvZipH2xTFZMvn7v4Sv/1oNHLDgPuPO8LKZXkmBGZT69PxDJ41ASRymSeSLD35qBkz0BwFqKt2T92RuKBFL4rVkD+Sxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775754454; c=relaxed/simple;
	bh=nDrWHMsUGKVCdokUPWQ3Io3hmgQWAgTPJES/2krfx+s=;
	h=To:Subject:From:Message-Id:Date; b=pPtcmG9MmwodYANLW5BnAhU4jnPROOlJUN3HrMz51gJqjpFl9C2HMhqeFmaSCnTRqHsgsNIVyWZY0GtfLMpvD4YeCP4QBOBu8AXfIOodjLQkCUmEJJmXzPOyFCvzDVECf9laLfjGghfpLJOIsiUEqdunu14PqkUX064Shvcecwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQniHWN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQniHWN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A10C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775754453;
	bh=nDrWHMsUGKVCdokUPWQ3Io3hmgQWAgTPJES/2krfx+s=;
	h=To:Subject:From:Date:From;
	b=IQniHWN/gUglnCTywdBVkdFiZo6YBC8dBy8Rw7CjXQaldzzdsvd+i1U9f/CR2IR9F
	 2L+vGVqecEKJlEFqu8Z/BXToWcKlpeyqud7Mxuk+Kqc4BmGpZ+5tRoehi99Xql/DKH
	 Hf7xPgtRbF05RfnN1UOorM2d/5Fu6b145DudCVCgnNScIMDFy0jouI+r27pcp2Hdyv
	 2dujGuCIoL6pcQ9HkaoZWTye2/E5/HYuGN+1ZG5yN/wri6NpwhbNEpee6yM1qAiGZA
	 gDr79Q9ErgXRRpEkrfp04k3ojqp+zKSwuqw87EwZWCzjx9ji4bxJJ2lwTse0U05CVW
	 paSQVP4RjD3jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFDF364A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575445370.23114.8322998000777293986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d85d07031807b4fb560b264b26ffc0df64af8997750d41f72b65f05c7e2fb9
Date: Thu, 09 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775754453
