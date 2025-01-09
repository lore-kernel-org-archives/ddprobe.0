Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205492010EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736423154; cv=none; b=bGECLccX7vgo6PFlvvnYHPQTvpoRIUKguxZsmBHTj9d9scLHraEJ3jQho/WoO9UDtHrGrA/IFqOexsJu0ueSIsrJ6AKM6iPcyqBh0ga0lYu/N/f274ZyWikc5uyIKTFfQo4A9tC8rdPw4xmwxUv2Nj/77e8MYC+NteUKtGXNXCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736423154; c=relaxed/simple;
	bh=TknbOEQpGJ31gEuWyPDYTWokK+HYvd4X1oFj9TJjfKM=;
	h=To:Subject:From:Message-Id:Date; b=Ur0oD+w/VT3Rpv2WcqpY9YPi8KkPQNu24d/f1GKbb/XlciQRgrXf0muUVvzT0Rt3h2Winoz9aSnSZncIlOL5XhS9LUr/JZZOgnevFlhn5HWAFNWk4F71Dh0CaHXKLghlyVQ/n/BL8PRaFWs8Mf/RN7tuW763igtYDrJ8dCstmk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcFUrcvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcFUrcvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09C5C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736423153;
	bh=TknbOEQpGJ31gEuWyPDYTWokK+HYvd4X1oFj9TJjfKM=;
	h=To:Subject:From:Date:From;
	b=LcFUrcvF+eNrOzKkBVeWqgsH26h8jljfq6515+ZzmMBM15Pk4xZSfUKPOPNSdAEoj
	 bFJRvkkmYVknbRcLkK2sn0I9yHYNtNDhUG8TVRdxzl1IhadOhCHSxWtBar7UPSjr7o
	 yn8HtOhLS96rkh6i+j3040UYi/gwXMCPYxZY0Rw+2NrkTBv4IG5+4SPKQWkhSD90Tz
	 I5n+SQooAGNrIWwY70/xGjnYzAQgZdBIKTrv5b//yQ3kF5RIOJNCLwwQkBbmaP1loI
	 QtX5NDaHzyT+Vv7/OtPFdsj0nZaWCCx06olz5JFwfQ5cF4gCPqmb8/VGwgeSL3W0FH
	 VamUcNZFXMUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB3CE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642315363.32054.1643265338957824275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de235f9a66678fe5fe01c3f9948baa0e1a996dbdf7646cc1777bfdbaf707b1cb
Date: Thu, 09 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736423153
