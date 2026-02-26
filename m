Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0225E469
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772080494; cv=none; b=YMF9hRVcKgix1Uvn2T/CgTRIVg8YqiwQ9+d7yhLp/PsdnKN/aKzAirY0FITuKbV9blURY64kiH3y86ubmTsxnJBawxvxpqg6TLGvNF2HBwMrbraQFT4n8LXap2XnrlZlOuzlzzXdMRTvs7kTcdrkwO70gpeqzFy6aDIKMuwvTpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772080494; c=relaxed/simple;
	bh=A3lXUtidT+3NPA2wzLpE7C1B+AJngU2bFcOYHGGyDA8=;
	h=To:Subject:From:Message-Id:Date; b=J6nT39OfgUb5atXYivcBNHWM/QruNwylopqAPt2UaSzLsfmApzc7F0ISIzKBP/E43wkgvbFjs6z15sgT3HH408LvvQIZVffplTcFonevRsGNcnN7RLMatJt8AiIRQiDqRE4omnLeE8lmdLZE+cNv8Q0uaPQ2GxUmdImqwwCTPB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBWy+ZTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBWy+ZTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E37C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772080493;
	bh=A3lXUtidT+3NPA2wzLpE7C1B+AJngU2bFcOYHGGyDA8=;
	h=To:Subject:From:Date:From;
	b=NBWy+ZTwqC4baspSReRWrRyeGm+Bzqdjl70KcEYGUZctY1P6Cnso1/+Lr1kK/fIHi
	 CPnHBXu3te48o4vNOSCZ6jCDO1NHiUEgQB2c+WDLRSjP3LCbMG/CpfdBLM3dnAQgtx
	 9vq/I6A/Z5VTKJvmNoy9D/pmvOJAtyKyuDMgd3utLreBhIZ0J53MSbb7oASnSRJeH3
	 ++qgcnLTGKOQe9GdS2IO4KMtEstUbBbw4tUCqfz5gHxZLVnvLwSXEq2FbclGq29AtZ
	 Zi5yulHt/Se4QiGChwA14wxx2Md0IxLseq1HxjEeGptV0FQF4A80gsqA7Ov25U1thC
	 6G4hWGsGha5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C2BFD461B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208049364.13181.8376719797777998385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111ccac3153a366c3a126e7c546a7ac89606efe81dba6169733c20c6a8177474
Date: Thu, 26 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772080493
