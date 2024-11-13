Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9D1E492
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731527154; cv=none; b=uKyIgkD8JsenR4vJEhCvyvzt9DhVK+Hy09voGjyT0t3ZRtWfreECuFNIB4xLWNAjp3H2JLto8PF5/cOicSfr36dOHDwLH4zfZl5T1iKOcn9crjK8doRd9vmqRk5AZFjGrVxFfWx0UOAvXV5buyJ31X7Z79ogzTzpL4/I4ms5XXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731527154; c=relaxed/simple;
	bh=0fWMcG/87PqA5sjs9gnYdtYMK4BXK2KFKj1C9g51KZU=;
	h=To:Subject:From:Message-Id:Date; b=Jj+9crGY85rAsGmnY167Q3DX32LVYcUBdfEw0jQF8Qb8KadToq4pL1KqcBrKnzlPoPlxUENqMTEDw/0Km4Q6lkxnv5KE1XyBLaCMcRvW0NBDB8f0+fBxNulXBDBfxsvefhbO//iyY38j693FuChDZ8A1VXbwwnDcpv+pl6AsrMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6IoKDYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6IoKDYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AECC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731527153;
	bh=0fWMcG/87PqA5sjs9gnYdtYMK4BXK2KFKj1C9g51KZU=;
	h=To:Subject:From:Date:From;
	b=M6IoKDYiLGhi+pJFu6yDU586lSshSz0Ga84g5inUeE3MsS62hmgrfbOsQOASnS7UB
	 GCrLlMfYJU9Yg48T+Rb6yQQa4XLOatI7qIEwkSgrlkA3oY+cbHxkVOOg7wqUJxBrIb
	 08+no+AJhrZzFz9o5h/0o8JQvMylGEz0KZFHl/K0Zfs2znfirLZSe16WQExnKtKVzP
	 LADFuRdqvIVRqVQ7zWrABzLf9rzNNdNboS3A528lZgs2y3kd9TtxJXhChf+ZNwr7eB
	 4Mt8rAev7+Ow4z8tfMUlfneJCv3kl3hSKSxwRGHMez/AxfyWSvRBmophez2vN2l+Eh
	 b+hgwMvkWCvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94374D637AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173152715359.4990.17219692949198571977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b19d587b8632e72aa8b8c3eb482ac0bdbe498bb620a60fab6c3063ce8761c5
Date: Wed, 13 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731527153
