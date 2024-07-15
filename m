Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABFB25779
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721024003; cv=none; b=LO/CIcxUmSm9kVxuRezFjJeUxD9OdLHYDlNPhAzmUQdET9RRkAUYWP1GEIZRgrXneafNlHXWrs2ETtr6qWNrnv8Jh0ymGilBrWKyK3bXdz+T7PSFWpnxQeehg0bQVLfF4AhoYmwMw6c9P2a39COZeDA5IC+tb5iUCYFWi/KFpdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721024003; c=relaxed/simple;
	bh=95IjEBoTHHxEYG8FhA4fu8uuRPvpQ+B8rQBJsZPCfzo=;
	h=To:Subject:From:Message-Id:Date; b=Yu1MRBnpkMMqd2kQYNN33Hop0tcJVWtnK8a9yiSoHFylfzaoEwxes5MOxSqNp/RdZ36foyVcFJTsvZoIRJnKpGB3WlPzRe9MCir4LTi10xG07uTvWCky+V+ATMOQ+5LuZRWtExI8OBB9FQ4QlD7cNS2fF5XBWemWs+D3trxIS9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J81G7Wh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J81G7Wh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4EDC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721024003;
	bh=95IjEBoTHHxEYG8FhA4fu8uuRPvpQ+B8rQBJsZPCfzo=;
	h=To:Subject:From:Date:From;
	b=J81G7Wh/VnwKxcsfEJRkHDXee7yAgZ7pNaN7yTjVuIhJW+NSS83EheiKauEZKlYMh
	 4XWF3jHFCcSjEI+Jrmti+B48Kt/ttY/GAJm9+e8+KDgYc3IlmISFndvp5ro+MtGttC
	 vyhE1vxQSaSrfNYY27LV8upq7hrE5ajeZzXDRTY+gayVR/dG828jfXRzhoYwDNfmNp
	 bH8lo4392FBNb4e0OL7IEhecFoud4iK3EGm7vGaqs0ypeOMPqzl5TzRilvVE0OxM+m
	 e1yIV27Unm4e7jdyoxq3GFKmH0IIKHynF34YV3V3iQE10danfGFzuHr8XbqI3cR4LI
	 uAEdzzd4FFf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB149C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 06:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172102400281.12096.8001494741929273841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c82482448bd05d5798a45ef94af574e38d271bc2de5d71504c4a37945cf7c4c
Date: Mon, 15 Jul 2024 06:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721024002
