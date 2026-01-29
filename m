Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9092D660E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673834; cv=none; b=uRAHY3MyIc9qVgyu6eOrbyGNUN2PMGrKeUDifEb/GKzGQeJnqbaOc9QgOnmJ9rKB5aK7bBtaX70bh+nc8wyEBmvGsQGMTGXkFBD5LxwClkSGFU2d1misfVTr2LqstKI9Pqkb/3Ba7N58oBGB2Z7rW8+K3jnLEGnFusPGgqn0/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673834; c=relaxed/simple;
	bh=ROtrMawF/vaEgPtz4LLf6khP+BUCXrNgyv/ZQwBmNf4=;
	h=To:Subject:From:Message-Id:Date; b=GiB4uqgIQY4RNcYcNLrAGOjuW6VVgeqOJxw4VP6KwqRhXw/Wy6fxtMbVPLVFxrZtBBLcUC1GPRTXDxZRcYt7Q2+gZb81jTRjWys0L4EDav3DKy0yMJ+dYVmiRpvvBcRrphLQHvKkdz4b5uFT4SPgkhJ5+W7BPBZrd3LNWfAgbDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUyrVg9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUyrVg9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3410C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769673833;
	bh=ROtrMawF/vaEgPtz4LLf6khP+BUCXrNgyv/ZQwBmNf4=;
	h=To:Subject:From:Date:From;
	b=kUyrVg9zt0hQd2BNO5B0t0RldhE/Xr8SRbxDK3kv2kf48sHART5aPn/5I4vuJoewS
	 9sfZAzHT8woJCwoD7hwPayetjOj2Rx6wjZvuiqLWN1otyVabb5EzWQd3CnDhQSa6P4
	 1dqUk6cPAInpAyr4rsPSzHzfhDt3CxxBOXt0NwLX4UmIth+57l3LjNTUbE7TaXwfK2
	 0WR6GFNUWsYpYRwhryiflWcMh2fuVTKhStZ6wnuhS2NlFjaYLr0ftObqx4/GYHMC7g
	 85anDmWrvg/oh3ze8nbH8D/Lun0/KVdCfP8ekt0Y2cd1CFeCGelExdiS+HFVLf+qvG
	 ax4j881PHhoOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90827D358CE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967383358.3122.6548351073891448260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7301f9dc669fa9338711ee46d8d5278868a45fb7e3fe18aafab197276987dc
Date: Thu, 29 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769673833
