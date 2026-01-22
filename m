Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60EB3446A6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769123035; cv=none; b=Ce9wyED80fw31Zmta1fnr1+PskkWB/FogWBBGB0F4g85XVRDvuZ929tBpwaS1/zBmNUmdmUG9sZne2Rv1/wIxgYxTJjxDxFJaLRHf/x3sT2m3/79TK+L11mhK/zqKCMWl24GpV3z994KIVMbw+FLa5YX05yvURCwdwyxZYXRt7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769123035; c=relaxed/simple;
	bh=HNIioYiKU/x+T1fQ/M3RJ3EB9arxw1ga8XnNUptzYPY=;
	h=To:Subject:From:Message-Id:Date; b=UARHyqX9iIDzV8RtdVTOXbxauOJwXn2c97SQcuFCA0BEwPd776+BApkH26G+PqLAegtGxyyTUhuPdATSGpossLpCo7YVAD4nLnYcchs43CQDkaADbeKAfdJGIonsr0mNEem3uGxxkNla9NOHr6a7rJ4SyiQQzDwSUDUHDw4CrPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzvkg8lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzvkg8lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2FEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769123033;
	bh=HNIioYiKU/x+T1fQ/M3RJ3EB9arxw1ga8XnNUptzYPY=;
	h=To:Subject:From:Date:From;
	b=Tzvkg8lfNCv4sLdhrgqpLSkJo7efXqdTJft98+qsBGh7k9/LY5z7cA2/L3luoebU+
	 4JZ0Seo4L9SN8lqNq0DKDPcVrxkDE5cq54TYRzmTLflu3dQW03DqHfTF3T0qda5+43
	 QGIYTr9FB8hXX8Y2p2Z49ULsNvI9miKvhxBcpIFMmlT4bEgU7LfH3MPlJ1oZuwOJbq
	 GgdPlSUxGUztPV8RUjrvmP/A58xjzOr1qhhMJdHpkEoaGWKpOE6JnhPGevJu7vSAsF
	 h2xzloYOAz7DwaIdoI8a3QG4SVu8zOSqiAv2p+XIfsd5wIxOQmEGTplXfP9dVL+HXn
	 4md12RDPUekSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E5D6CFAA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912303358.31443.491708245799883576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c5292826766caf4a7dc7d77a23095726f324a56243de29ce10e24596ed3511
Date: Thu, 22 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769123033
