Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1981E25760
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753922996; cv=none; b=EmwRqwwWKpr6q6Z2MvK60p5vuYYlaPa3e8Jxq9AIqeN7Y0z6Lts3RzV8iDhXNIElFEnRFoRBL0+VrHxSm/y7oVQ5wdpnkAauDSYI4I12tjdHvAokAETUPhoV8R6wtSGOGoKnaFIGTC0AUFZ8+F6TlYWN2kONEvI3S9gywKox4g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753922996; c=relaxed/simple;
	bh=hQA+eyEug45jgx/E7p6I57xgXP3hqBJUnzShhdJWjdg=;
	h=To:Subject:From:Message-Id:Date; b=OIfNXg4tF03b5mtK1tPiWezubszKpy+Ac2eiDZenr0VP/DS9txYrqWGYSIU848CDXf8lx/OxxzteLuTvrP/wqfIzPcNfa+3KWvuOYkDq6FxXcDzBwQojPexlXvjwn0JlNFmoq8aSMngWsk0plcac+f7RXoJis51dtFm+n3OSH2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBtpj22n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBtpj22n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3B0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753922993;
	bh=hQA+eyEug45jgx/E7p6I57xgXP3hqBJUnzShhdJWjdg=;
	h=To:Subject:From:Date:From;
	b=BBtpj22nxIuh1tbw8Pw3N/Gf49xO5c3t7UsmVwcR8PQFvSJwZyedIMGB9qF8+GVwl
	 iToyDYe+1pFKMxaNWlrnKIR2oYPlqG1iVEWKZTrK3a1SvxG2IXzsBdM8e0qmP1QB4y
	 uT/7OEdpbDlJydxSgk3DHjAtJcQe/nOI7wvH/6mrWC7TlnlvdWQMjQJTIilBL/XBEz
	 a+lkQqfUtSDgW/yLdvZPCfrJcw7Z9Ckzy4z5j/Dz+2IXFnXAAc0ZmZm9MUIcOqCnrM
	 hP3yC+I7AkEfshnYwMZfeg+9hihyeAmXaIMBCH3Y/f2BUpc5IfBT+rlX5XO6Ptdoeu
	 aos4wRo/VpCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EBC87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392299357.28029.4287944090869657787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987d7b5af70d9504bf6833f71c6fa758b94c0f4d51df09418693fd33555b31aa
Date: Thu, 31 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753922993
