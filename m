Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DF929A0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748035194; cv=none; b=cHf76edIqWMHiewf6bZrZcKc6cJ5kvI07WxdyxWabmUCym2Y5PJISYk4T0yxzdlpaK7fynCh2uz62DO1KpnRPxmbOT594Uqu9+B5Guw3Hg3wj9j1mfgfMdUyTzk51/7QFdVCMYxIWXbURvNrig1pxW3TQvRbHIQFOR+p97QQ1hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748035194; c=relaxed/simple;
	bh=xT0cDFuHOYk9eNV4sXzVn5T5xNg6n9AY5WNbhLUFcLg=;
	h=To:Subject:From:Message-Id:Date; b=qbY400H2fRqXx8ed09pUiUbIVqI/22GZ64/l8ZeOgULCoys+hQPbxQd55o/yWBnCLc2yIGIN+GdEtsOLZfAscnz0orGEq8RVoeiqLDRWbo0hyCzS4IvSXUNeNu3Yh13WV5z8/AMsv7zlGrYxHbjq+MyPLQYMoHt5yBhmkDxD/54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUpdDGW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUpdDGW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748035193;
	bh=xT0cDFuHOYk9eNV4sXzVn5T5xNg6n9AY5WNbhLUFcLg=;
	h=To:Subject:From:Date:From;
	b=ZUpdDGW6Zf77ixgFVHDRuvQ5kzq9Is8kAeWGSViKS0mV71wLG4Mg31jVYVLCnYTL5
	 Oe2wa1ZQkPoQKg9vIWmieXc/hb+uJ8ao030QLBCosMAxvxk2csOSVme3vVhlGytDTK
	 q0/NtQJ9A2epzh1w6eIW4CAUa0X1cxGRZXFYJudGxm4j27/IMvK3S+Tlrlqh/3pBmM
	 y8fRiPFRldEBtWSnVNlwZabKjUavrZHvNIdqwD+b5LNhIOPFbsUZO7gGRBrYnXLBPn
	 nNR8nnnOnLQ4mgunlvNTs90AUsvVFfMNaauAJGXa0no1y+5fGJDm2PNhE/lxhYofmd
	 Z02MG31CgFxpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025BC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803519358.6836.13123926044720811643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59be489b9460505926bb968f22b1a7f8b1f5bcfaf26d3201783ce2d6f6fa591
Date: Fri, 23 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748035193
