Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5205A144D1F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720165523; cv=none; b=r9/Tn42h9/cfyozKzFa41yV9ssswigFmepbAaTKad00qLXoxwv2tqtK7erb4HmRaqrUGOG5kgCyx4JA+Im4/3wpCz/vxK0/bvHKOt4uHjj9OVShC95XFbz1109YjEywmU0JNaINXKecoK3JXvnC9sYUJppW1zQD7whcxyEOqxmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720165523; c=relaxed/simple;
	bh=k+B6W+uqI0z46HAMcqCPDLBzJI3zML7JADdCWqiwu9Y=;
	h=To:Subject:From:Message-Id:Date; b=O+lJaLXajXk89QaEeRlYs7YpfXR6aWDVw3dJQn5fhA7nCI4bQpGPcsd7Wc7Jv1aJx33PE+J3Me0bNKWZmWPhe+Oxrp92V/S9zUipi7BpmYo07J8fnF9Rv36J49GLhR4qZq8YvOs39QwkDQs19q0clMHH6j2YcIg9XV0D23LTMPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5x0SafN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5x0SafN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA93C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720165522;
	bh=k+B6W+uqI0z46HAMcqCPDLBzJI3zML7JADdCWqiwu9Y=;
	h=To:Subject:From:Date:From;
	b=D5x0SafNKdVLRcc8Fdn8VIoghSXdFACU2SenXk44I7nw/hO0aUQchHKQnzMp6aenr
	 8H8sLl8EgEXHunG4B0WCLfAFEWvxC/5xMH4VtHHpXaWx1AT9PgH26PCTRPyJkUwbNx
	 eT7p33znWHucVxGj6LbqCYL7Z9Y8YJc4pqXWjks7jQpRZLG0zgJPqnUVqVD0TccRP/
	 x8LI65nJcpop8rFEqK+5ksgcd8Z18YJF7ytR66IHGtr4i9cWOTewjISt3KTtgFyhHX
	 q65N8GLKqrQBRS2dnDjdRdUd7Izb63fey3rWrJrqnUVb5fHPTOcj0rBnPY0plmndMp
	 i7oNcjy+ugOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6DEC3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016552281.1813.3581634002242016429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2134d042d2865380826fb63f17f7e8a1b805dd4b3e715655f6bd669a54215bab
Date: Fri, 05 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720165522
