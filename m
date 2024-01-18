Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8212E405
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705614497; cv=none; b=QcHzgaWnQ1+/0/CcZdS/Jfyn6AQk0fp2l7+HqBj5FczfThebd18yfmX36hxDRdmlJ0HCHOCYetaKmyXvoxKfCjF81YCwcK1inNsdVY3DlBc6WQk11mgbUPv+/jUoZB0wpUblUpOTvE7msXBnFTipTile0ObVG7UYTXNuURoQGqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705614497; c=relaxed/simple;
	bh=sp+Jq7Cqxzm4qJ6q4+kINwC1P3OHjVqH68523jofYMk=;
	h=To:Subject:From:Message-Id:Date; b=bBgX7viWMTKwjkXuh8uR1FmAd7r5kdmIJ2vwqZaKXjaecLdGYnYycj/gzkmG6x+QNJPxvhHfc75Oypk2Z+lPjObwib9Z1LblAhvuc7IZK4FbUvciV5U4VJ5fNyum+3abxwHa8v2CVMJsBvWfBWrkjcByWSj+IuYQ7vxAyP1Vy+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVXlW1Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVXlW1Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C6AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705614496;
	bh=sp+Jq7Cqxzm4qJ6q4+kINwC1P3OHjVqH68523jofYMk=;
	h=To:Subject:From:Date:From;
	b=LVXlW1Vp5GljBxbXg/ZWw57jgnSqIRrhF6w8y0IVD5GzyrLgMScZPXK/bwKF/uqq1
	 DrqkGpJ9TNGYN2Ov8uUd/w0ovwoQegV91AgXYVxbMvMU0Ge8FqenSNFe3hOvG+SUDk
	 ns95soS85UKgT946i/RWoMPwXzbCcaGtchoyeWuvrtW/6MGz/Rb2sLOMEw1IX+6shR
	 jq5bCcKf9AYA07nNomvVMXOe7jC9vJAtfCcy/NnORWZNM+2JfjtGx9pOy/Z+IqJ3l8
	 at+7CtaEidWHXY8aQLwOa1SNSqGFAigp90Qd+THBnbauJuzY6lxr1N/XlUit6kbbKi
	 KJ30c8/1awpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BDDC47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561449639.11718.8083137568087570534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4187523941dbca11d69728acbdf85967f2195d3c55811100bdb90bcff658899
Date: Thu, 18 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705614496
