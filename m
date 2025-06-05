Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54B25776
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749156594; cv=none; b=ANymqKPSaO4ISDkjyamU8deqROfz7HCSG9lKszcAQx5wONhZ+ukU3ZtdgcTFgzxsgPcb9HYWe3GlF8Nxwd18i1KQDKTGt0dPSuqs+6OGKs2wPa+g445oNs2a4b1eZ+wg10DOuhTUn0eV9zkMCULiokPoKd/kX9FgN9rEm6EtFt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749156594; c=relaxed/simple;
	bh=ua6BBObZ2NoBAAg8OuHqCSxZ1jMA055D2PcpG9JwbeQ=;
	h=To:Subject:From:Message-Id:Date; b=HkYHSrKOQbSM6jYU4A9wuyIFLsaT67WFGL/1SEBZ88opOrDi1pYdp4HkvFEq77MucjBf9ngm3+sbCj46lWE7qe1F30ms/z1E3N0KpMPBW1meTjL921yVTQa9M0iI4ahV44gMe+kcW5Ic5N3zaA1cc2tf+qZxjTzkkgkWuCCuoho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4+tKfDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4+tKfDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B30C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749156593;
	bh=ua6BBObZ2NoBAAg8OuHqCSxZ1jMA055D2PcpG9JwbeQ=;
	h=To:Subject:From:Date:From;
	b=K4+tKfDhfTZOJ//k+PxqznUrkp7fo9poTtHXWoTrEzY5IF0eL+889B4S9ngnOrZ6/
	 qTeOECnophBhAwwelGv0rioZ+kdxUW+bv1oF/nEtfagZaYRB2iQw5VsjHoGJP2F7Oz
	 DfHYIc4wkTMpxJr37U38qOC5IgNB3ucYjgUiyEPkSxPse8pM5QpCzrpJfyNsNFr14q
	 r0aKU+ege3klYMo9qq1efWEg+QOmqSqtu8GqVRnjECJY/ZJ4r/nT+IOOzex9hc4LH1
	 tQ/rTIPJYxoa7jLCoL8i43JSawqd9qMoB7KCzxbC6DzDb1vKVxuz2j15kAse4lBuiL
	 PNtzJtqjiTYrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C02C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915659358.25229.3118174985693674655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab6b207d26ad853f07c5d1c168001941deafe8251b47a68ebaef340fb364a91
Date: Thu, 05 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749156593
