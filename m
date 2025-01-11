Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442D6183098
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736624154; cv=none; b=RhBHATt211eKS1/4oXqsuV46lAwn0kIP+Pqx31tfARU7WAPXPvcyYCJvuQfUPmbtIM350fLCcNVpepRI+xUHvDgfytoY+m7x2K+rnAzwSqow2Ku+nlkMWmd1/iqTMljUt75l6te52dPe0KTftLvWxr6KlXaGUSpp3wHktqc7xmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736624154; c=relaxed/simple;
	bh=53aoBAU5YgTfosP0Pp5bn5rYb6GQ1vfUzwfUnDYij/8=;
	h=To:Subject:From:Message-Id:Date; b=io1Bp/V56WF9x2pioC8u7t3a/bWA8bdbDOJzQqAlZ+jJFNSRJGKEz3KBIobkeW43kJh3o9sRjss35hw1VI8T2YbaBdBskaOhHuWNn+BuZL3aCaWI35U8OzD4sKMj2l3YzEBBq7PNYWqUKF04+P4iO8AYrQNW5nIZo+U0T/fzct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjZnG0NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjZnG0NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5BFC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736624153;
	bh=53aoBAU5YgTfosP0Pp5bn5rYb6GQ1vfUzwfUnDYij/8=;
	h=To:Subject:From:Date:From;
	b=XjZnG0NCxoao36L/I9d9wttdNJ4MqunpBVtBHn1qvhNtTC6qk49LYBXRhxyShrJof
	 0+RCLM0iPldJ7DvgUnoz5CYKPaoJPozNNHCPZgkboc1UiZ3mDjyjBOoa9vM6cQD5Bo
	 T3VVb1MHGVV9PpMf/6ztIemikrxx3Y/umAAhUB3HKxVovM7pXLo1C4OjwF3gMbBdwd
	 S0IdmcOdA4FHPPPiHwzooWXuedZ9JFbV5mArnpjXug6wpG/lMHfbtSJ55aNG+UGcFZ
	 Zt7Rvjh3fWEx5slNyqpkdg0hfqFmdDIx3qpp9mYBfjmv5vxg5esndutu6RrIc7gsTT
	 EuSOkc+pmiACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F12E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662415358.24432.17705209075288334141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fafdde1f2a9913fd37fedc279ac077bfff5b4a6d790f9785d6e538b9094c632
Date: Sat, 11 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736624153
