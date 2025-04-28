Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7A20E332
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745868595; cv=none; b=LUpg1uK8O1VU7A/VREZkwRuaoN9rPwoCxCreCbMfyPKPW7PWyRmSROcPYgUY/w4IJxF/BNwt5HeCoscTfPiMXeQK6ACGjbg3aGCxf6lHjYwm473dh0cYl4Skd01CElERRjtMx0mPiF5q7gXWxmxcVdFGeSOOqL2IC2SdVdmwGK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745868595; c=relaxed/simple;
	bh=nPyaJqD3+V0bbMWwmbFaskgEbCAH98A3Fq7ja0+yvv0=;
	h=To:Subject:From:Message-Id:Date; b=SyIPYPy5OWs1UkP5+l8Q5Mmv3p0HLQSpM2rM9sUGyAmuaMk0vILtzhNHKcQZrOJiJXkxpvguxeSY/TKRERJz+3zWqo+yTJukb4rGiNpHqTHZrhCHh0K2UTvizHYkCOjtQkPWJjxflvqhrHOqHzqX00bDpJrkbilW6BR4gaWkXbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdEKhwxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdEKhwxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745868593;
	bh=nPyaJqD3+V0bbMWwmbFaskgEbCAH98A3Fq7ja0+yvv0=;
	h=To:Subject:From:Date:From;
	b=fdEKhwxL5FhMtcUCuAu9B+C8kB2IiZEoCKk25WsAg9fRmv4hMnXBeax2NX4PuaUkf
	 0EJoM8649cr46a2PnwKnUWBM6staXradtiCGDDQVkCRFlXMT1bdi4cXuToszPXLyN5
	 MRTZc7Bmtc4N4Tcj7R6ULj+lEwcpAH9HF/x0mqwjM2Lb0yKdoU8WXy8SYcRlmnrtjv
	 2jqI9Ur67K07imj/COt7p8LurE3PyivDI6D2pODeCtqdn22jWuNOZ/tbbT7WocN7oz
	 L+La1Te9aPy5V2qIKqjxCvunue9fkDg53B4A9HobtlAir2OyDuHv95UIoCvnoF4rIe
	 zAXc7d7Krvmog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F480C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586859357.29175.17137789556973849830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5698c6554b2d32493b0fadeac7cde00982f44b23aefb576f9630da91389fbf34
Date: Mon, 28 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745868593
