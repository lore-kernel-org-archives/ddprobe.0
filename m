Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C4191F6D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742017135; cv=none; b=p6lopdNf+0XQ/y1n8FE9SKNBTwEZUcBvcIvTEpcj6txwHlBt4ihwe/5WhHK8iAoqM9g0FlLwCaJ5Ttzr20ebsZmQYP5d0hhwvazsrlgZ4F+tCosv2w8tcVpWMcLQObQFvHw63GQhfK8U+Wnf/vVDitSonhneer5JqJtQEVWyM/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742017135; c=relaxed/simple;
	bh=BN/SRH/L6aCp6QI3rfvWmRsjR9HAMdz8LvZA4GCHQzs=;
	h=To:Subject:From:Message-Id:Date; b=UaZ+QfCHzpECPYVVeTe+qSC/PHt4BCjyLwGiVZvSEC+D4sILFwPK7qofNdlGPMfa7pMm6VkuXwfz/vWQWaY1Ivc0DpVQpCjk6wbsE3a2/8kJGt4vEyjSWa9Bh1zAZ5eZnD0joG/vTAPAm+z3yenNpCm3/oQFYxupsV85A3GRlRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRaQGghI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRaQGghI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF88C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742017133;
	bh=BN/SRH/L6aCp6QI3rfvWmRsjR9HAMdz8LvZA4GCHQzs=;
	h=To:Subject:From:Date:From;
	b=hRaQGghI6YIs1WzsAlg3P1tiizRUnMcHo3JB4rrpKZa0hDNK6unElu2EqOlD7XIrs
	 Zg6cMk0jqHPjOtSNNiPLjT2SoRmRnSG19XQR2WZD6Ru3KCN/MH5AABtbEsQwr3HSlp
	 FnkN7+oks8hgUb48xv9CHWgCtus5/nY03Yi8pjMMJ3zxye0W7FiDbA/DGxWyr3+27j
	 rdsRSfhGM0qZIMMOgdFR9YkU0mHbXBeDDU+4u/1yEqVuhpcXoUuSExLMptH8Eo9DfX
	 HdhD8wCDruMc9YkXBX/B5mBcwm1JEktjLc/nKzi+UPkQVIwYa/HJOHc2LMp7s4REXx
	 6yLceJPNgSKKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3C7C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201713361.3148.12686409850527546913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf06f984a46d7288c430ffdccf39a1fd39546b562b8a65f449464acdf0e03a81
Date: Sat, 15 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742017133
