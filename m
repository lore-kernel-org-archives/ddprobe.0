Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19F20E01F
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070194; cv=none; b=Mi1NjPOnFEhX07Sy5hdWC6wkfJifGglzhmLN11I0EsBzuLxgcJ4KGyw2zqGG61bZfP79MAhsHLVOjkcz7nbAbxuCyVJv3i9KQTjMfCxtzE9iS8T3eCbWGqF+wO6axhFZpZrlJ+MbW9TP9Joc1jr9smQOu7Pa3gXLWZBQCSJcFPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070194; c=relaxed/simple;
	bh=zjaaIywJIfihEnBccw1htTn9mfe+/NWF5rOpxomd5HE=;
	h=To:Subject:From:Message-Id:Date; b=QU+KX4YRKPVfMrbbe80DqGymxcWZBM8Dbm3Xf6YTf1YFj7vTnxy6+XnGdX5ipp+w3aeLghc9c9jOEnQH/Y9FtvD8wdOF0dvpgxhFb5RAqGgQ1UNOPxJ3NqOHA08v8+XaAufLOJ4mELGlPC3iGp+ohyB0ZPicZSqz9WLS9RBfPpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrtvdaot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrtvdaot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7C3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743070193;
	bh=zjaaIywJIfihEnBccw1htTn9mfe+/NWF5rOpxomd5HE=;
	h=To:Subject:From:Date:From;
	b=JrtvdaotzMOi9ZGWPEc3o/k6Yqye7wE+SbZWBCp/uR5StePiyPqi1iVnsdPikGbYg
	 QEBIT6O9ippBsHSILw4vcKuVHsCwKVMOkBWfqKZB4kIt7Gt4XB0aXTSYeRNtR5ud43
	 bkJEgAIMB8D0F2XpmypHfx3+YOgfTWozYXKtvRgJko7eLwYHbAbW0pRidbecYSwzII
	 Y9NQNvP7HzLQvIzLP8k5bg5dMf9yOHbdodshycE1ORTPAoV83g6NyHZqXDeL4ay/ae
	 lpJYW4t/czheeNHuMj80YQ7NNdTX/qqpniO0hZ80L/371BkIGEltHFrSoQVPXGZQEc
	 zUevpBjNzuVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32FCC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307019365.28412.17285825410374715646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565cf43c4be94d1129a03ab67b8cdc6a9ae2718502fe85d1e51910a411bc68a8
Date: Thu, 27 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743070193
