Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A030126C05
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746053395; cv=none; b=NZ/DW9za59oNVqWahKeZ7UoYK9HYsLZOyGIMqx9H26fTKvCDOCHP7xjBUutfv6P/TG62v4EsC2m3IQmwxE5VM52gS2z/BugXmDvYSmx3JKp+SoW2QDYWWg2TwAf5bHd3Wi05R3lvKr8TTs8OlAD1Vxf37BcGakLPexnk0xTME6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746053395; c=relaxed/simple;
	bh=RSqw3SqQuIt0YvooM5QUUYEoaPdxzpOUGdsrVLMUUrg=;
	h=To:Subject:From:Message-Id:Date; b=GCbvUyFxo4r5U0rb4IxyhKWOQSyD/Ge+UuUm8wjTrqhXx9u4E6MaKrk1txUnOD3CLQZ+P7x5SWvLQddn0P+hzStom6PwQmrd1hUPnTMm+Z+ZM5khHErRzWW6/57U3Xcw+Ls1IlsSUeUMLHq4vCopYH183Ccfd5jvO/Y1AB4ypwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFdp8IXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFdp8IXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DACCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746053393;
	bh=RSqw3SqQuIt0YvooM5QUUYEoaPdxzpOUGdsrVLMUUrg=;
	h=To:Subject:From:Date:From;
	b=bFdp8IXwqY+J10pEqO7m6tBoKMvLpiJFKMdcWFPJOGMLVvjt/WWkxcSoEfYDbeBCg
	 jiCTNPJkGtX5w4bA27OHtwNJFznAW1UcnTacNQ4qql2xug0fWjFauBGYeDbNQnMqVQ
	 gs13lYajO/ZSXFUTaI3c9iIdleM4eHQ20EazsAwQ+byQhbU1RMhAjNb54qoAN5qJBg
	 NDtNSBcmL64WC8eP4Rs+sv7LtsS/C2JTQ/yNqaQivz7rhVBY8YtM+reY0+r+NtiRmC
	 hGdGmk1iNJNJsQowNocwGPMJO+Muq4lefFjJnRM74O5RJB35MjIqStBUPnAaI2/Kfj
	 yZGJbJsLPy4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12AC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605339357.7209.12828942744948390758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ca58702ca4c2910538bd96dd134b9096437a95a944ac91eee2a2d972d29a7a
Date: Wed, 30 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746053393
