Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DBD78F59
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745504994; cv=none; b=mW6dEZ6Li40murqzXocjgR9rNeX23gca4q8iP3OAVDQjB6T959U4z1bugvItCvnZj2UJse5g8CjfVqcPcye87D3bepxVv1blnAMyK31BVw4XLk06kBhVGusbsC+9G3MscK6I2rCgOd059HzNB/oz4ocmkASqW3s9xGsVSxBVhKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745504994; c=relaxed/simple;
	bh=iQBMPoHpSvhxvOLTDixiKqAOlHmcNlO+aq5i7LEFKfk=;
	h=To:Subject:From:Message-Id:Date; b=aYkME4haFlNBYIGFYyJEnzlYci/poVtCgxWGs0+DBC9GP2zTzmO8nP2xkE6hSJGNos/PGuHhOnkdv3xEIVeC10WGjalEPC3fURGRNRDxjXVla1bAUacuSssSgM0uc+yP+ctVlYG5HKu70EtIvQ+mZntdWkd0dVlGAVm8Vj+5vzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHk53re9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHk53re9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3462C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745504993;
	bh=iQBMPoHpSvhxvOLTDixiKqAOlHmcNlO+aq5i7LEFKfk=;
	h=To:Subject:From:Date:From;
	b=ZHk53re9XpvKT/5AmBxnAQYVm5VqRxii+vSx34cUf/zvPQFgfhMknZleYg/ib5eEg
	 jYV77gZOjedHT7HHbv+BJ9j0NZWFkqUSEnIUWA80qP+eTwwjXATB8oxHibL5xpcWSU
	 P0rYUHEqoBbtz7h8VJFzrmK93vl/Bj45Z5qrh6nCdAXxwVxIOmDl3nPhU5kh3TIJls
	 LhwdG0bDWKmsAWTJX289y/KeCgYYkO6WTDj0XvR8I9i5ZEoCnieix+YqzYrtMhwbnY
	 Gz4vbH+jvZBqU2+hSUH3OIK9TDmQlz/TqIYNOjeOnj1Gvq9wDQryRy3SUaO4wGVPgl
	 bJQv+bA7BX+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E1C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550499359.22133.12029465004327428774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082d55721da70744e8982e85953e205f929a08171caac8d21d3cca0301244ba1
Date: Thu, 24 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745504993
