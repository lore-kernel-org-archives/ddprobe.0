Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBCA55897
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744425595; cv=none; b=OR2J1ITIMkYU9X+Unv2SobG7N/eFMZKAZjIM3FAe1CMFd4J+Nm53++773S4eBOpX/OQ/Smv3m/vAWQrembHpkZVLOa/ZjUJpc2F2jHs3+QjuwA6kr2wleY2p2XxXYpoNXY9JBmvOcfqMVvxE+0Y5+tARTRlK0fvM5rPmW5WZEQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744425595; c=relaxed/simple;
	bh=5pLUcZnyvJ27fNhg2STxSCqmxuB+Nqf7M5u9jQrjK+E=;
	h=To:Subject:From:Message-Id:Date; b=S78BJzlq7IYUnams3OirV5JGVk0IUk0afLhdnTNNcxqLHK0koBTmcAJdk9yP3tEgwqFcpKfv6YBBnaX5B9fENeLsPHNj6dcAiaGriB0LTleQ67aC5bY82OLu6SUmE+JLibiUj1vKWqs9hNZklQfm8wC+GrWiHuGnVQ3GH01U2u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOW48MIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOW48MIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B50C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744425593;
	bh=5pLUcZnyvJ27fNhg2STxSCqmxuB+Nqf7M5u9jQrjK+E=;
	h=To:Subject:From:Date:From;
	b=GOW48MItilTWuqqCAT72LA9DlO1g4/d3d7eZv8qAojnQnbMu0eRG2fMD9p8VlSiqM
	 esejAxnWxs2+P4gc6Wi/VgQIgyGGhfeOYWYi0v1rSvLBh+gg94jY9C0O0dAXOZI+6o
	 jGBdLmcr6zQRL8Ht/VsRIg6pwOAG8r3LHFLh0sniVK1Wu4goqY5x/3wyrCDbfk2DZh
	 8BwqeeIa7AlX1yp11KducI60pb9kNSZCBhEsGshJJIZHwpPdNi/DXIs0beUNZtMwwr
	 6pdxfvPu6MMK+DJlLTDa9xXUErENgre95d69Y1nva7kZkFU71Ckxc0uY5fKPkximLj
	 4IsT6hF7JqA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8AAC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442559361.32130.8472578370669911723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5969f4ae0e695f7d115a7845c4b49a024174a4e33f0866d1d66036e03244b732
Date: Sat, 12 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744425593
