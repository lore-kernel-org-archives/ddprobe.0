Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C81DFF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750650594; cv=none; b=I06OwvsRs5D/VU0QXxSNWC98sbjojk56mf4JsdIsWlsDCGzSLCiehF56JlRZwSV592zhEgFeul/scjSLXiWqfgqrviu38xL+11CH3ERkdDXx+OP/8YkKuWthGfH5IuL9RegekBWiOuvpuhlHjlYUGgADEAndjOWZLqcDln0fp3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750650594; c=relaxed/simple;
	bh=SY0H4U4kGJllHEYHseWPM9Qh0jKvSsb26sD2y/KzB7Y=;
	h=To:Subject:From:Message-Id:Date; b=XHhYdfpyDY5ii/bgphu3l6JHKfKbjTNHEozUjcUVT7XXvxTiX/0M6SFYJBsJuVj1NlM/H7EdvyMZCH8yUlJRWAT56R2SPZJVURETfnwSV4VIKCrIGieKdemV0efYMtr6ie1byzSuQedpIFIIPplZAnRzeryMftxDRcLW83JkM+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH3fIggi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH3fIggi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A20C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750650593;
	bh=SY0H4U4kGJllHEYHseWPM9Qh0jKvSsb26sD2y/KzB7Y=;
	h=To:Subject:From:Date:From;
	b=nH3fIggiSp/5Gn5gv0GMFzfwfOwbqDjNurWevWNSM/4IKis0M9rH9m6GIzW+FHvZ6
	 DvzK81UZ2itbvEDjBb2m/SZQL8jHTmk2vLX1absFz6fnqsqhKSe/8DzNWrgYBiUxqO
	 l0FeYZMjhaNnCdgOWivEHIkcjfRYPA1Z7F4Hx3gA1mzpwrqVgQfp0rjzr9waQ+s9eH
	 QBF0LGOFlqIQ59/WwVjIJuN8Gs2+0gzLk0qEnv8IpRCSP9MO7TUZ2aqSonL4xWRom4
	 hyHN0vasQ0teRPzcH+PZQzRVqjIVxVfa5LkY6RdCSO9LkpVbu60fbw6RXrhB3+ihyW
	 TEk7t8VF/giTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369DC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065059358.8922.3416249281801080506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c294d0eb6552c3cbeca067e30ba680b610c56588c5eb0714dc6817c6dace345
Date: Mon, 23 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750650593
