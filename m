Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE5A5F855
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706974697; cv=none; b=uWs9a7WVpeLk1Il7dUCwew58ugCh9fWzje5CP3seNNpcxvl4YRZsA9z24HtIGyzpt1JPX38D/yg6OmhR43rDUEkcC/chshEGHBeJIPT4Blm5I6uOZTgyUjs8FUTQ+9I354A67Hk6lS/I/Rr+pmCpL0dx9gWjSEWMQtat403MOPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706974697; c=relaxed/simple;
	bh=hQeYNiPJRuCNfLIQSmtMDSqWxD9B4DPzu74RKmjHRnU=;
	h=To:Subject:From:Message-Id:Date; b=gRNoY+L0tnJ/jSknzhp35wULHKlgWCYxIc0LFlKjfYt9X+3UmppPS1Se3LpRq8JBy/AjGegmSmY+wmFMz8u62R/yCT9QQIQ4pp43G8mKMw53EXUf/KyfcJBQWTQrTIXK/EQJMikzBvyBGV4fPzgpQFqzkkdqI8DaLmZpjFijcRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnAEe+yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnAEe+yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1E6C43399
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706974696;
	bh=hQeYNiPJRuCNfLIQSmtMDSqWxD9B4DPzu74RKmjHRnU=;
	h=To:Subject:From:Date:From;
	b=NnAEe+ylEjJjAFBayqgtfvF+ycvgW30s5FwGxjW0eGHiYYHXcDuVmbMyeHclUOyJR
	 mm/od8596AUdEgiFtLsX5lXKhNEjERYwLUzzJ5KOctmi6h4VgZV8rDDweC+fWgPvjl
	 nm/PZzmnP8EEammg8lYQMCHDHyL6zX0nrFhd13QTKPsNOaQ+bptmbRT/bzr0bgpRkT
	 Qy0/ZNX2CZ741fhaZanV4zZGe9R5dqUVpUYFOapXFfy5Y9KuHSOZfEG96WGxcE8wQL
	 Zkn/OikLHQ4fSYLNHhbuebsjuGALkrcrFa9vxKUs8c/DcgqWy24d7BlsjM685I94W1
	 EPnJN3KYZ0p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BDFC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697469636.17621.14588440662504739195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3421dbe0c1c26ba022aa127dee9643bfa03e560fae029e6a87b4c2fea3296644
Date: Sat, 03 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706974696
