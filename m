Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC9A1D63CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733954153; cv=none; b=oAT8uusEZwrLykH7NgkEvJXLNYYMAQhoKQPLut0JpWQkTmwKIwLFoLHMwVAa+H0eRP1EvQdlpOb6brf69zF6MmENQQfyICzCKiy75NlrYxNssQ2ixKDD/cFxe+5Kq9AuNpQs2lw+CjhVPFnnT6nU1aGDhzzlFLIX8QV0w6fNF4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733954153; c=relaxed/simple;
	bh=5wqBB4xt6W5Mi2VaPKK9RTXzuPN9AlG6/eK3qE4kQcQ=;
	h=To:Subject:From:Message-Id:Date; b=OBwHSjxe9JuNmiOQkXB0TfPwlxHuXTkTEnsfBfA7cATGg+ks71ijqJL2Bu6pCEG+7uUwavgG2VJ1h7vs93PWkxroG+Ttg67owXELsfsHqve/88wG6zKHO5hCi72RHebMwV7ARSFDje3sMhCBPuRESrWzh1cDgXPuGpwQSTtsPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWljdNYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWljdNYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85AAC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733954153;
	bh=5wqBB4xt6W5Mi2VaPKK9RTXzuPN9AlG6/eK3qE4kQcQ=;
	h=To:Subject:From:Date:From;
	b=YWljdNYQBylWJAWyy3SpJXZWQ8ZdzBmep7SURdeOrsnryj2qb3YDldHovbd4kmRUN
	 jy2pY1U6FptLfDn7LwQMrXnn9ZkZVa/tNGELbDAmE5obZsZY5FVyYdt5UVUOsf4PIP
	 Hp0Xn/ExpB/rHA5Kl49W/Rk7PrVk3Xe8SmivLBN8gIyKMGop1aiNtWnD94K3i7Tl6t
	 YXLgmeIL0+ErVto7z/ZaisinjLWiKuuXzvHcLZW5Pcdu4R4uqE3ZwowbpyIxuW6v9g
	 1XnddDziHdXzBdFcCQ1YXeKci4qQMt9cVhMidACNqEVKTCfEhlJh/YPW0YKJX5MJVC
	 5j1cgWxTwa1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CC9E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395415365.3421.4004766095199685435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be844499883fb30e9bdb51de2251371c38f4085cdad48145d8590000fa7a7a6f
Date: Wed, 11 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733954153
