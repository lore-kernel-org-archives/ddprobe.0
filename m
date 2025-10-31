Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD75258EC1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761955194; cv=none; b=XkASgkGiQtNdwINYRoo99I7UYfDCGSCF1BtvebeJEM9dvxUsx1f9a9Id86M7+Eaqmne1rTKCkFGDByIG0ke3txQY91DLnegnu6RtEm6FmhJtfSeS3bIJvxYxH/bHtfScNkeGCgTaYrqrA0SdsYR+RsvgAUAhErB5cExEdv8P0Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761955194; c=relaxed/simple;
	bh=VHCUMB5+cqVUcGS8HojWGsLsHplvGzPKUNL7LSpRDzQ=;
	h=To:Subject:From:Message-Id:Date; b=EmvPfMubrZdrS4y4SegMH/ODjOOwjN5U4cEHVp0SwHKUkYJ+eUpaToCYzkoDt0mp1KcMcCaV2sab2+NA0hEyohZWd7jZTvBIt2FVkv4nZ8WvRY4Gmf7whJm+wVeum8naMl0UZwT6bwLk150yzpD79Wh0lTweVCeAv+N4OSjmMkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM6v7Arv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM6v7Arv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6DBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761955193;
	bh=VHCUMB5+cqVUcGS8HojWGsLsHplvGzPKUNL7LSpRDzQ=;
	h=To:Subject:From:Date:From;
	b=YM6v7Arvp0pPvBELRo68e5jP93r0O/vnOBQK6cGjSHHvQxxM6thm3/A1jvyOwm3IJ
	 Ur2yR5I8Hzi0zZI+HfR+9F3FTqEP7n8MKUAZVfEdfk/I1tqntslRTEjF//ON8uGhou
	 4BhvvdIcKiy2JFQFsqGXN3GRP/LiFksjhfgv9WWeMFafbU2txA7TN7v0NgkhCZeDSN
	 s5JQWHSBQgQSHiI/eVoYyLbnLvF+7kzOlW5EljKs5JyQYe6VGxXOR2mZd95X7ApuBE
	 Gx7jTFfCzzcRAVvUhq+Jhs1FghzlD2aUC7tWdnKu4JFw94Yn2fnBC3kOLax2mVN1qX
	 vVyM0B1bcKDQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94BCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195519357.31988.10620909619651174727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05c5c5b7c5038003b97bb7e67ebc6ef65384d3bc1c648c2880f3d8a185261ea
Date: Fri, 31 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761955193
