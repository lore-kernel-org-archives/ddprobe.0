Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003912FC86C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952434; cv=none; b=EiIfREV3sRTIsQKBp/kDBhqcbHkOpaoq62OFpb8cbVY8q8FFVSKE9Vr6HUSYidjrq5WvEREYSjRCyny7KA6eOxHpGc5YWGqmNeshpnjKzEgBHa3CHyLuxt3Ix+mjleHQTxf9qeq+BI/s1NNJpTNWOJ60iK8ol5+GYdWZS8mno3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952434; c=relaxed/simple;
	bh=PBjfz2Nhrl1SPy/5HllB+8kKZkKw08FAyTWfnZ1jFnk=;
	h=To:Subject:From:Message-Id:Date; b=MkgHky39avhsGiBz3pqBKutrpAfsxYaNcp6KqaJCmrE8pExl9GhtN6VjwcsWHov+qb+qEGjkBGWYzRLofM5ZRcSqdWoHCzGCNjnSnswP2UvLrJbb7nJq2afx2bqEOuTaHnBB//9wXVjkj4HAfK3pIps8Br/HzslxBGCcVTon44U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAEublxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAEublxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2ECC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767952433;
	bh=PBjfz2Nhrl1SPy/5HllB+8kKZkKw08FAyTWfnZ1jFnk=;
	h=To:Subject:From:Date:From;
	b=tAEublxhUOyiC0tYxlZ82k7g+jf573zUBNOMWTUXq+txM4DSBdg3JgpD7fNpHrpZh
	 rYWFXlULQDT+jqnKsOIrx0TQ0OiImQud0Cw8tTMHQgLdrDP4yB2ca+naLWn7UXZSP+
	 3WJHm2UZEF+1s3mJ8TzUH6IkQ2bfw2s/ceh2UzZcz9vfQV2CD1jyg95/ccx/rYjUlL
	 1XrYM5Yc9qv3q1TOgwZTKY5ngBu0GB5Hd6/BA7pTofrQ/EWdzwVvSTwwmifaruMYO8
	 oxdnJSQ9xuFlOMkVezkZ0s8Bn9vZY4TJFUdhkn7uW1SMPA8zu2WkLf6o0ef14ZYdtw
	 rcsSt9B8Ve6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F733D167F3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795243357.14059.2270530261200855798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7c4d7a759b0d2c71aa850b790544d99034f186ffbe3d48f1df72720f35f176
Date: Fri, 09 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767952433
