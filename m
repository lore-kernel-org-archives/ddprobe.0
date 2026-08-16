Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507EA18BC3B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786846234; cv=none; b=WBxfmDmyVpzzqu1eatKNhxOxn0hdot8OVX2u4M3xegY4cGAZBLy8xcXwSHKrbvjwW6l/TMquu1LCUVn/jZmWDemBr42WEjzwVqKtUKS5PMfN5D6w6FofFZN9NtF6FQBFOu7q05vv1AvJ+KU8b+QnSGVevYJ/lnjlinvPY2SX57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786846234; c=relaxed/simple;
	bh=l4GzaTPvlVHtveczQwSLAvGKyDcXYNrJ6d0r/uzFUhc=;
	h=To:Subject:From:Message-Id:Date; b=ERJr4gvR1LUClglOQa+sY1k/8wwj+LQ6AVXUyYvIul3eqQcjDDei8PIbNhMhJPVxEqFiI5xD9ezimwv4kYXtG0JmBEvqB9qYBqmzWCahKpbiisJipkuQVTM2oqTwfIgZV91PQoPNTn+BR5CXWm7zSTLAf2KpRYo0RC6+8QXs+Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hu/5QBE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hu/5QBE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D853CC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786846233;
	bh=l4GzaTPvlVHtveczQwSLAvGKyDcXYNrJ6d0r/uzFUhc=;
	h=To:Subject:From:Date:From;
	b=Hu/5QBE5xW4Hj73gaB/Gcwknuw37cVsX311wxqRzwsAxKXzWZaT08hpwvKLIbZWp3
	 0HjFllgvc2dksilJzaOoHsg8OgPYxW6AjgRoWdczcGc5yfNX5g8bubGNttqSqGjGM/
	 9kQQRUBODK02nxZ2t4/Kj/i7OJIKaFRUY2tiTliAHBCjyq3gOpswHpDd3mBbcZCcj8
	 qejGgtvAedHfJpjhbx5G1Zg4JbhxfpOBxaHbfBFrGvQKd5yyqQNrpm48ry9hzlXilT
	 PUks5BgEhr3o8vSsdqTDswTvNApkwj6AX2HKWbLzmQrGmYKxK6pWLUt1ipUhpTkYtC
	 uLzeOu+tVaEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A8C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684623368.22840.1038479150641266187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21478b840b2e3642d366edbe463e45d43a4ffd341cf3dddaede3190a096359e9
Date: Sun, 16 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786846233
