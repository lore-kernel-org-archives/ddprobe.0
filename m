Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038715FB8D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706979497; cv=none; b=b2Hzis9pqhq3GIBST2RG8i/+cgTQWGf4dGsIXnsta4b9atGIfwZ90ccoFZPQFqPD2w/Ar6UnSXJGLlOpb5z9eintg8rCljKvwoYrnQkX/vViclt3cFWaNUosNv5xamBMpenr4zIYj7yFarRZvm2jYTK0ybfwdHLD/Y+5Hh1HRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706979497; c=relaxed/simple;
	bh=AqP3dR2z2vH2y6icgJGkrX/5ifZTF4VKHy0WLVB99SM=;
	h=To:Subject:From:Message-Id:Date; b=YTDCQr1zAqOH0BpYufvjnmNy8Dm9Y/4wGvreDkQODRgUUJ8WVlnn38twb8j0g/EcyYrTxHofCf2RzYOKHow0XN/ndnCYkQpuxdnz5kLts8CT9NKXT9bW5boTvrugiQvlOC0HOETReBZf4aiynWrIHFWNySciNGNth+/4mLwk1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shnet2Pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shnet2Pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E4DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706979496;
	bh=AqP3dR2z2vH2y6icgJGkrX/5ifZTF4VKHy0WLVB99SM=;
	h=To:Subject:From:Date:From;
	b=shnet2Pq6InRDaP5Ovb9hQelIkO38HEHZTydJR1WNyW4KHKj1iBWc6gbWpjTgqDIQ
	 2r80a7LZJxU098jh4PJaleTx4M7CoaP92nInwXqU4TgfyAGVh51oVnBSvExeYwKobB
	 iOA14CwJsm79mVtYdU3gU3OmwUkxmyejCacctFIoxQE/gilKHLfv10fzIVu6GYtiut
	 nU1+rCNtSZnEqV91TEfC3SibCtpoJ9u6h0gmOUtmf3euFuHakX6dQHkZvXkcCU2VOQ
	 jRmh0c2PBPhdxtVU6SLDfq7O+MjtQU+LVr3wwCF7GRjVJ9EOfyspPfNS1cKTQ2RaF2
	 G9uC0fjhmowbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C017C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697949637.24472.16741921326826912006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ddd728071d91e515fc6ce63d2e8f34f38db5d7c37d379363b2d52e4ad87042
Date: Sat, 03 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706979496
