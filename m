Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54518562F
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730703354; cv=none; b=iJrZdz+D0u9SnRt8mqxt5hT9qxcrMFewYzOKmnmJDpQpdAW2Kg4UTWDzy5hsz2EOuKKO5Fus7LJjGDknVCCy6Quydb56dwMI5kWBdQzWGSMRwI3GlVW29uqWm76G+cCNpVIFigniLIDl31attbgVLu/rU8sFyYEMc3NeboK4R/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730703354; c=relaxed/simple;
	bh=qn8pKctw2wGrDvknCsTD1+u7s4BGAdhV5E9b2Q3Rgf4=;
	h=To:Subject:From:Message-Id:Date; b=alAjOpOJGdumX/nC4HKgA+LibgR9DYb6euX/o8F68EOGVAvAcIP1ltwDlagwV6k2yasvODKwBs+cL9BaU5T8h9EfZPIJIzdG3dJDuzNtlkc/Fe6zVSYt9KiW8M+/iuEhiLJM/LKASIMW0Th8DHQTG6vVigG4IqvqvnIK2M7ioUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHZ88c8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHZ88c8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8FC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730703353;
	bh=qn8pKctw2wGrDvknCsTD1+u7s4BGAdhV5E9b2Q3Rgf4=;
	h=To:Subject:From:Date:From;
	b=aHZ88c8NkNLQDDXtvPyjHPtgj0Z2d+iZNWJouwaHCpvbAPKvu4TjJ0aFXDtUZUivD
	 9YAgoE9AyYQhbq41pkMsIaCp0ZMDdsWqjFor3xgBJhcW+dsOlhHHhCLGcZJhOeyl8U
	 NEF0fyplCz2zyLEdtpkIpzMz6t2VgksuHHuUXhkkuCpl3LN1n4O1SKHt/MMsOW2zs6
	 1ay0HppCoqa2Sizv38abZNpreaMIRK8sH8ML8/fGrxwvshqtioFyNEGz4BNqt9R7HO
	 QyT8qndOBvnbqeND7DUuWthzZsdH33QgfE7Y4yfvv5uCtazGfjSc8hRsv+IZdlWBPd
	 s+nCFl/60jq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEFD111B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070335359.7549.14884407029289098352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6733bba394b452efbd9e65c9c813aafde02f7354105dbc29e427cda59ab4b492
Date: Mon, 04 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730703353
