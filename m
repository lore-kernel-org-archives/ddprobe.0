Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116691F0E2E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756536596; cv=none; b=TusWKXIswkiqqGL4Nae6xbHg7mzdyFtIMY5VfDtqqFHzDmDK2LewQcBof5xZKK5x3M2TbhMqhkPJwj5NujQDgrEqBxx1BSMCoZE2t2wCT6eA/lvrHOh2+UnNlrxM4RcrAYd6fZpkSP0o9MYd3nARoPmIxRw0W+S57j0KhiOvDHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756536596; c=relaxed/simple;
	bh=TedUDgxCJmFW8XkLEjBLzR8FMglxynap4MBR82lCH0A=;
	h=To:Subject:From:Message-Id:Date; b=Ufd93G/il0ya99BvEQ+W0urfsqE5Lhg20SUbhm2YX6JFWUb3ey09HefAbIG781GiVci3fXGTh/JEkvJvHdVN9ZgG7bUPtKdzUUTY/ry7ClHmME5C/TxTUSdMJCdbJaAD75gPhHsFTziX82amzTzHC0zaxJU3qS1buqOF2BjWKNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQca2xEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQca2xEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A162DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756536593;
	bh=TedUDgxCJmFW8XkLEjBLzR8FMglxynap4MBR82lCH0A=;
	h=To:Subject:From:Date:From;
	b=SQca2xEmKzyW7hEQq39XIlb9AyYpDfbaVQLYsv21um6yXosipqzcbJNMMrehf9Cel
	 awhDn7pCcklfhvGKqADbRcEiW+Nfog+IsjFryvRt3Finv/MbKICgzv1lhhQfYhpDy9
	 D5qhjgZDGg+cSP221baxQtQK5/S2WQ+NdNdBFCeH6tgmXDdoxUyD/d/k5xc4WE5yqE
	 dvqCMVBk2Ti7dxhHnqdJFJsg5wzCVQ1A4PMaUzn1BHdL5vHwBt2VpaAdSfTMYLgI5g
	 DGYVz8Q7N0h8t+s6mgU4Tof23Ffk2KHGIRhU5bkiCDhXD+6oJa7Q4IETcpJZW/u9Nd
	 8lxTDBNaSd6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F43CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653659357.3068.661609920414188066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb38f933a7f68dda5256921e0f49aee6230b6fd25a52ccb447515a353f351595
Date: Sat, 30 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756536593
