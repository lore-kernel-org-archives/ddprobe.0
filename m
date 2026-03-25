Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44C235A398
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774421094; cv=none; b=QknxukecpnKMOHIdPlPyCqf9ZE96ZyD9Ehrmm+cfmScZo9CYV30sHm+xkWtRrq7TarE6RC/oxumer4R9AwiCrgj0PiJbXxCk2JQwOyi6H1Wa5QzM0ji7Qoed45dYEuRs+EI7tcc1TaWzW/SiXN8gX+FE1wCFeUz8o4t8PGkFdho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774421094; c=relaxed/simple;
	bh=SPfe3S7SKbM9WNeFJ5qzkjbbnX3AUxUmLT15k2F61i0=;
	h=To:Subject:From:Message-Id:Date; b=lIr+9pkCoJrC9EyrpshquCADJ9tx1zuSaOlYBp1AxjnGcu9f8XizPBmzKXZM/wRv75IRI6tu/xVsfXFVvJOORk0mHvw4eVKLCc0tGxku6I8kR3D+gwKJ/SN+PSSwIK6JPsqay7aclRvAeZ6sbhhtD7nyNuiTSfWeDvlXgLPpRo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBHLCVjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBHLCVjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774421093;
	bh=SPfe3S7SKbM9WNeFJ5qzkjbbnX3AUxUmLT15k2F61i0=;
	h=To:Subject:From:Date:From;
	b=hBHLCVjjnirUHHuSqfhOAfNCqJ1loUsTW4nhqWIZahXPcrouMUHNuS40MLgYdXFV8
	 /gU0An6FILQBbDQFv8oXdlkXHk0rpZozGHJR6PbxUebHl1H1eBxCjghA8ulD+IbCFM
	 U0//aCgBiouXTpekYol7y02ngZ6yWzaH2jk4mKfXqUsv9g2kqp65DZf5ws1Ie8a/vH
	 zbAFJP5UtSRRWIZVlhfTdjjOXN3JkHaW8Wh59XUkEI4H3iIG0mo1gsOahC7sGHCWvA
	 Dmx8yRI1+Vg+wXZRkkTNIPLjZ2mZBS6eqSgUDpyQkhsvA3mDvnLSmFYHVId+E3+hOD
	 rSb1caVu4ceZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2FFEA812
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442109358.14124.4663178645455433563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad687219a66de86780d0e4932e15584ac6ca66c1622fd33873e63f7b89edf5c9
Date: Wed, 25 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774421093
