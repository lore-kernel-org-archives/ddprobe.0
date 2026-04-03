Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2391E35AC1B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775202334; cv=none; b=VVYAvqbF+4OEATxhU4tVp4nKYDn6mopSqr8Iiu33v/j60V5pWK6i8B7FeDPziMZzlBUOy9WV468STHLgTZC3k1rteT9ra7/hs9XvqDWusnvRnkbwOKwnWSHAX8I/S8GFWwiKJ/oodrKMPB6SR44vs+lqciiE+NBSoUErecCZnJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775202334; c=relaxed/simple;
	bh=oE6Zccs7hQc5RK/IQYdQF2yj8OA4B6f5bycHPexg4bE=;
	h=To:Subject:From:Message-Id:Date; b=oHn28pfLiTesWcI+wVU9EnpiqTYuZaxakmxk1WC8zMYgNR15f/0x9h+PbLjXnpFF+/4yI8sqPiS528h/LNdMYX4gjChMYZ/g/UpbVsDr5hCwc2BAYM+l537reFyI4g2X4GpEGDh0qmrbC9Mjp8DiDmyiZ8M/uHICXdL9olvavrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB6hQISv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB6hQISv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C125CC19424
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775202333;
	bh=oE6Zccs7hQc5RK/IQYdQF2yj8OA4B6f5bycHPexg4bE=;
	h=To:Subject:From:Date:From;
	b=vB6hQISvtCFg1WHLuHenoqraZf03jQclTcqnv4YJ4kl+xB4X/F/9VSbeSdG9EAoLl
	 GJHaJbgM1XTPHdnVvfthgd9oz0d0B6yuOTs6I8qij/y1h4PpRyYTLtS/inLQQM4gNZ
	 QjGzbOLK4vfVDmJO7YrjLFycmdQnNcykGkux2yVhYFaipzG+hZOTA/1bOdZsZQKk2f
	 vBsWnA+xuF/twH64IEJM6/PUFcwX7REyimD71yY7VnYBcJhn8/jLe78RQjh9/eFS4U
	 HUhaPsVNJNE/AgwZ5uL2yROlZh12VKj2EtWbd4AgRrKWAdjqwEKeXHxI+YxClajTh/
	 zEYjla9S1+GHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10CBD730B1
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520233368.5956.9837268397990706904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9fca1a7d8e5a3ede1e04fb61a49fb8cf8fae2b3f7730b3a24d9d7d5c2d8255
Date: Fri, 03 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775202333
