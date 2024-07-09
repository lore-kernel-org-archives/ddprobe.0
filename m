Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F491EB44
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720522583; cv=none; b=dSK0Lvf7AXUxULzXxhuLsd0FpPj2m2QNkG5C8uljsovoVjt1YW39tqQpe0OWcz5ofywXEvwSkXNT1H1gTZfwqFs9qhFzVF1XygJVMUzLlco/fify7mgq653SiZxSAO5VXa9erQ6hBOWoo+Bbp41UIdOA6KQUSDgpsPSr5mY1mIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720522583; c=relaxed/simple;
	bh=vyeUb4CU0PnJdzcNX2fe6atSEJfdBs/7eOmzHAkOXVY=;
	h=To:Subject:From:Message-Id:Date; b=TFmNSA0KvaepiGvz4T/sUwWZwyp22cvpm4XEtkSPkUuLwS1vLp4pIs04Mon9/0bn/xsQjFIvIvVQuxxVBjYTLZQCGNkYQF9hcCjqooQY3JqLr8WJfd7L4cueIKLVaXj8sBt8oeE0j6cvPcs3eqHU5BPOCu+9lcd4g+bNkLjgcx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HT8ZTsc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HT8ZTsc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D313AC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720522582;
	bh=vyeUb4CU0PnJdzcNX2fe6atSEJfdBs/7eOmzHAkOXVY=;
	h=To:Subject:From:Date:From;
	b=HT8ZTsc4HWJK+q6HEDcTPiv8nqocfj7KWRB54Mtp9+EbJiArzhLH7ewMfovr8+rvi
	 T58kkrrsa5kKvDr1/8z/qDkdNW0pC79/q8CitxzABqO7Yyz1jCdfvuJYb5BUs54xAb
	 /R8vm/nJKOSGrBu4jXJhyxO+LFs3wGkyY4JOF1Zk27m8svCHW5WApDkPlt0SHa482m
	 FjLyVeNtlfM9rJW8QfWwPVZ1bDGRCz80MPIP8/w1sNsFrramgI15Hv+VzmpeRRYalV
	 AOEYnlsNjMu8jM8STrKVce4rhYFDqP5+FsDZMOPtHqp+IppRR+wgq16ZjIpowxc9R1
	 sUwFhDTNuQBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34C1C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052258279.19580.3053399387145375028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e967057ff7cea92e33551e8738dad3d84bcd93679b7329435e9439d05cb151
Date: Tue, 09 Jul 2024 10:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720522582
