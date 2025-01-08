Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31299198A06
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736366754; cv=none; b=VvSXGLLIMT0FZfYgL21wRPnEJ93ngfh1JGU/Moy9eT4a9YwK0EDGmPpMZrGy+JCvV1WkJJja2JMZoloDmzyBiYb3r93lbSUH3pis3AQ5T87f0vEul6d+WyHW6Tu4RU44GXzPgpdqs7/cVsF+UR6UIsR88KxDgLkqE7xUByxL8OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736366754; c=relaxed/simple;
	bh=0bcikJrr/+LTfLGHs7vM/syd/fkJX0jZfVnQaYf26fA=;
	h=To:Subject:From:Message-Id:Date; b=fE/zddnRsYqyN+CACyPo+ymbaRaUMt9g+HG240zNsXh4b6SvjBiq5bsOflbTibBKup3Hv6X5bZXPa6KMYZ8GeAewBaVU0jjxolOt3Q9Q1OagPZF3rT53hHBuTPcDTu/9Vol3P788HLmR04OOLofaj6uw5p0k9+rpgdNRDBTgz+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTBMxwhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTBMxwhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C9C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736366753;
	bh=0bcikJrr/+LTfLGHs7vM/syd/fkJX0jZfVnQaYf26fA=;
	h=To:Subject:From:Date:From;
	b=rTBMxwhKvH5Xu39izHgXfYk79nmT027Qi7SlZV5ZOanBN6JBkUOlN9K0u9ExktvVp
	 5470ydNiWGy9e/PAmf1rhJXz2pJb09MCZKmDIxxzM8lecHQ15UYhWtMlUuXKDwzWog
	 bYJkt5ScLw2qqL7KfyOsBLfJDEiTTRtQiE1fwwCDNt3yKvQuqqfVLCe1VzcNpljZDV
	 R9EIcz6EizskJDRNa47PLUqoArWU0+TLakEnTBW9ShrmH6luGss42zm6dDffgY76nx
	 x//xmWlv8cqaQs/B+O+QBrVjU/F23iR8SG6+kiLgJSngRbhsjWjsxbYi967f9PBlA8
	 nb2rcmA3XpG5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96850E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636675360.16507.15456774087290352103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da3501839b5dd8e6863e00be5ca8bc429e601f12e27faa913dab4245e7850b6
Date: Wed, 08 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736366753
