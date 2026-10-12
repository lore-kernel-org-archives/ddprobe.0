Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B10330DEA6
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791849034; cv=none; b=LYtdwm1L4LDPEyquhuZXriKFC8vlVGqvNyr/lGtYg3dM5QCBqRsu2ZlJ5BEsMvZRzzoDR7OdYRq43c8mVOILKb5zbghRxniAMUcftip5i4qF0P0njD9GS1YG/qEBiCMIgHfpQc6F0khaEdxB5cK7hMyi7HoZGZbJ8ZwO7aLU0aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791849034; c=relaxed/simple;
	bh=Uk1/Dxdob5hAfan80HDQWobzavfhedjvaJecGCeJsDE=;
	h=To:Subject:From:Message-Id:Date; b=XujegZOxBam7ZZEvNUwpJB2KMUZBeyDjSjMWN80+1a5V+1rm8J89hmNdgGp/FVnBXhy6dyU6WJ2WCXgEhBgwfNpc/ALcbtS2Ntg5bs77lYEczsG17xkiem5aus82RpVDpcew6UwnJ8idi4OwSZEQTEq5gB6I6rSWnkfb91/ZrPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGdBqcbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGdBqcbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2292C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791849033;
	bh=Uk1/Dxdob5hAfan80HDQWobzavfhedjvaJecGCeJsDE=;
	h=To:Subject:From:Date:From;
	b=XGdBqcbDlonXv64zDBQE551w9OzrIE1iClV4e+aIxaRWGs1KXoDGuVHodgyQkrvFp
	 aLA3WbWvM2Uctg7mE6vh8pHfSf+GSmrD66dp2SSX8LE7MuWi3DWdF+4Cf/Ez6LVBQZ
	 7FmGSBkvStbFTC7lXLWaAfFnGL4is3m9vD167Ku7+0t9NsMfLHBYdw6Nj0Ib60gPrE
	 aGzU15HintPLBouvGIYarOxRliDAaGkxSqDc+nISOo46Q7FmI7o3X0ve/22ppi8SBq
	 iAybJgOBM3N3WBGrBJgZA4CiyNA8tk63M60j/IFHyfMqhLUP1VUElc77IrWTV2jzzv
	 0VMn8yveCcJ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB8CCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184903368.11589.4089196138160579497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998673d1dc4d00fd69d49ed1504083b5f54357d1bb406372ba1e53d049cdb5da
Date: Mon, 12 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791849033
