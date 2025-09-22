Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6CD2AEE4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758516594; cv=none; b=jSXbPBgXEKiAQM0oBaa8AZp/FeodRxoXm2E9b7oGQbMfCsglTlu8RTu31rOEwvMVw8jLQhfZYl1eUiDL8c8s5NAZ4m+4UmD1r663XexYbi+UIjtgfpZouKaGwi7peoj/JP3dOU1uK1IFNvlbGmF0BHuAv9RgGj/I9sQaqij+9vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758516594; c=relaxed/simple;
	bh=V6g2lLNNPgFak6nfTCmhtAjArp6f/1AegeRxFQ9oMYc=;
	h=To:Subject:From:Message-Id:Date; b=hxjdDKA/ElxEElWtfCK9jakOaLRHo7Ofk0dcWAwLPQrhL+HR/8IcPgta6LQlf15r+k9L0WusIPpMBr8WNlXmb3BtuvvQsxaf+Ca+nnpgibGzANAsC8fZlFHTdiTvwblW4qwiLe0JCF3zIqg5i7/BPMuw1dSMxkctZMM8HqvHv8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJaDrcWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJaDrcWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41EDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758516593;
	bh=V6g2lLNNPgFak6nfTCmhtAjArp6f/1AegeRxFQ9oMYc=;
	h=To:Subject:From:Date:From;
	b=DJaDrcWWY3heW+DmNRxOe8DpmzrQss9kuXcJhB40kuK3aRR9cxFy/IA3TKjDJetGk
	 x1zz6oFOCZYzIaVtWn5NJs02OaovLgEBI2lpzig1IT1xACebXa7+1ggfFyQvzt1Fga
	 B/JG9xtxDudmQTjoCxdncYtZiK5bjjcQdAY8TaiYBSMu8M9LLfHmwnFiGPIQ0Sf8do
	 x1N9Uo0zv0H3VH1PE/qj/+DCrXxk1SdP3HXJY4+OIW0MhLMfxbzVl9GgNqmzJvjFcm
	 2P1phHhU2y2s+L3urHfTxwYUOawUDBoVgtnJGhsK2knGVXLaBTQAPhLbaNZ0ci0Byu
	 XK1Yt+Nco7cVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249ECAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851659357.1646.7368900641091301808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620e47c0c75a2a322e1c9b3f4ccda3b3f9c07e6905d242f91a06638c6928429
Date: Mon, 22 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758516593
