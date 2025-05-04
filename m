Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315991C3BFC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746336594; cv=none; b=BEZTw8ftM2Jl7RMIByOy+QCJiHrTQrsJ/byvzqfbmqZ7HyS1SvqjzOzwlWUWQRd/aMRZxa23/jJo9tGRS4iOjdDFOO0czls7vvhRrgi0bZ/QKXeIpk0N9rd+T8AIo90GzZqMl19P/HBk2QjUYLg0jUcpj1Og+LBfez9xzZferug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746336594; c=relaxed/simple;
	bh=CqF4HUE/vvwBS1Is55UJ7DkZOYPgI8KGmGW+22hL8tQ=;
	h=To:Subject:From:Message-Id:Date; b=qK4o3AzzsilFYFb53TrovjXMyC/SqLc4lqZjdf/yTPrUttdPjx0L1aq6UXSfCQQBVHQNUj10JonSQ9/Y0Lvm69/F5rZpNetGtzAkyg/e64E7MhsdUc7HPpc8eXvcem/+WiBcrrURX70CWMH5loGyXeVFch80+yQCAJrdpdutLHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx0bOYXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx0bOYXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5713C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746336593;
	bh=CqF4HUE/vvwBS1Is55UJ7DkZOYPgI8KGmGW+22hL8tQ=;
	h=To:Subject:From:Date:From;
	b=Sx0bOYXqZqZAo+TaVvXEDUI9g3VvMqlWkyGQTavRJ/M8e1X1+3W2HG59PG6sXUH95
	 6nkBmkNjf1fRBv2VHU47vsI9i2v4zdXhGOqKMGGrfhG6MOsH/1nDtJjSk2dUQW2H1f
	 K6LX8VQRg5F6mFqkU532HoQMiPqLm+3eI73WRs+NP7VuKjXSsFf8doarr6cZfzDPt+
	 xwvvS03CoRxVDtlyXEP4kU1NlaEsCeW+qgGgythWf3DtXSmorMp6n68BusIID4Hu+G
	 16WH864CGnQ3vre7F2u/HC7w0fiImYTn8sJK4aECykPKkEB+dHEsvCfsgoOUMEarAh
	 DfFoUw71AYaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4FC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633659357.20034.15117936740937933257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911dbfde0f33e4b2c9377302faf570957fda866b0430818ac64aa7c75c7714c4
Date: Sun, 04 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746336593
