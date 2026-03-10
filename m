Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C6C280A58
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773176093; cv=none; b=KwlmJxCTWdtFWEJyGZpQ5xSu+Nuf8Mg2DcQw2QO8RpcpVfvTU5AdBQj7kSHtDMtOITUsO84PsFUKVjwn8pubNftZbFF7iOSwGNpPeuGIb/h1MYjHZNDGoGVNe5gb1EYnzrOE0pMXOal3NabbLHutsSBSlA0REjW78J5W6ysOarg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773176093; c=relaxed/simple;
	bh=Nag1dLbguEi65ZnfwMkFolVNxnRjS0CrDrEzLhgQLMo=;
	h=To:Subject:From:Message-Id:Date; b=Sjfa36h5fURjAvj9mNop5NZzKWXP9vcFq89kZHqwmK5ZgpU6ug6vVks5w1UiElRd3Xy3TXlF4AW7K7ptqgTQ95SHUIzYGmnAjWSN18Y6g8nUXkPCK33WuPviRkEDDinQcpPGH2F+n4eJtKniOVYIvCfCmfJ+d9sTQ2e7tsvvLRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq+3TwCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq+3TwCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF9C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773176093;
	bh=Nag1dLbguEi65ZnfwMkFolVNxnRjS0CrDrEzLhgQLMo=;
	h=To:Subject:From:Date:From;
	b=Wq+3TwCeMV6HndQ1fNUOKQR1IbM0O4yUwu9ab3puGFwVwYkwRegjXdWmsupiYexAS
	 t1KxwQir6/gbsELRu44nqosNUdjgCFjxdO812ag1c3K+rQJvck7SMjgjHC4mV2t3zs
	 NsTr4DbhAnfmJFfh1tkimtr5l8fZwk7oXCpvbCOcnzU/OD4JkQf3vz6v6lpYDgyrV9
	 EoUU8VJToXy69r6kc2yP4y167brXoCe5MBoSMw/inMFC4ftuWnNsJPS2b9xAp3Nniu
	 2c8WQLF4iyz585Wvd3jmD2W+8sQl6f/5mE3HQ8atvuvl0u1wOsyxQBfyrOTDUSlCLv
	 BUWSwTbILnZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB2FD4F34
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317609358.5760.11926369317178997732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de804e5c9b83ccc9b5244aaee0c189d4440c411cb87e70c1bf3cbbd25a080b3a
Date: Tue, 10 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773176093
