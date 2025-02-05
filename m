Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56373230D0E
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738751154; cv=none; b=bwOhhYweJ00qAicdTaCpsXX/2A3skKiHqBEz/XHxowwUtHWO7X+YfA0GKfAPsV1SsZDIIUYAPFqERK92JgbH/5+pUBstx/9d0m7rBT1NAL02V8O2LuKlEgAnPTj8XIOpUQDniU2pD/nquDDR0201r8ncFSUjZvC9CNaJgwyg3xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738751154; c=relaxed/simple;
	bh=yemAsrH5o7yNvbz7+npMZFKXCNsP7SpSEuMWUMl6x18=;
	h=To:Subject:From:Message-Id:Date; b=OE7xGVN2cfls9MDeg4Xqk9tldRgJp05MgScakU7cKOevcRSeImPxqpD7He3MRBmg+ePiqaA7/oTmxGF4tfUrIn+x57z3QvaQ/0bE1I3bO8n14fMyeys8aXnjUHmLQoMBi2G1QF93vj5kzVfPdkHwe0z4UrI/NJdguAbYvzGiEsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrjrFXku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrjrFXku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4EAC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738751153;
	bh=yemAsrH5o7yNvbz7+npMZFKXCNsP7SpSEuMWUMl6x18=;
	h=To:Subject:From:Date:From;
	b=HrjrFXkuFplOfEnFu2FH8xAABT98c+u/LPuCDU4tZIZ/+wwzwtVsJv6RpRC0cc/dl
	 x+NpCf8zPWKzk5R53T9jGeCAuNJpbqGeSjssCpCH0HzSBFGmjpyw8GC2h/vlCG6rYG
	 ae3vGCmrob36o/WjByoRTprSFCuokTjPAovMxwEAfMj42ylXKyTzDBSBQRRQPKkEu+
	 8Jc7QZ1/yuwozJkta8plRYu4k9tVU6vZAP32+aIUFbIC+f0Mx5PRMpqNd6uXOuxMSp
	 p3zaphS/gxzVnBd69IBJuIl/RrepGVb8VmyG5P+Zx1iMeUANIQyKjVFqzXeTZ74+hW
	 eqyqtwIrElPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE9FC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875115363.2004.2828222588452561081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd2c02ae82f64f2da215d4477360ce92b4bc920dea2c2cd4607ff3f4256087d
Date: Wed, 05 Feb 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738751153
