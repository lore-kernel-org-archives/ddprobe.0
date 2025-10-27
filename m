Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CDD198A11
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761543594; cv=none; b=rpVEtZO0fC812SB6zfUPfD4X3UMmbPTBTWjNiQR6GIuKJgvcDV4DP+gKlZf2HYDA0v2VsBuK8pjmcw/+B2fXKToLJt7lOmW2gxQGLP84dNlh90VrDJP+/9mfD5XYzhB4skCB6HF2jgnjspo5rZ9NmR3FOdJsvC0o1oDf2BUUQNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761543594; c=relaxed/simple;
	bh=EFvwGUWn1PcYR5HC6f8TbvG7UJhX/k14+3hIBsjbTgY=;
	h=To:Subject:From:Message-Id:Date; b=bqXhJpX4Z0d6YVY6mqeE11BqfMIbAExsndiqUGoD+61c1tMaU0bJX0PMUp12QDmS4+RJOYyd31FtvynOmMbfrCkJ7oLU8o1nBvcMEYaW+oraAWCRVkyn+a0NJ7ZCrjLhsjUb0xlFbayq6NPv/1WkY7rVIM5gBO9OB7Gz6OZGEnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfu1lr28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfu1lr28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761543593;
	bh=EFvwGUWn1PcYR5HC6f8TbvG7UJhX/k14+3hIBsjbTgY=;
	h=To:Subject:From:Date:From;
	b=Xfu1lr28hE++dfU5W5iT+GZN6Bdfo5PPclmRzEvRG74/6+lnuo7rc7sHb0OFOe5YY
	 aTkrKO68MgruPMinWGo61+WB1EcgBWx7BpEDGT5tuLbPJ0wXFx+3ZjBpJsTmxUOTbD
	 paEiCFFgWqSY53s8TVjZQujUUi6WTnt5FjZu+fe1QkdVmOMTc9RN65PJGS4mLk6xLy
	 Aiobxk7Lc+okm7rMk0Z7X7JuwJIsKSMDnGL/E2PJhADLxKfBYIomWhBV4VeDHfcgq3
	 EMxLINwXK2jBlNfg1/KuWod3UxSlBWiKZVu/bYwnj3KVW1DWjOI7B77Khyyh2pQFCv
	 snWJCESNynBZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95640CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154359360.24806.14860943297072249440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1141c4f857632e1eb3b64a9dd26a881a048bb28d106fe0a3249881e18e09e4
Date: Mon, 27 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761543593
