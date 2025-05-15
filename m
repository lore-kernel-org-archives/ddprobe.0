Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4177C17993
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747352994; cv=none; b=mrc0RqoYxfwoD2uO0wJuLejnxlS61H1vrLcLCZykE8kbcKm+6TuCNrQtjBrVaonHc6xAAaCHbB2T41awHYWemZjFys+FO6jCA6cWctQl4BuP+9m6KwXeUt+eJcFCdrQuBi+c1Q9fuEonH18VR76fkeYuO3XmesrY9KqsPxZD5uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747352994; c=relaxed/simple;
	bh=kinayK53gst1VfkC9fdQeoHcs0fhOA5gTNxB6vSqGV8=;
	h=To:Subject:From:Message-Id:Date; b=bvtppO2F6fxR2uOfHnoEGUVnMA1BSW+oYPxgZJ6ratJJ/IphdYV2gJJMy4p7e2Ki3M5oGT3UrbYs6XDlRxihO/urt2NFjdzhVq6MQsDQYK2shqmnWwCKHl5AqkZCU+8ACHKb89RQwJ9lKXp/j9kA6MFgJAjy4gI5wEgl+0OFJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrR8KK3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrR8KK3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747352993;
	bh=kinayK53gst1VfkC9fdQeoHcs0fhOA5gTNxB6vSqGV8=;
	h=To:Subject:From:Date:From;
	b=qrR8KK3mHGtt9B/raMFvB3QzwmaLmAF+sqH2W+2H3ljO+BDjHym9lUW4PKbxM6QVd
	 EorWAJfyhCPKjre3pd0P2Mn30vUylUlsu45qB3hyCJ6lQQeZpd+0xaEJ/MCwVUEZou
	 hoCmgz0vp6nS5ieY8M1BddjE4MHhqCyxRp6X+5gMBziaCE+ZiRcmfPlmx/1nzJGgvy
	 sdaseWyMo6mlQGcM/B8NVOuG6E0MJRrwTpcaCEULcfXy7ewq3pUPsZiL7m9Pl71r+B
	 12+VGrmlAyuAVdLa6lClrZErTSenAeP2DdLDwxLSLVc/zOHbAWLNPvmJxp10HhF/IE
	 aMX1cXDepTU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFBC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735299357.18686.3178721516289003141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd90c69077c90a7e13801991dbf1dabf98fd3a6f932cbbacfec2a0de6066444f
Date: Thu, 15 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747352993
