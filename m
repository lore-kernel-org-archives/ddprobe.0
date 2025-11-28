Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FAC261B91
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764295974; cv=none; b=q3v7AoDdFsgGRlY9lSZXSgI3FZc5Ycaqy3ygjh4FniKWqvrRE6KeG5DrhVOwuDY/Dcfq293hKwrgkaj0ESpmtOoZwPEdJxi8rxx7+nhR2y8DkZxkKC2dVm+wcAl867FRM+oLbxKQ+EasC2zvglqUKmHyBta6pPYoLXv4hnt9p/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764295974; c=relaxed/simple;
	bh=YoDSpszmf+8brpyJ/2CdRZffFOZwcU7ObbxJvadaueo=;
	h=To:Subject:From:Message-Id:Date; b=IOLvCZo/JUEaTbW87yWWGllRovCUcPQO2RGjg3powiB/PCB5SjPNYuUnDmlMOm1sHchrts8JnSGFGaEnOzBMZpRdk9+AQgmdLoQxrdccWVe7Kac7UEq2rF9vsloRuNjr/8wrpj7eqFcGde9tU9CTvnYHP+fTGzPcUHw64aOE4X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPwz6qC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPwz6qC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03DAC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764295973;
	bh=YoDSpszmf+8brpyJ/2CdRZffFOZwcU7ObbxJvadaueo=;
	h=To:Subject:From:Date:From;
	b=PPwz6qC0NzaJ+bWQTyAPA7jVkfAS2mWlvF89gtKTHBMktND1gium8gzwWBNsxDyoD
	 Yv8ywLpn7jONQv7+R8N6joYoGiB+bhZ6lUjTfdtMQsflYrlxDUQiqG+8aA/RgK1Zs6
	 QsYnTiTtwHNkHreKwAMQMJsrs5HdSzlTSdCGv5GiKsVOqWi5egBHnYFfkeFQHTa1Wd
	 zXXK4f6JB748BQw9OKB3R7CNbl6WcYsOzO1bcZjnCa3rrbpsmZW+8E67ZkB1MMQz2B
	 WXikzLY0jDX4s4H1FoPbc6j7AmUQbSjARZmQ2enldzbNABAuFhqkTIws7b35XXoNGA
	 avSh3OKghkenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F0CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429597363.14510.10820705468218232667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5c732e8d10a3f35ed5082be727b72fe7f1132f00195998d4edafa32213e254
Date: Fri, 28 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764295973
