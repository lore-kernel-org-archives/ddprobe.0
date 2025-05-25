Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7954683
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748188794; cv=none; b=JniyoPWEexRrroaUtEtt7EPGEts/6xCtQ636uHOMKy1MpsZT5GlDqLwahxrD+r4quweEaZozLOgte0UnQ3zwqonswDppxIrFhD0ZAn3tI1KFXtmh80c/bYGGIiCwadbcF7ia1kRJ8d+rOop4stjpKVK2g6oz6lx1oNIHpBCK9bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748188794; c=relaxed/simple;
	bh=nV9rNwZ0ST+WT2JoBjGuW7YlWCRBnqtivSP3kz9M+VQ=;
	h=To:Subject:From:Message-Id:Date; b=DbJjn6WRWwHNNYhScpvf5dR1goOne/mn1xPgx+5xISjakFW7fkUbVRVo5Dj5w1HbXvsJLumpXSOGvzS0AgZTUuMXSo8TB2HXRoDqOn5CVEwUebV6L40FHfKOrfC8GzMOnQjZf2S07eX5sRVmjEiJUOYuCbQmPHLUFZncyeYMyBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRCBBLMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRCBBLMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBDC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748188793;
	bh=nV9rNwZ0ST+WT2JoBjGuW7YlWCRBnqtivSP3kz9M+VQ=;
	h=To:Subject:From:Date:From;
	b=ZRCBBLMG8Kd4h2MP0PACzg37yGy/nhYyBYWkXXXRwloNjYoVYV8Jq/8bif9yc0ia1
	 voIOclv70kS4B0ePBzMwf4v0oQfCj/vESpWfUib/WUUDhafjCSUmNqXInp2ZKv4I1r
	 ix//mDSV7hXo5/TnTbZas7XYfiSx3Lbwc8LSgBFrKgfFi2jte9j1U0lgtA/W98OUk1
	 zrYCB1wnFxOhZUasufvirtM7yjfr5OMwIxASCIaey3x/iPzBje408SVfi8ph0Z2lji
	 o5I1YgIDvlX9hRGC4dbA1/5iSowSZEAXhSYXJAHG5N9q9N77wGvrfCBewc2xxdrAJK
	 J8pnCKt/26BGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175DC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818879357.19185.18198838114841902918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dba6a7356dd25a3fcf6ebe44aa272b355a83d6fe27af835feb6e166d263281
Date: Sun, 25 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748188793
