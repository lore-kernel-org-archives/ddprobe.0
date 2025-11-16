Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D71C862E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763320314; cv=none; b=lKs5IdTl7Ldx1a6I7UqBgBc9jjJlocHw/fvshHcFmtxcXn1Y0cLhEYzfg5aUx13apLqREE3RuaDa8LvVXInNvcClyssaFbsknuhBhT8JkIK8I6OXqiZlf01OR3UKEWSRpH0oHqxEnx9o+TmjoGkUvZwystrhzA5Burjc/S1eBz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763320314; c=relaxed/simple;
	bh=w/c3gWaPa7uXiMQdY7q3EvWjK3ldR2hxrNXs5SAyaLA=;
	h=To:Subject:From:Message-Id:Date; b=mIe/RkbrHL8obKLF2i7WtUyPnru/HIX9FoHljbikmNzm9zgTTXG9SsFH3kPzZo1X5RBmPuKOc0oHo01M4d5R8DEzg117+FRWeBLDGeYHn24WfNFsUacvT+qyuBlcAs6tHyaRP4EDDKRmlE+O6faCaDrMJtaoEz6ujBn9MrUyEjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIM8mJ5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIM8mJ5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EAC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763320313;
	bh=w/c3gWaPa7uXiMQdY7q3EvWjK3ldR2hxrNXs5SAyaLA=;
	h=To:Subject:From:Date:From;
	b=cIM8mJ5RKUE6IpzSn5EN+tFF4Gn5KLAXEq7eD4w9Mzzz/4Ejy2U3AcsY2/Ju1sGDs
	 nYNx7vHNWRIGLGjhbP8O5E9vstsgH0jc1zsFsti94oiEezRHWohLwQwa3R0UbrMjtR
	 BcHHTe1mh6FZYE3Tl13xVbIsNhvYNd9hYjsVlcu0DxCeUOrAUmhy2tGShz5qY4UTix
	 w3qAVhzPCfiM/ttr7h5RZxF2bxZ6bksQjRJ9j23Y6UA0BvcSgxy7Es214v5fH01EWs
	 rCjoRySOShC9FsrYurk8n4USeiSMpaOUDqnpNjA5HcrCrQybBIB4OwTrSQcipnKK9r
	 ulwePggXRauEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F13CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332031358.30605.4163765187834749331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b528671b6be9967c13fa691b74e35d8a56ecff630520ea71e73bc4d02c7cffb8
Date: Sun, 16 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763320313
