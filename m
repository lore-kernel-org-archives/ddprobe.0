Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FA613D53B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745252394; cv=none; b=iGPbDximDIU8OKogZqMbt9wAw6+mAy2C5ItNPZlTtWgtt+hg//izjcKIOr/yYRr6XoD2YKKYuFo0B/iwQXjb525zve3sQdkKMRiEhNNj/0fH2Q/0g6tgpw+3hMN1k1QmV7qLN41+IXk0s7ChCuYNaXpeJzeW3S6ekQa0Jv120pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745252394; c=relaxed/simple;
	bh=MN4kb9UfER/GBEgSNQ3e7nnyNqc9eXF5TeypGLsR9s8=;
	h=To:Subject:From:Message-Id:Date; b=nOq59LkMi2Yizj6FjVZKGH0RUWGoI3agWljulLfHfEh7u5ulB9HDS6E7vnyTnfbK0xUQmFj3pSsF2LQGCKPh11156feOH3IJi3hEqE7TMxvsRl7rOoxwITUHHpcw9181l7+7tHFnZjjL6tIPTN2xndEydlAK30S+EYNQPilj1lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgqWFg0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgqWFg0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BFBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745252393;
	bh=MN4kb9UfER/GBEgSNQ3e7nnyNqc9eXF5TeypGLsR9s8=;
	h=To:Subject:From:Date:From;
	b=rgqWFg0w43OvlGZkQpzed5TXaiqJgHU6/bU9mCo+TI6iF9p6tuuQYSA9ZP1NVYFXH
	 Ec0eLH3M3elmsJNMyyMvjvMPVCdYIXiQZTkcxqHajxyPunRsu7mJemaNi98fMsth9M
	 JVKIQOtW9QyVcA1FSgyf1BQE9ZvnxKXhcr5vzUgrSlG39M37lVa2YIXE4xqD08iTXW
	 uEZBXSuQleuTAtLVu/2s7paCt8Do8f+wYo3reyarjwsJS6KOMU0uApJBoygyhueRxX
	 FSVa0cwSHhWjtP8n+gzBDqUX6AzUnUTu3/vA+3HK2WnZMO7zcNWLkNPjqkomYt1Pvb
	 7yq9fJRU+G8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98915C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525239361.9106.4752434041876222715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92139cd09340968f93149cd6f95277c57b2350c4ccede1c99772506240c4407
Date: Mon, 21 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745252393
