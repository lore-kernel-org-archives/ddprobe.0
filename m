Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3349011CBA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771943094; cv=none; b=eYyEWNgFLAoFKzzaKL3gEDD2JVUqo0JEuWFewBT1lTfPuFaW14qaKBb/JX9NASCeOICuqrO7GHGkV4VB0gOqlc6mjcZ3RALQEMdSBHR148tz+KAHFYF7yfsOj+dUL4S9Zv3s7Ucme9YYKCBu9Y+5sL9X5hw/ucuzKyNRF6ddJ04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771943094; c=relaxed/simple;
	bh=BnpO4BGZp8xwCwHgb8yn9YIcIKnBN0bGZKMrqzcsAVc=;
	h=To:Subject:From:Message-Id:Date; b=ZdoqNfNUo1iIg2sioWNvZSmtNrsbiwh0dMVTmrhbvD3NCBvQoUnn6uAt9KN94TtgNRf4pXq6e1iOSJJC2f9q1ofSXXbF1BqZyYr70SHWcILF3waH+DxTocsWq+wryLwnp3268YhJX2g9WjTZd+BfD2rQIpzZllPNDbBPtEJ6dPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntQGmmMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntQGmmMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FBBC19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771943093;
	bh=BnpO4BGZp8xwCwHgb8yn9YIcIKnBN0bGZKMrqzcsAVc=;
	h=To:Subject:From:Date:From;
	b=ntQGmmMfeojvz1Z0SsOg4+rPIJIZlbpoNT6DB/uXCQNUoLMLJky2jOfDBZRJb8viJ
	 ZK9im2lHvw+4HBbH5hHe3FYYdgwqnzGOiAKQ3CL1ANKpVDXIAhzk1DgN9aw+lEgHs5
	 nbMsZQsF3wdWdskymprt+XwrFqFUx0CGc7Dw1lxNACAgiBPkzRTZwLZkpC+B7d6Xi0
	 Lz9DZH98/EZMt313h8pYvKgvRsfl0re4C00KZh+/OuBHoQVm8Gjfk2i/XYGMdnqJJO
	 0TtOcryTMzhkgp8hf1N3rBFBfL8ZWl7I0esRMZ2APvlQarQ7d2uW2ShzrhrsHJmCzH
	 9veixfqKClxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B24FE9B26C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194309362.28620.14138370689420268542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f34a752dbe174f50748a229c4966393b99aa18bd36ce101cbbdc72fbb4236be
Date: Tue, 24 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771943093
