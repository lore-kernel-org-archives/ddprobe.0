Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109E54734F8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784826635; cv=none; b=jOZw2KYkRnsjTdQX3JcSEJeTazyxP5I6EZ7OH+pkKGdOMBfTNUTnnMlZMoKbFcvavHmSnljvQOdWmyleH8fC/CD9tLeXkdgUvt0KLBWSR3cpzNyl47eorHg6qPl9+k4S9sIDJo4iqaKMxE9yuEevn3eLZRExrBzPlDvXnHCDzuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784826635; c=relaxed/simple;
	bh=YmVAn6Hd1F5g0kPp125Y5zrCxgmy0qJlG3luJ1lvIgk=;
	h=To:Subject:From:Message-Id:Date; b=ZKvIUm2zMSN3w2geGrJtWGxTvlKHsjLxC7XNlydruJpnuv285lKV8YiMLqpQsNK3hnoKfnGHLi8Y7674tH9+60uBEVBeOuHxjE5aWwwrCN/mCNAci9cteHCHUO8FpKTf84bKsPv/luLqFITLZj4u09ZB6BsaQHhK0roGrJWDQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaU8X/f8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaU8X/f8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D045AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784826633;
	bh=YmVAn6Hd1F5g0kPp125Y5zrCxgmy0qJlG3luJ1lvIgk=;
	h=To:Subject:From:Date:From;
	b=RaU8X/f8yj5+mj5dOv2VkCtO16W/705wqmEIBXhq8BlwdwU/0DaRzi/dsCGmCGEGW
	 dVP0EEyfhKBS0AMeM8evFbpb8hYTF2kRPPxWXMnK6WYuSBgtD7a7YonLgl4FEK1HXp
	 ij3mHEx/q3c4wwHAMBfPKHhRVag/H5tlxh0132G9bpVqyiCmbsA4LkaBk8RSQkK6S8
	 AZypfYubfW72iPKEUxmjjNsrQmZAEvuzlrrH7bJApoyIexErTpkNK0znXq91/CuS2Q
	 3/ZYU4ZbR/iuwQ9A0KYbAZbDvhz5GOXw0tOlFuxnMQcSVwQrhXzsUIhp4UqM7QnRb6
	 puHj2jMfm7+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE671C531F8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482663368.4374.17065559081111991801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9781a9dc6f841212817c16864ef3d8671cd8b40d300e135d057d74b1a5b99d6e
Date: Thu, 23 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784826633
