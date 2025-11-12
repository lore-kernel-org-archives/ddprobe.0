Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ED928AAEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762912193; cv=none; b=hT0NCcg4gOi9XeLMBG8JYWPf7p0o6Urv6B1WKup2wIPJT9KZu0GfmvzE4RWLb2dID/S8nrmt4qlGoD7mSrd2/n0g9pdVK4MbJFHKSw2zVxW08RFUBJlfr8HLPdb5dK0RYJtjmQigvg+f8EB0mtyhojHbeAXTqe6gfRuWqdoE8nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762912193; c=relaxed/simple;
	bh=MOSDrBS57Ha19+t3aQrubnHj738Kv38MQMfIb81yDMI=;
	h=To:Subject:From:Message-Id:Date; b=o4cKrbV191uA+Vf2gwIQsiU1vIp5ECITk4/tf8UXawMwXUwyNDoKHqELTTakTi3zcpDPzu1s+qIhyXIbqqRDNs6egXnE2G7YkeltE//Pg7kPfKLxbWaZ73mCEBoR+oQOOoydTFRI67dSghYQlnBP/uF2bQSiyQDrCFbNEl2MIsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzAnU/fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzAnU/fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762912193;
	bh=MOSDrBS57Ha19+t3aQrubnHj738Kv38MQMfIb81yDMI=;
	h=To:Subject:From:Date:From;
	b=JzAnU/fQxi9DgZD7/9KyqVfkaTbZjDuXmmJswKTfxEcn9LgXz7y9pyiwmI/a9kHxN
	 fBKTG0IMpN8jtGj9waCyxf49EpHjqXhkYy3ZqRfX4gZK344uHp6+s4XG7zGozhC7YL
	 dkenXDAWvKlnk/Xx/Nivyn8yspfWFr8DFFjQVU1bZ1dNTDSwf3wngKE9HThcfNQRdk
	 coNsOzqOf0iW56qpIcZ7DgVWde2+OWftnXOIHJcX3VDE+0pfTRF/+Go+hB+4NXa3RE
	 yxq2Zj14tmby+R1pSc+wVBDd4Q0TvTYQqbZEZwoETjxklqUkIumjnNBnyLKPhVxL9+
	 ubdH369KXrhgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD9CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291219358.17119.1463444375307600595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d39f76f3bab785ae6a92afd24e199fc093529ade3ca0ddaef9bec149ae7302
Date: Wed, 12 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762912193
