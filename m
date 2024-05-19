Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A574D2EE
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716141743; cv=none; b=dB25Jo0Hgx2Evaw8+SuO+NCbiXR76yeo+HIykNUG6ktm/macY3c3Q6ADTH5gnjE2Aa6rRDma4fGZ056VLzxg9ng8nrtAwu+jiGpvVC4ZM8zXi7X9st0caF96HLf709RCB2EcyseJl69sJW1YuIpL0U2V440E2EKMu78oX0iShP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716141743; c=relaxed/simple;
	bh=JMdyIRyYIk836T16sCBqjMqlf/F0Uenbqct8H7KtJNc=;
	h=To:Subject:From:Message-Id:Date; b=nb4VVNw1CzDPUkhlhGi1vDS0YuCvXNYMQAsXgIlKidLmOKkUB2sml8hCc1Nimggx2qLE/2aM/j4P8ySqtMUKEbm3/Imt8Ac+vJJoiloKdh6PIR+aV3xbsRAcPwarnbypwR7J08Nm0n8Le5jiZk5j7FZcGEb9YYbgHbkW5yqkXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N54Cwjz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N54Cwjz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A6C7C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716141743;
	bh=JMdyIRyYIk836T16sCBqjMqlf/F0Uenbqct8H7KtJNc=;
	h=To:Subject:From:Date:From;
	b=N54Cwjz4+csKYX89UBAX8s3ETauBWEyOgRv6p6LBw9A9pRm94YJ48qPudGfgvxGMn
	 XR+sYXsF6DluqkeYTvqpcmCpKIm68xO9J4Cbxsfcq8gP8TPlQaWxjBSEDTz/f3Fic/
	 2IYjmDDEvEHIagkVuCDsYuQhIpFOskED9+kTk+ELGjm8L4HuSVmphpGoBA07SrtMkU
	 3qMkkt95sv71Pn3b8ENbPMjf6vkVUwvxx0GKUC6Pa/O0Spsjh20djRnFSQmPURuooi
	 YJC5TZrMNtSmBNyA23mbhhUysEGW/CWlwkEqTZCGkg7GA38c2QjzmCVcB/QuuQ25tf
	 TcUVssQ0S542Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAA86C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614174282.21468.12164353492334783229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3a3770aabd1773cd37b03b20515c6ca1e1b63d31485f1fc6f46e6cfdac118f
Date: Sun, 19 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716141742
