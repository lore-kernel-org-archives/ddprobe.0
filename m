Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522ED187FEC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742410794; cv=none; b=ByL/eLwRDwjMqqL+XOMuBAAQltU5IVwv0ZZuhn1W/5xsi6Qrus1h7JHg8/IXqhCleDOrh6o+MqOxACZ869EkrVIWvkg6Bewc0jDrKswsSCp5QHAvyO+2UXWs9CV0ao7azqPmmSSHsBCq+Dg480h6H3KuokeYt+j6dTqxsCuOrVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742410794; c=relaxed/simple;
	bh=Vc30ht0YdDspp5xfUoiEA8hHQZwCxN66g13oRaEfK5A=;
	h=To:Subject:From:Message-Id:Date; b=unoXNO+Xo7VZ1U3Cmzk/y4lcMNM0tCq5mAvAvIXUW+vHCfZX0SXkPHzkyZqdy7kl2vadSzXgUcXQfbnx3BvcNCl3PyA+piKqqFItxICWxYJUKxNIet+sC3YEEKfl5Fis/v8RGdj8zwPqgw7omssp413qkBmmoXjdT/0bR+gpv00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEuEicAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEuEicAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8BAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742410793;
	bh=Vc30ht0YdDspp5xfUoiEA8hHQZwCxN66g13oRaEfK5A=;
	h=To:Subject:From:Date:From;
	b=LEuEicAaaR6xoT2muNLpIKttI9pCLTcvYwiBGEL0vkMs1acYJBs7ZOwRUUQwbFTql
	 UTMsRuhjngLTqZQo1mC4hJJ3eutM+bCv2ikXNZFhIUrMshAgZurXz1KrMphOCECo/n
	 0GB4jTUbo9IDdGdhjLu9FtKWYOcAAKjS8yq1W55IpUZzUDqKGQ+mk849fqln4xZSiu
	 yYs5e2IuBnnXJcA/3JTLZY0HmNT310zoQNVK2XXA+RG6O0gpwZ/TUSyhys4LZp8NoX
	 nBV0v4FUeG6knOic9iiVLjRh0LFrWTMFgqGMDxxNR1fZTLVwl92bjoFHO6mVklC7nH
	 uDx5lrjMi65+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E53C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241079360.9166.16399285825406960880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492bd6fe5f54411e16beb473866ae4b2c4e1049057f46dc4deef96e9e5cb1404
Date: Wed, 19 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742410793
