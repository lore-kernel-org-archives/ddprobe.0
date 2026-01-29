Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A05328B79
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769716434; cv=none; b=luGXcWwMg0qit0cJoRBJW+xdBr3mL5GNw+AkDwOz4/KJZD/Sx5G2GlCqwVspU57PnF+PsBqkEdtSVkotqeQ83jbkM1+/DNHfKN8WCi8a2clrdoLaWU4/CKuIwX5GdRiljpVdP+I2ZJ9poRyZxaCgfgGjZuaSIfiuKqwOH/ZHdYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769716434; c=relaxed/simple;
	bh=4AuDH1v00Z0jwXNy1TPvyeMWRl1Rv6FGUA2JWUHnArc=;
	h=To:Subject:From:Message-Id:Date; b=dUVEtGvnOWL5wydVz5EjN9BBXsq78KPXeGmO9GD5MpnBkUys2z91CiL69AbkyFku6m/Dv4E0mhZulisUPi7EaGissCUgke5PPbPgXaAQAMtoAWN9UPQkqnr/dgwriFfFRUmAK9VawPEo8Fk3zdeGCPQkOtkGw93vBJIwz5HwnDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrlvSg5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrlvSg5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9361C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769716433;
	bh=4AuDH1v00Z0jwXNy1TPvyeMWRl1Rv6FGUA2JWUHnArc=;
	h=To:Subject:From:Date:From;
	b=MrlvSg5JVT6N6gIgCOFGeTvpySYvuUQape+GgZ29auUx+7Ni5HSEB1ok+yN9m+q0R
	 0trxmBwbeKP2AqKHsaSAuOcdT++Gux0knmpdmf7ApjQwrKoj7zq+la3C83XgTrgB02
	 U4pa2y8Z5Iw66fzphmRWZjH6qDSLKH5H8vTOdnzl+mZEw8mYbakErNAQZZeqtkOIGc
	 PP86QGPDVO7XMTJkWTu4KNbN/unbSOBOzJWet+GrkQOEmT7F86MkVKjyYgCwXCWDpj
	 9NDRm+zttXWWAdS/emNQcLM2ni1ArVMGjIW9i7StbVtITb1157Mp/P589HIOy7kjy6
	 1roJHPP+BoJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667BD73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971643360.17659.17277815604746292101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf424a6004d2724ed9848ceaf8b1a35965a7bb40cd985b331c0180e3d79969e
Date: Thu, 29 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769716433
