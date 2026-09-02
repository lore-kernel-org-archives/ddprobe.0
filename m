Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A08244667
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788321634; cv=none; b=oWmB2GLg2qFCmFnSH+ajBNUhyhc3/kO1kUw/u+HPQ4yDY3ZhhLdcQ7mKnFItAhNtkSfL5q3W6BklFUek4tLEY6wrn65qhiIYqUArvm82mz/2qciU5WuZxDzqH97X0mYy3an1EonImwKs3vnZ5bklB7BXFTj4bKvw0p77k+P+/WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788321634; c=relaxed/simple;
	bh=DX/JoIryAiNuTKrW6GVS2thT58550yNOEdA4/vOAG70=;
	h=To:Subject:From:Message-Id:Date; b=eOQpU+4dt/nI/SuPkEk9Ly9f2SKFJvnRbFSkTC2QYAHCqjEuZiuU2zfsd5Y/Qny2ApFUJPx592nxOMgeG7cOBs7ZHJrIkBvRlyzlwkjEY5CtGBEwu3HkWH/GQy06UbHb8eTbLmikkVFxgPnUEXx8kgvIVExxN5FqRnZd6nZoZ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuiDPmtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuiDPmtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7F5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788321633;
	bh=DX/JoIryAiNuTKrW6GVS2thT58550yNOEdA4/vOAG70=;
	h=To:Subject:From:Date:From;
	b=BuiDPmtlOfjJyK1KUoBRhWweW4PLR5XngS266czVF/vzOmLPaaqEuW/kZ5hz0NbnZ
	 TyPntFNFc4345zEl5HvhUDFlCgezs2lDb02AHMe7HvK1f0DyuvGbJ2KmgagEYiA5ut
	 mOjhLBSurHWPQNm/ibwhMp1FYzNd8HbRkepTMLTaOcqo/kJ6Eu0/yvNXsfPDPUrucK
	 614vBErJP4+rRQagwjcK2irHo7PT52OOXMXPSZRiieEtpJLuM7Oh2g+GHcdcKnXZyT
	 ACmmaD2PU6fEoDFm0gXEGydmPWPmVAyQWGL5F8n8KVUOjipDDHQXDy0PyRiR1HRzPf
	 MtQrazdonV+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD076C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832163368.6968.17292279305901185638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfed0bd544a4dffa658bfe08b788dcde6157b89be157c89b24e332a8092edcb
Date: Wed, 02 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788321633
