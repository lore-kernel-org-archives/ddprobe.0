Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4312905
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723275954; cv=none; b=dZc7LwwLdNfjdBBBntgpMT5y6NB4Unk0tqYWmfPGkNdZDmTbcjawzvroAfQaRh7URzqVpUcOusAg2C3UWJmICgVpoGsH70Upg35+n301FlgJQ+og7VfEy+Ve6aZzfIAj32QEn38dg+gwFkXlz7/T5nahfQyNEAY6xXiczs6ZiF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723275954; c=relaxed/simple;
	bh=9Wwc13moy5TcCGB7GpvyP9NYmOTIPBddLvqcz+v2Elg=;
	h=To:Subject:From:Message-Id:Date; b=pID14p/CVAqig6DKjbbNqLvBVZFv6CgsIIior5gguCaQoFkYQKLodz1XDk8/esQ1tc4B3nkOytZkgJpxnPIa8/+jENt9s/+GE+6UjlRv+803HnAoNXYnyPgtVvoVoY0JiZ4Ixrb2yEjk91yEAP5P5jitGzbkHTt2uSgzWpysAVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSNSs8ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSNSs8ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC29CC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723275953;
	bh=9Wwc13moy5TcCGB7GpvyP9NYmOTIPBddLvqcz+v2Elg=;
	h=To:Subject:From:Date:From;
	b=BSNSs8ikAzI9ujWVmTBj+OY2PTYvIZsaz03Xke+U6U4xv+bqFYRkpjXj+PkJtUqvu
	 dxgVF09WQEz8h0BQ2Eqa8ELKqn3s2VN+Fzrfl9nTyMFj/WuNlXyna0lTW6ICwirxax
	 Jq+tNG6h/SPXVeY4r2F3CM5+MuRHqoS7sqngOCsjJIhDSG0hO71nizeLVswdnEmUkS
	 LokUb0eoSP4oLU+9qlfCFEK4Hhn5Ia0bEOnSJf/Hd3eMOR8/uiAYUH25g5jkJ+jUoy
	 I9rwi9RojAhe1AnwqeP+S6FyfZiuZP4aQa8zM0r5LNFhfz7HtrwNmsxov2w/PiZXp2
	 tkXXz8ypoLRqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F64C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327595357.30611.8786580570464263433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b17c644e626f00d3008e6df67a8cd2872091c2d17394c91e8ce1f9370d70e5
Date: Sat, 10 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723275953
