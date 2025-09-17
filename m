Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EA026C3BF
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758081594; cv=none; b=d68nHweJOK9NkZB3zCpNrQapspOpQcsmzh0Jo0/cuyFCIU66AjG3sDBRT+AOYdhr0njKxHRrmMzuzrDLVJNmMZIzh8HEQpIO8ojadnYVcbqk5W5dDTCWCHFQYOUDpx5FH1e612PRI8a0qiGVbrM58cBRCYoAR8pEwZN7zmvMhIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758081594; c=relaxed/simple;
	bh=hw5VZ8bhIOiz0Wahgwk8lueHo0cJN+uemumxxmAdHh8=;
	h=To:Subject:From:Message-Id:Date; b=BwpL2JhVW/FTry1BOVBcEnU6Smuqf5eCaif/8FUkmRRj4piIi3ntvRINsBg6hHeiA7sKatQObCDYR20XwYNXzElVb2Q3jXgCTGYyAxd4iS2soUgmym+yDq5kvSZrZnAiYslFlmOcmjTyaKSyrY2Gg30p8hOqTr3IqwsRMMNaRbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsVBfqrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsVBfqrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758081593;
	bh=hw5VZ8bhIOiz0Wahgwk8lueHo0cJN+uemumxxmAdHh8=;
	h=To:Subject:From:Date:From;
	b=VsVBfqrTzP0zk9ZsgY+YtpGYYw24hwbUSmrrnTxnq0ML0/AOcRQf1ZKcOSaQjwSw2
	 lzS4AX46IXHWXL3CDqUYzFhtzZxatKl+L3suO9uR2lO646KDeBHJEbeF27y+91e4Bm
	 vy8eG0qWwuGVbnNg0ZA1VA3ohN6/3wakPYZivVwNiYnDTGYDGXDkYf+dAIaAFtiooD
	 kLCyCG3vjENFB8DN8vp9Tx60WaItnIlopDXs8LK5fJ/2xh/8Cc8O3oNBulKmiqEOxt
	 j1JdV3aFKXcVA4FB6ZDdWL4EwyPSAb8e82dDyyCcsEK1S8jHVoJw43MJgCOUDimZ/M
	 1TTqIcDr0uQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808159358.25945.9579689388609886700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b580e7c175db4ec05c16cd548e8ce693daa176cf657b42d6da898c6adf847250
Date: Wed, 17 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758081593
