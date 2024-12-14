Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF5015C14B
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734174954; cv=none; b=NS72K/+yf+7NkFvo9wpLy6T0Id3W2s0WNWMODWGF1hLCN3VWfLZez3jVvhN3ru0lrZ54+urnfQV4J/xWNRWoPNRuKZXJa9o9iWzJx9Dpqi8DnjILK6413rw36W2kDJmUHSlilTTsygbLGfe/1m9GaU9udcUtVRhwK0cXiWS2D28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734174954; c=relaxed/simple;
	bh=FwRDKDuP8REuEZEev7ZbncowUjcT7uT77T+v9L19/UM=;
	h=To:Subject:From:Message-Id:Date; b=B2Hj+CX/47eb5zJmls/0aJcu1Ik/naDN0W+pk+5tKIc1nKKS0J9VIhyBpx1/3QnLYACSTzAhB3yZmVO92au80/DYyMiJXUCj1fx+Frc7Ky+3BSnMglVe+b1MpGDPwCooRwcGGuYk9G1Zlj2mAiYSfUHdy8RnpUvq9+nvtcepBIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npAScLf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npAScLf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4115C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734174953;
	bh=FwRDKDuP8REuEZEev7ZbncowUjcT7uT77T+v9L19/UM=;
	h=To:Subject:From:Date:From;
	b=npAScLf8ogDR6E48t2rVIWoSVq3ZEmS1ZcGLbMrxumGWk+FDL8MgMQV3pP8ewdiyH
	 IBJdJTlxcLWGIJijQgqwgaootHRb8PM+FWz7QYlea3eMbWWIEzk1Ppb+qQGujeJejz
	 yoHh5hcAWf9APfU7fdWCNzMzJmew9wdWHm4Uc3p5bAPkHlQhQnUgdqQtifzTTXcowg
	 a4iVa8C7U1MyxsOhh3kbw/iC4GdTbAGJmvI9QrNSslJ5XkBcnd1A79NbomzfGzJ/np
	 Lu3QHCw48PLYAKbmym6v5/KElpe9noeuwSzxjDQ4geR98e8cOjjvm3khCtrjALxp6a
	 gA48SlxUXfMrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EEE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417495358.14256.17208707770002282335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680ddc01a8b1d6df993ca95ba6768d7232bd01e60612840e54bc8f9c61e67f0c
Date: Sat, 14 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734174953
