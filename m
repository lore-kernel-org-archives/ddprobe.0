Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199925D904
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706965697; cv=none; b=ntqDZDrsr+TSkgybDJfeQORHfJJFwFti14mpdbP7OmsdueSigOrAh/glZQCZVmqZfkM+HUkcL17FWG9z5N9CQhUShCixPOVjUTYPW8GRj1kSlnFRvq0vm46j60+IFS+TdQlXz9xg+Mwd5IuElxroHy3/DTzad5EVsy6YSvPl8Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706965697; c=relaxed/simple;
	bh=TgOHy0NqBYCgi8bCQ08fS0462eyRDVkv6tdYT8XLjRM=;
	h=To:Subject:From:Message-Id:Date; b=DAVi34tm8qGWrBbw8S9nK2VXawunbX9B0PLE5BbRfPYZxilM6EkyEQPXvSjkbLQvu9Ryvo6l/nmP6I/nFv45KzKauucLcTWF5EVT69qCP5u9grUup1ROE1uDMra4Pa0GUceZilA4O5kwAwklZRwPhmlGxk9yLXHoKxBd6pVCOB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRKXgFLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRKXgFLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7582CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706965696;
	bh=TgOHy0NqBYCgi8bCQ08fS0462eyRDVkv6tdYT8XLjRM=;
	h=To:Subject:From:Date:From;
	b=gRKXgFLj0oCawXZlhx2UT06nxiCVZmtqxkCvEvqML86OJ6vtge98mZvPSsWTn5UEP
	 9O3JpkgyLT8KCBNYUQkmT3cbI2aU3Tfa9KLF5mijvIR/VW3Dv4+4bhlrTguh2c93Fl
	 oyOv28hBcsdHI0s0zYtIB8twRDdUz1PZyhpBhaQly3/scOKapdRtwWPFxF6JUTMRco
	 F0MNryobq89eos6qFnm9BUZFeIpqVzpvesSWtz+zk2H5yoynywzuhPehM0riSlp4/7
	 g7UCjfFAdBB9PI5q/50GKpNh/g5Xk3oK0t3+tpLdt6riRdzfABwJnildQSe0CMqsZF
	 BodQBjr/5NUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA07C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170696569636.8762.11467268769434342365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa94b0139c52a31cfb411b1bff37833abd9ee41e59f24fb2a1e6ad5befe1c9f
Date: Sat, 03 Feb 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706965696
