Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A102189B80
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759219195; cv=none; b=UrtPPFOdp+cGv6eLgndcXZuF3hONO/jiic78itAUXYgheoyLBzi9BiOxLaT6EwsxE+LNcBd+mIyZ8A1mfZ7RjyR41OX4pwHuKoouMYUrrVsq/UNNXLws2iNSLZRpb0KgzZxnpeQtSPNrstzdWGdpSC5jyG99/YlpaERgZHL8eBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759219195; c=relaxed/simple;
	bh=apt97vBCjODBRV53tl0SG9tuihtjn9QvcjD+ta57+d0=;
	h=To:Subject:From:Message-Id:Date; b=cfHKfG1xuFNDc2EQTMg3Agba2/qily1+uOQy0x9YSltAmLV4h97onxp9DkTmRBdeK5rN2QKz8+AEgkNQ4798fnFR8FZu8DrjB0BJe5PbsVV53A4s6pLsmJzGfL5MVGP6fi0vGmKhIvhV/uA9fqUn1hB7+vwvFgZe6/BWxtscYtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuDmipR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuDmipR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759219193;
	bh=apt97vBCjODBRV53tl0SG9tuihtjn9QvcjD+ta57+d0=;
	h=To:Subject:From:Date:From;
	b=OuDmipR9QH189UFtKqYItF4pR6xD6H681HN3P0ZaA84X593kfNCW6ZY2sYnebJoBo
	 3oWZmG3bVv+U1RwXJddaxciGjtUu8bktiin93cWWB86j1fVn6ZmRzKSXedBjtmJs4r
	 6e63CuHBfsviiYxJNouROhWT/Rj0OKRwSP/9mMKAu2rWcrWaqQUsFP+cvxC/Lj2B38
	 sXmV3pkCPeXiFIcKdWqCbpYXOCixzjaEWYc5mZDdt43oVpmxoKnS1iiCQ1HwYQj2Ft
	 eX/8I5OO0ONhE8slVdLOgpne9yKIw3OzeqrJVAB0J5FYv1MEmlsUiwx5Y1kRmcAjLy
	 T7BohBAEgSa2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3BACAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921919369.19914.1534802197817405091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84743067ce493d46b0a1ebb72fd2dbd51ed9cd5f169f421bda433ed5f976d41b
Date: Tue, 30 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759219193
