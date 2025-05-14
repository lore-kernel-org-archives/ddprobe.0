Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2527B506
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747224595; cv=none; b=pootmjL6BHoHciDPZRAGh0P5eDY6LwOafNIVzIcvWsAooSYzhko0wZtWdOffQOvaqU4XDc6YG3a/0C7RgDZpZ+zStG8eeOgHCiZrTdRPs6bEzD5YvmW9wIMhHuYnvo1LGsf6yO3hW7x/4F3QPw+riDvh9j1YIMuSP+tvCK2BH6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747224595; c=relaxed/simple;
	bh=BcBundO8UQy5uQvngpFZSOZCj+RziMsgOpVcwC0Q9AA=;
	h=To:Subject:From:Message-Id:Date; b=P5Vh+7P1VErA40Zx6+XnWlk+GcZN+cdwbVtQOabpBv6z6Q0PCvL1Iit3oyrlhSGx5usCEwLlq45LMpl3QiUixATf5zMPhP9c+ctfJEtSXVJXRx9gX0PoB+6AH8MUTS5KMULdddkwS81FlJm+6ppRNAJ5JoU+c4yPgHDxn2ZmIvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDMcPmrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDMcPmrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C87C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747224593;
	bh=BcBundO8UQy5uQvngpFZSOZCj+RziMsgOpVcwC0Q9AA=;
	h=To:Subject:From:Date:From;
	b=rDMcPmrPtaAvxdmhWIkF4ECGo/+LLXtCBaGVQ60PIN+auuuPqMwjQg7xYTuGHWdC7
	 cf0XNJ6f6hnLUdNML7NKa0uy7+WgLpbNuhFmMKKBEcrrYusN4DWFe11d3VRtASilHb
	 LAtm3sso79hYExx33wHVjUNaEn3ESPaRXPtfLTdTm+flzV6Ll/N+14DzuiK46WbAB4
	 Y3m5HO5Xnmw0B5I2oQm/qv+QQT1jvg+R+qzaqYT3Tj3fLseGfMJlQPTY6vtZCrKzjf
	 4RCT6Dam96XZqGebK0sU+bxCvTc+Vzba8EQtEZjVmf27M1C9Yq9Jiz0YgqNfLXAOAd
	 7lXHX6qZJ8btw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66BC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722459357.22801.6790539798986870526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e13a86dc619f067ba930d93b8b1a2be970683a1038d9cbb389cf226833173e
Date: Wed, 14 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747224593
