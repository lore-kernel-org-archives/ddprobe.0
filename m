Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383E3283CAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239694; cv=none; b=H6oFzflL25xcu5L1xVNMhRoFuXnvZBETk++9tAY0Jo/SgAlNIq4GZ1trvsEBCDh5UlmF7xKHx4hdJGsQP8SompF6N7Et/1F6fjZ4ahrkCIw7U3nI4gj3Z227ATX8iKlRfNm+y10UgcAxweLSogwXeAwLlHeQqKTFaT8c+BpTH+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239694; c=relaxed/simple;
	bh=Kn3assCky/qaSdKKT2jmx7vt+dYs9Ap1oxuBAQxYjws=;
	h=To:Subject:From:Message-Id:Date; b=UOSA2sfk5ux7mUfzNIyLrECH0Yz0M8XAbsrLvNNBOjNlpptkaE+KWduUGKArhWjdG+0humkmhcumOQJ1jQbTTZXONTM9Rd9rJ2dNGWvjhbYL5PLJG531DJuYshyfowG5/17X2Sc+Win7kBbCJ4Wh7L3bFQXCL041JmnR4Oqiu/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knuCAJ1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knuCAJ1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11B8C19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773239693;
	bh=Kn3assCky/qaSdKKT2jmx7vt+dYs9Ap1oxuBAQxYjws=;
	h=To:Subject:From:Date:From;
	b=knuCAJ1ohiImTUnoBCuQwH90w1GNConiK2gbtLCPY2Ynlx5aOZFoNNuHejE6H3hk2
	 xE95JJ3ayhXR78TDl96Kst3B2ENDINXvN3zPPS6AsDbhg4L8dW8VYxqfFy1YRDLk1m
	 L6ILyQWiElqGxZxh5qYldz7T49PeP4Q7RMzgd1y5VpY50eXicNNeRVuQDFEYW007zF
	 Bf2KCXxlfhtofR9tUofd0DifZGXB/NwaFGqbFSttBr8qrQJiH7aQ8gOwfYgMJ+FvnI
	 71EGDaRKEoPHvs5gJ8PPIgxZOnLgxl/HzXhagyIt3QKJcm3GCTIfZitKKNzIN5/Rz0
	 yipNJ5EML27VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39DFD0651
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323969364.20371.7697747105051045322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5910a2dbd26c536fc8386d8e1f11c5ace9c0150a8f0955bf4c1e937c2d0e4a0
Date: Wed, 11 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773239693
