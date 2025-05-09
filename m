Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B76621C19D
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800994; cv=none; b=uWVpAnjaTrd8W9HA4tRbQvn0IEljX+2LT4oxDKWBXfIX5yZgwh+1LnVXZlSnT2jWo5X28WVl2tWQaVcg8KO1XCCdDURfn7TfVZMTXBQnhRGXHjPTWO8n7mOj4h5kqlYycJBDzCx4pj4OaBmsCb+hs9PT7WzcSjgTLlOvM4E7lxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800994; c=relaxed/simple;
	bh=j0HaCnH/KBb/eG/K/3Vv8WKp6Rzj73UK7BsBl+S8/74=;
	h=To:Subject:From:Message-Id:Date; b=ZGtcjTTlm5019fUWcE2i5TehrBNyhJo6PvZvB8yKFhukNnkTqTDFoqI7uk5HkleT3KDl1pemnLs23/6Ihb2NSjBzweqmnNn9fnQ3kmyg6wDtoxx0/PM6otyewMgblq1y4HufONrHBAeghvtTn8xRGf1gVN+xv6JFkVlbqIcKBd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8CtQOUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8CtQOUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB58C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800993;
	bh=j0HaCnH/KBb/eG/K/3Vv8WKp6Rzj73UK7BsBl+S8/74=;
	h=To:Subject:From:Date:From;
	b=O8CtQOUiOpRwr4uQ7grPPYCO8I1knQ3BownTczjlMyzROgqyc5GO/k9KB7rYqrOXh
	 9kPPggg7a/tf+MAM9UWmz4nI5KMgQahe7NDmJaB0sOnvUWbtQ1VnZJqzrFjlYpv6Uv
	 F5tztgYG4cWQjIeE2BjlSbtuRr62+pR5E+oeep4NGZrqGR2MkfqPGG8vZ/VCX1F4qc
	 H9oX8OSzob9O6a0Mq06AZJjfJa2/7M3IJcej+eCwxncurTrSLAEBYrJY/e8SCA9qyD
	 TAvnxBHZzAKxonFHpQDhWUfogLrEw2UcL69Xz6BQ015TeIF7BJJo5KtbyM+Irgnipg
	 7Sg71l5CKqW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E486C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680099357.1649.9608237918469313243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3869f59d6025ab87c029672eab7fed650b61a9d85048e8f3484430fa44f11f8a
Date: Fri, 09 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746800993
