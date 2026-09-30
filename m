Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5E446D2B3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790773236; cv=none; b=FqD8yCOgkfWPx+2VhHQ0EWnxb97525zR6FtrRULPGMGLhsyTDZlY3xOyOQOGHHRbzrnv5560V0Ot4idu2bPx3UU+8k2zKY/FlHmWL5rx0VIelvNyBhdv5kE+r8w5uY+iL7cXLTNOxihB/tS+F61mq4yCnWdFB+/cE6gfCzl+H7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790773236; c=relaxed/simple;
	bh=x+Dd8LbupG8on+PAn3LMJDU7Nv5mMvnEA1fyhCIOPXw=;
	h=To:Subject:From:Message-Id:Date; b=dzgHVuCuYf0IWgvYxvLu1pf6HK80G9YbRDdJo7keGb/eYcLEiJikzXOXDs4jck3SQnHbD6TquVyZdNASwS+4pJHWsV8n5ccFf7ZtJyDAcFjNduOvnOlbWlwDYjx0zRyEcmi5WFnubTc/DiZbc15iuR4DPJ7yoQx3O/VrLtFDG2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K353sk/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K353sk/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE457C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790773233;
	bh=x+Dd8LbupG8on+PAn3LMJDU7Nv5mMvnEA1fyhCIOPXw=;
	h=To:Subject:From:Date:From;
	b=K353sk/sNYiUl4YrNUt0Rikdaltxo5gU18GflYPpwsWQ2kmVCN+kJgG0NhmrnK3r7
	 5M+HAlBi4ZGzuUrr9v4nejtoHlgd84rf7aVk4lFfh7xjcIk3Wp7I8R9UgIw60wxADr
	 24OIK4rzfv9aHDeJHlEpb4NagxVB8WoTPYmj/z7/YU/ZwI4KLLf/IOpwha7T1GmKhL
	 UgAR2ifh1iMtyM0oqmu/bnZo19ht/E1lkhV7EQsxiP8DzlC603af356EkdUFkByPEf
	 pHxuwKwa0tn2pbMI3Ob9vuZ1xrKMEAvatIGFertFP5+JpQV3SYqiRcCsvT4BQZA1N/
	 n4UVUcJ0emb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB3CA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077323368.14684.6227534220401515818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03e640008192267506b0b9c3ba6aa9bc0b1b27edae604982895fcfeed5c23dc
Date: Wed, 30 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790773233
