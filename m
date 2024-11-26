Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6210917C208
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732608354; cv=none; b=UUxRXbqWLLxViml5XUX/6gc7KMxFJDvTsqr3ZhY4mtouDGpKrvyWTGZIujSObE11mDGvvgPj/Gal8QoGIorkstd14btC530xpvyf5nWpSBErEkvIibiCQSVe6Xmu9c+ikmEgCCq7GAzjl5v3gjYKa+g//h/h3UgMNusvzBwZX+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732608354; c=relaxed/simple;
	bh=0ovjZ+GKdK9G3AVmmaihedUJ3nHyIxFRropd00hwqvI=;
	h=To:Subject:From:Message-Id:Date; b=ry4+F+nkPYkvGwE1R1pg0mmdo4Ppsb2xIzlUldknqC1UCSnc7wa2M4wonmCWoAeFHFCGYeo8kDIKZyDaUS7xwq1LCszFHMFzz+g35TNQ1wv8MRLKKllSV8JXrwwxGetLvwvz0KCCzKBpIbi7AynR2HkYOwdM3oGZnLTro8EibKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayKHOvjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayKHOvjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32F0C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732608353;
	bh=0ovjZ+GKdK9G3AVmmaihedUJ3nHyIxFRropd00hwqvI=;
	h=To:Subject:From:Date:From;
	b=ayKHOvjBL2pBS5+/d+sRSB1U48k0WFcID2iSi2IGumTJ6gF8cIqORgsrkKI3X0V5q
	 LnpsHTlIdkFROXSEwykXaHAvB2mEymDrXn9c+7xrRg07GuIxtjyvBRNBPgmnDysQO9
	 BitUdoNvNCTR0815PxseWB9T7mEPbmQyz5SQzisa7XJztrfsatOF0C9CLnFr5WIvpc
	 QK1w92dxX8CCDLc7k2DjyUHy3kJN0dqk7Cm+Zobdkb+ZMr+VBRXcz+Vv8RGc/ZpidW
	 KERtLsx9yAtrauWDe4VOCXG6CSGNQQ/2Xb0V71cITuoYcAx5JkBvxcaUQ69KbJjGWn
	 HDUAHa/y3ZCjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAE1D5A6EC
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260835364.26389.12433494840571485821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a3298573eae7b16591f4f37e40a6d0b21256b140d47eced4b67c08180af8c4
Date: Tue, 26 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732608353
