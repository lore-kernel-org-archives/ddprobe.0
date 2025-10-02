Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F1523D288
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759379394; cv=none; b=TpH2Pc4WbBbHEzHHtIJaURJtuvSUDWU2+pPG7RtOlC0N4NAg80p3awwG65e7XKj5yQdDAJkppn7//yj1tRI4cdHKED3iDSkfgny4vtAUERL6ZNLclF/djtNMmQGnI08F8kKoErAyGsldOVbdpAxpf+k86yseFZiEeR33XzRgFV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759379394; c=relaxed/simple;
	bh=eH2/9wljC8Wtfz2C7HVBl5OYJ465qKUoTA6Sp1r9YHM=;
	h=To:Subject:From:Message-Id:Date; b=aGFWzlBXGXApWa4q7CsyLQjCHJ8PiV01KGaJaqJFZKpykTYypNwMLIV38khqy4S4DbX42+tHLVKXi0tqvQM1wdpN0rJ8yQkCMKqdV7ySPhmqEFGlbV/ClK477irjStQORjuZbH+bSDX69XoeFVs/DnYwf+z5Sfg4UR8xxCNnDvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMF4rbhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMF4rbhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F066C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759379393;
	bh=eH2/9wljC8Wtfz2C7HVBl5OYJ465qKUoTA6Sp1r9YHM=;
	h=To:Subject:From:Date:From;
	b=tMF4rbhwBflXSMBra0uhFXJ6sUess641A6SrAwO4Gkx4eZJQ4atxQqYRxA2eAH/xk
	 L0nT7p4PaK4Jq0OMxWvaxk5hZjXEal7R9Pm1HSPXML+2ymtDdLVL/njO9Rn9i8Ubr8
	 akkjMbBmmqIZbb8gKJBY+yOnUFjQt/pszSLS5inyg1Asy8i9oEsxOhNteogxOdnRXO
	 EZbLjtEgRNA+cYW269bEKXnBrLeWrqXAdDBaI6out5lr0qHJhepjG4XNb61PnZ1Da0
	 F4I9QYj3qliNLJ15c24w2uCGGv2toQ3BKH6XNucCENqMiyI6qrfSg1+tFhtpGAGWjF
	 X9gdfIFjGkTMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C3CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937939358.32173.7457762214056071970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8fc0559d18d7a0fb96d8bd0cd8a2761d1ea91d23829d45de77160f18e8d8e8
Date: Thu, 02 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759379393
