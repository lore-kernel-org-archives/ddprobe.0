Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34216242935
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757449195; cv=none; b=hqykotJk1LZDN7o5vlkiWucwF7gMwWBbxKsI8rVLeEWIPZI3DXRNegEIezDHONJ3R10hP6pL1EiGoFGTKS0tBF/My3y7rws7NUU0d0jHbAwdLDnApoeRPrG/+ihRi1In+uPtI0+XgVIKWV9ch41OKFl+YeABy+TPrToY112+sys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757449195; c=relaxed/simple;
	bh=MSEiUOFkedgdMoEDuTU9NtR/I9jZLYtXJEBdq8ogXQk=;
	h=To:Subject:From:Message-Id:Date; b=OtH92M3ns2Bn2/nVHz+M99VA0viPokPGEp6bblUFoQUIxhEV+cf6bXK6uKWl1npNnbtq2myvGR8tjnb5XRHjublPM240TMwF8BCQNvyXXPE/L6l/kjxLc7SFIigtJeIYDxsYcZeJcKJqANyIUmzJGzht8fzOxkAkqQHkY/HF9l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJP4NgyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJP4NgyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CBAC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757449193;
	bh=MSEiUOFkedgdMoEDuTU9NtR/I9jZLYtXJEBdq8ogXQk=;
	h=To:Subject:From:Date:From;
	b=jJP4NgyFZcMZfsz+eFlwYuYPtVzXgomkHcjb4ZJE1F+wrQiW+AIRb14HyjWrocz2r
	 gWmh6GxQe04gP8MjYeGjO23emb0J/USOvAe06t4ZAtnbFZOB8kJKblfI4utg+3un9L
	 L+stkudTFVGnSlRivInG/vfMs+EOz9Pchnxo+KrDi+7r2zQktKxEixvtyWLAI1Lg0/
	 BLDcGZj5VppFon+cU6rehOaIAAjlVzIk9dHpPWoRvU3lwg6N33rUY/0wOw2mARUPkl
	 1+tY1nBidIzwWXTG4EcvYRQOqcagyitIdw/1B5vhSvT0GCTWIQv1gMmxdvjn3k7OX7
	 VMU/rsqkhmc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FDCAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744919357.11526.13510267181516613733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ac38aa79b04799033206ed645d63aeed2e36635eb942554630489cad0b5f43
Date: Tue, 09 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757449193
