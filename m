Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F4C3672B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780355674; cv=none; b=g1Thnps10TWGzuxbV/e5H37sWwi+8FX8mIX16pfc8WpWW7uY3aAVd18xcM/3Z8WKu8DpPnueG+YFPXT9gET0yQaBKJxnKnDwh1UxWBiWjDFHWURbEKlfIbjxk+EA6fYnHcbNXEWQ5/slfvBbgA+al+SlWzfIKv42TzlHC7igVEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780355674; c=relaxed/simple;
	bh=SVCJreghaRBIUWLfTh9fdBjeYcA8HhWf33rGysbY4Bk=;
	h=To:Subject:From:Message-Id:Date; b=oLag9bUCUApmHR+uZbqSulmFMd9qv1O+67q7RPvI+UXkvnLoEvPDjoMePOnWGjXFZwYZgkSZFTP/u/A1+TTD6UNf2sMd6pCuZNw4NXaD59XhNa/4TX9+IBghcjqi0jeN/zo489TCoGhpFDrBC8UX5cLMU010LQBAmh9dQ/AmrNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVlBQX0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVlBQX0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35D5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780355673;
	bh=SVCJreghaRBIUWLfTh9fdBjeYcA8HhWf33rGysbY4Bk=;
	h=To:Subject:From:Date:From;
	b=bVlBQX0RXBnninksqF6VxKGvdSe1jnCNG5To8gg95qMzg/Xzqqba2CytWgjbJ6RcF
	 dndv6xVcUza522hKSlESfnu8qnzxI47WKWNkFBZ+L4gDh/KN2rxMMy7enQ2G0mibXJ
	 R6ritBe6jaasheXw3TB5M3AIHxQiSC75usKSM+cOq2gFWcCy2jR087VJUp7J1dgUha
	 qjGW5v3EWK8vIE502r3UJlZl/RvajFNFRjQsXgC0vCkWBI5cx5qEgzB2KSaPi2wzE1
	 qmfnZo80EhVt+Z1AS9hrdTPaJRkAq+ljDSP5to2O+tBvooy7gd2EeKHtx35I1YE/Sx
	 O6rXccHSBQ8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9717CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035567368.1318.14872130237985018066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaccf52b8e862527c328b26b26be92a2251f84611a09a5e69640d73d7b57f35a
Date: Mon, 01 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780355673
