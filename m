Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128AD38DE1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762427994; cv=none; b=CGV0WhUcDvtkteCWLKE82FTB5Vfrq7B0X7cBr82UHMg6kQOr8sb2kY0YJCoKfEadcQLbOiS+i1lgn9MgMHGR82g2yJ0pIBUvQnSB/w8OneUPQk1Syx1IU9HZpgIzzJKN1/krASpChKJAs8KzOrrH6q2AY0+njGKWsuutw0P10XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762427994; c=relaxed/simple;
	bh=RrtT4WuSaUQ63iqsGynrzceBc+jTVvMz5ODbtFfDtas=;
	h=To:Subject:From:Message-Id:Date; b=ZOnCnxBmjj7qWKztr5AjpaOFRxVAqzmhKSigPp7SGZTiBJnxxmJLqAl4a3oj6+zsFdDFmmuHM73JDT4Zt3Su8qY9A3jIwRe41byYCSwSiUSRNmObLl4x1L6X3Tpop3oIJfS7ciyLW9PqHqj/yBU0wxO7LGpocOAy1AjlCjYARrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS3qeM4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS3qeM4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762427993;
	bh=RrtT4WuSaUQ63iqsGynrzceBc+jTVvMz5ODbtFfDtas=;
	h=To:Subject:From:Date:From;
	b=pS3qeM4uPdtsnhM+bB3bVaVOvdbo5rya6QTgoEDFckvQmlTCxbsPZcBYi4ji0CmuA
	 QHm5Llh7xdGIImMRIuYwOPtcvzLz123501hRoeYZ3FExFK3pvXhGK2J3uxQKN992xU
	 XMH+qA/nQHbnB6Js1CtbEJieEWnNcJ2UUlVoE6xtBFT5No3Vp42/nCcFVo/wqGmMiW
	 KUNj33Sfq5JExVFQNKrs0Ogj+VVCAP87JYExIQqKEmau9cu1ooWRv9IvhFeng7YrMI
	 gb25GuL9ztxtXQwbhXsxKSI7Dq36jik5bV5MqfAbjqQ6hCL1RIFbXPEyBuHxo0HzJt
	 mXhT7UqRGBaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D96CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242799359.10215.8781306670660697098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b68c30c7ccc078ab91d68fc6b568f7aeab3bfa3a35b5ebc74749f2f0613696
Date: Thu, 06 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762427993
