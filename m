Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83ED4A06
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728607553; cv=none; b=Z6zHJx7g5o5vhSkpRV4PykDrVYevwZzNRUqNTQDrL6UWhgcLt4rPW6hWZMX4bKn9/RBIDDBf6JGUxas8U5+oTqjVOEZZklSzPhmX30W15SUxZn+nEQ3hr+Gdmh310OnA2oAHzR0oABTysxck/qi2LoWE+iX5dHTFiR0e8JpZ5Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728607553; c=relaxed/simple;
	bh=pypA7KRA6EEKPmsRV2iMLCasxEwI445UUT5JKzMojsQ=;
	h=To:Subject:From:Message-Id:Date; b=KQ6I9z5h+BLf9cpe+R7WMdL9obOkVNd9++BSCqcmHJtYkk8lhMBRobmUMlEtQfOl/Od+dHSa9/wp9yQ7onuaYq6ZDZDoL4SvR+M9gUA8mYzdJYjfDt67CGEgs30v18NP4dgiUyYIMogwoo6FzkUmSawzI7eAeWt+ppt5we2ARK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXmogXaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXmogXaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE27C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728607553;
	bh=pypA7KRA6EEKPmsRV2iMLCasxEwI445UUT5JKzMojsQ=;
	h=To:Subject:From:Date:From;
	b=uXmogXaXbuKauy8PNbkd/2PB8tIeQ9A58t2Zs0Scg+QP+82tWXfsp/1ucMdAU7kd7
	 LVJLSR+Q9TsxUFcZsgumMQiWjowLxFP5Ubg57LJSAGL1e2nxtf5I/5s5OZ03/eUodx
	 /gbss2uGdMncKlgslI3PI/FuOZG96cRhoYHNIZG/TbB7Ru00gKl322GMv2Ze+npRcC
	 J4tozgJQlQoEMw+N88E/abVdh5XDsZUrfQivoWwuGkJskRf7WyfR5YQGD4cY6CfmbR
	 myRJ0y80MNwBlTRQTaE/RNGlc+Prag0KEekfNaI7QRjLv11fuc2OhZxsH8hv0UmBuu
	 D3CLGieuOqrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6FD2444F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860755358.4885.14695354774454831990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9724b3349d102d79e9d298974a2f0d013f3a684204735eee5f4bfbfc16222fd4
Date: Fri, 11 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728607553
