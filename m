Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE011B6CE4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744240194; cv=none; b=jAkg8Bb7M1OcSUtFfglvJ0jFyHh81Kzm409mnnRJPon5P00gRR1yZmwexDYTFwrUjDv5FKW2ROpgl9BfMAClgLy3fIUleNVFL9bfRSUge5zRfLWgTWfaSPXwGPOw/xjuKXtq3Ey2eJCQNwbcxD5n8BIVNfjZdx0aZuuNTbHp7zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744240194; c=relaxed/simple;
	bh=ZVg4QIw2lUjfHwjbmKwQKKwWNjPLgTGYV5LjrUqvo20=;
	h=To:Subject:From:Message-Id:Date; b=N/6argndeTONUDdcZbicZDSg1e8yulvLrzQyOR5HvzJ6PjjKfMEUpv5XIyuYJpDIYhqB0oh2RLEcqXHmgJXHEonQLQ9etSEmeXSFsjS6g8yQeCWXVORKyUo9n4prrTnVljkEwAGkbKtGUrr3WKHPVbft8JiaItCtFGzNIZueiOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvJE8p5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvJE8p5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5058C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744240193;
	bh=ZVg4QIw2lUjfHwjbmKwQKKwWNjPLgTGYV5LjrUqvo20=;
	h=To:Subject:From:Date:From;
	b=FvJE8p5d/hpkVtEascP5GmyyPZ87yhi7py0OvZJmymn/YwfezDTjptAK54Si+cDfE
	 KqAiawSI+jXg1Wr+WgsBWodWmCDKQaJ/RopaV1gVgcptFxi9yk7LFdGgaVZJ3BAM7s
	 V17SPO/ZolwY6AzFDU833miagtoO7XxIlAupcxrid9mVktD7hkkzXxvJPQFpolW7r7
	 Qff1jyL9JdTTB7XEkxExbX+P/TlMY0YfJ1zdNxw2okwO4DYHck65HmDUZl6SZreGN0
	 lh92GRmnejuJ5+ZoKolJ2xDQHlKZnhsWMhOU2G/e83rDLWVugmlwt7nDSG2I6Yn7Ze
	 NxIn+mxTQVvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C16C369A6
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424019360.26358.1250130613885851622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28944e9ed2bfdd3c676097af901f40cd5fed34eab3f42674020f41de021252e6
Date: Wed, 09 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744240193
