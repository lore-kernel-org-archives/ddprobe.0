Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850372DAFAF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764815576; cv=none; b=QjnRFIDj73qprBhjtIcR9mDY2hIyHeEdlpfuInnaEJUxbt2IoV1lJHXODa5efu9EY3j01L0FxVvpf8yNMVCYTtwRorP33LMEs8/nuKql/RJUTM3SImuA7tTjYeBv9gSSvYCaAJ0XYHgJHc37qIsN1uou0/Mz4z6Yk/VNB0eRA+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764815576; c=relaxed/simple;
	bh=AvyRSDpetIK6bVuzp+XersqjBX7WaTlbMmo0uNFS/Lg=;
	h=To:Subject:From:Message-Id:Date; b=iu+DEteKUpe0w+EwXIRpaAhIQoX5fm9RywAV5sx7/pFqQTtB1kDSBv4wNSwcP8slDis60Q/OmR4lDOu3tiI3U3UoivSsHH3SEZbQDUpWen/0kCtTtn0qhSRuF00DyMv6Y0VH3b/EoUFagaFcHL4IMFnVgv7AlAT5MISXvtiBuu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihskFewG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihskFewG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB036C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764815573;
	bh=AvyRSDpetIK6bVuzp+XersqjBX7WaTlbMmo0uNFS/Lg=;
	h=To:Subject:From:Date:From;
	b=ihskFewGhUcueAFAzevRRQUsmG4mK5dYZXiVNzJ6cTRLCx0KKPzsM+1/lfxSjTQn0
	 wyiAfIjo0Wh0RrRb6Lu+XapM/wOWzUTF/IPd4t2QBF75ZrP9BDkJxvmzUUxhEuADDs
	 Ugy39tn5xlYOF6Fg7esjN6ELIzqWlwWJ74r+5J+O22aqoU7Pl+BSZllLuk22r89T1B
	 FfBJqVclQr+Cr8xXWuxmeTaqBQWJf5vLlTVaRNga7EYVCSmSC1O4sn4JO34qpCSivk
	 bLLS7i4wpln3FdDy1dwF/GetzpzzNCNhQegWs19ZmlrT7tJThxBOyDGXFp7ZJl+Bu9
	 Ztr9Kv+Xp9N3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799DD1CDBD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481557358.28406.16620205773369713496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54347318fe1f6d08e2c494b0648e68fe625acaff03880ded0f7ed78213300fe0
Date: Thu, 04 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764815573
