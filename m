Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFDE2D8DD6
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749686394; cv=none; b=fZILpRYf/MrayknIkrvPJLYZUCCYn6szvtFwLEX7BNWzsNBvSBQR8bF5tyxrCqTR8vCI+FgBK8txZrO6jadbhXetbC0GhnaqRgtcRvF2kha8PjnpongVqT9eubbi3Hrumqsr57txmBQepOg4qwHvQoe3W1kv9hjlE7SEkAguuBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749686394; c=relaxed/simple;
	bh=TF8PyNb71oomcCRU4dql+9xA09hom9xSsqxWdGMPe+c=;
	h=To:Subject:From:Message-Id:Date; b=pemJXIhSvRJHUMtm8J4SZBWvs9vuKJ9ulxSGJrJmMIiyDCd9hvRERSR5rGjjSO/th7eQExKLLV7gUIHzD7kfZVxDEzych0VRWEmgR+Jslm7AupPtMMRX9q0pNOBI65s2FFNKfDuug77qHmoMjy4IRhSgqdDIYDOD915woDiWTTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrD+12Ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrD+12Ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9513C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749686393;
	bh=TF8PyNb71oomcCRU4dql+9xA09hom9xSsqxWdGMPe+c=;
	h=To:Subject:From:Date:From;
	b=WrD+12AbACWCj3Gc0AcPdoq30zbM15hcC3lPsHmR7JvuP6aA7rMYDlZ2CM6Mf0OGd
	 nYVXZ2H0RbqbNnJESBb3tUCixzzIbS7PQx78gLD2uCVKBMyFPPqj8hbPwgNSmzXUrX
	 6pYD+IAsGa/9KywUCROMo46UXt7ROjhKT/l5MPcX2Q47OD9ZmwgkCrCQPNcek7bDt/
	 +QKLJZajorcoL77pzEid/MKC7YAokgYg5UGnAVFQ5IS/yzzG3rO5xWDEXtbFWWhhUn
	 Mjz3KOOJp1JAWYheJ3WlI+Ug1nU2xFZEYpPdCSqMJWc3m1RFCKwX32FqkWP8oxeG5B
	 xoy0fQ96GFd7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D1C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968639359.19929.1278259890428590877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa5dbd92592e796d7817d73fa2abea018b7a326f7420257e05840d8bdcaf09b
Date: Wed, 11 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749686393
