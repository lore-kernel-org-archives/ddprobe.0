Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259734CFAE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771518894; cv=none; b=XrPclUCL6/ja+OD33SEu5d7ndmiI1X1rgfGEDvUFLcUsk/5yeeMaRQFlePxKxj/AGNefhyfIxEQrTMkFPX0WFhk8cMUW4bmOAbOpXPVAsHc+rLcf6R3NV4NXY6yo3VmkdmxkEqTYCGo0BRzOymMHoN3a2lrlihNyktgQmh2rC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771518894; c=relaxed/simple;
	bh=LD4rcJSXwxyEDMSmIgL38BHA7Jr2sZvDmC8pEsAiYN8=;
	h=To:Subject:From:Message-Id:Date; b=Ed9/KO08/1L56GbBAfqLhoZtyjawJIEszngOjXzMlhhwLMNmA+9FGEXsyy4Wla8ALZ+8w7rMJY1vEGhsFpXGLc6NA1RfPE3AR27Spc6oyTjkDrOyTx8chpa0VVeLq4LPpeFuHE2acgSaosjxeW+oCeBTrtXKuEb1mO9YyAA4w7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI5RBI3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI5RBI3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B945CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771518893;
	bh=LD4rcJSXwxyEDMSmIgL38BHA7Jr2sZvDmC8pEsAiYN8=;
	h=To:Subject:From:Date:From;
	b=DI5RBI3gxWpoqJht0lv5HNpw7b9qG+3nEYZxpnxTADdpdpgqoNT68fJ2TbyQfC16Z
	 yUzZGjPOQnstXVRn9CZaDZQhkQ9xeUJy9ZfujNvkVHkyL2qf7ZEjvDWrK91/iz2tYJ
	 OwOx3Rsn0ZueLDvNA5ycSoK2/T8GPImktC7MrnPrDhKOUJV3FQ33Y0f2M6uwEft2oY
	 WoY30uxEacS7J4bM+ScFiJriVeQg4Y39ajD7GDY499uuezOUYLFwf+TqnI5nDKET0w
	 nHh19HEzx9dDJ7FHDY/J5QpbpC5ddCO0uBpIOWRsFhhOtS/XsF4XFr724Eg5nit3pt
	 fA5nPq6W161cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907EE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151889361.3210.10493197896261603990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52825829b3265ffaf2068bed00df22a3d4a2496ff05270f53054c4475d791d9
Date: Thu, 19 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771518893
