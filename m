Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F508194AD9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606643; cv=none; b=N8GiGD9FQPl/PbHEcs/9i3zTo5gadSGyx7k0fT6Rg8VQTVKqZlDLo+khR1XHuoFgdc+lNU0LIjRTcp2maJlTpaHreGpF+BTywbY7eM8aoDLTN7VHe543xzdAuia5mvHt7rybflCOsI7n7UI+HZxgg+UhWlx1WeQ+I2hoO2xOA38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606643; c=relaxed/simple;
	bh=gZXlFLv+98DB99SkQUzKN7Lf75s8taEVmOn2pdTpmBE=;
	h=To:Subject:From:Message-Id:Date; b=AC2BV8wFpEHbD7wTtYJj+LxKfkGTAKgBnFNrU1yiG8vQdhM0vWrWjK5KUGQFvCH0oiBEmbQP4s553gLh4KR4Ugo5rwj7pTmqaDrx6QtGRwmfhy4nfYrS1Ci4UEG2q0cisQ1yt8mexad30H77wnw2lBUc+2STgJw7i1+AYVUkUdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkeWs4YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkeWs4YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ABC4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717606642;
	bh=gZXlFLv+98DB99SkQUzKN7Lf75s8taEVmOn2pdTpmBE=;
	h=To:Subject:From:Date:From;
	b=mkeWs4YMea2GoiHptCcZ+9kOW6niP+4bQSQikhFcElvqyNQgt/ahkXD+QMs+8DKzn
	 xnwL3pnBoG6bH8yf/fJ0Ysgsns4ynyU64stvLTE2p2aZ/FolnRnR//p+MUAQv68W8g
	 G9N4aIwQP1vUYdJaM44fbf1lYbwDu9PSs/68zgizoJpK1IOueKE/9Ur8Zn+hudYkhW
	 P+529+0uhUPuARZjfMdxfx8458Z4WJSvOAXeWGTMOYwcD+lEiVsXS/mWzefgI3nwH4
	 8cPKaeJ1f8XRDybajbvrNoeUUvRUSKjfEqPX+6+gjSGbvIkD16wP/JNxTNf52dZow/
	 IaSEkOFBCqQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEF1C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760664275.9703.8298952025360193210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193d9008721546f70c7eb76f5a8e879427763bd4648733898813d2955bab334b
Date: Wed, 05 Jun 2024 16:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717606642
