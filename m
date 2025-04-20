Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC304C92
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745108394; cv=none; b=CJBgKS1fjrodLPEiPTdUQKS0By9UXzcKz4m2mxLnzh2hi9QH3G4RPjNE9XbxMjur00eNIunDZEltHLoYxajDYqIC+0zF9p7G1t0HRUjOXJqW8ogzfgy1NJmmFzy+Vk6yGpZgCHV/cPaRcPNNqncibGVwkC86x9RxXFg5ijv0mzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745108394; c=relaxed/simple;
	bh=xisDPgSBC/3axmO+YIhiYYM586YKjrTcWtf8N56ZotY=;
	h=To:Subject:From:Message-Id:Date; b=I8SP4L6AHqsMBoRN8PMGsLIlSB2A1APNSeofKCZ5dsVZXhI+c5rmCF2MQNnWS7LO2ml1ni+1WnAXybwyt0+2srSbsQsrjRP5zcbZXFWwd25Lmdcy0sEbhgkd4TBpFV0nZIj8tVjt2fr0pYtbzJJscOXY0n+DdD3Kyvj61aJHBDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEqY7Iuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEqY7Iuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C01C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745108393;
	bh=xisDPgSBC/3axmO+YIhiYYM586YKjrTcWtf8N56ZotY=;
	h=To:Subject:From:Date:From;
	b=iEqY7IukLotzzD6E89axgAWTCZxcXWUsFwq1whogyWtQpTxklG/FgI8jhMV0pnz5Q
	 qLTsYWI6JckP3EeW7EbbtUajLssFVFbolHEATm7ruPnY52CMKh9VA5bIk++vo4qeRY
	 OKqjSPdoGBVvAW8iN+Y6vMJCZT23vuUuiHp81pZZ4YE9boVAbFl7auNsWJfZSpIrH6
	 aZ0en1U4bViyhesJhaDf9ZGleCbs+Tu9a4mQwAZ1FZg/M3oCvo7oQbg9cyqr7HRwBF
	 OFNd6eUJVaOJR8wTggJC4042kaAUrhSxo8b/UH54OEfI/EjUVOIeexLEPaGGbsTmpO
	 t26pXw4jmZMMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D0C369C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510839358.18094.5724785300562530190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1526fb428c08333807fe1f2a67e590e8a9271d52979055698fd6c1b7f2ffdf79
Date: Sun, 20 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745108393
