Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494C218622
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726794954; cv=none; b=haO9kLNYIiizyedV5I5BTvCawIEZN8kb3EquTXjyV2U3fLuDiURxPsMgQuBjmW4dcSioRF3euNPmvpGsBZUbjF1nvzOjrmiwqXoC3akvlNLg6JXqdzQzSPNzYppMHa70l8vPiBNh3Mvl9K5nqH7p06MjlMpWmYbh6054SXGcg3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726794954; c=relaxed/simple;
	bh=/SLlTnzfVr9DcS8d/xOB0+nmYXOHIna9PAfM05ViOls=;
	h=To:Subject:From:Message-Id:Date; b=V+Z2EvTVs0rF73SB9CbxGzfwTCoqdIy3u1wGi/xwWQvVDhM1N1SMj4vsyAcVS7qjYATQhexJ+JXGdIjzpYu7l09+6go4ltE44tZ6IAMGEYdrW2Y79GsQpx9coenVQqynv9ySzULz+rp7xUXLd1JWZXQ1GScEdlOEJQE7XYN3hpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYo8a/MT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYo8a/MT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31EAC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726794953;
	bh=/SLlTnzfVr9DcS8d/xOB0+nmYXOHIna9PAfM05ViOls=;
	h=To:Subject:From:Date:From;
	b=QYo8a/MTIqM4hE506t9Afyfdvnj5ptdjN6JysoV6VdAPjgUlTDTENYP+iDYuyNNAR
	 tvgs7TcK0Vq5AErHAVlPkb8Pp15uhX4rG8VjDkqp0PTqcS9kU84noCHGgb3rbH2GmV
	 /5WehsmK/MdImaZV7XdV2x6w7ltNBuFJsKG8/5lH8/97WoK8Mf15ehNT3tYN3Sro6t
	 /spz3JkEuwZgE4JrPcSS70Q708yvuC1Z+N1bJNqSYI7uLefXfnGbFZk5/l1kSuHcvb
	 QMOVmoBQG6Ot2TpJJ8WzOqSUMoEvxo1Aj+sqG4ZnsQN17qtUMpyvgGg4xM8xwcGhSu
	 6as49MIqeVmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99108CF397B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679495361.5349.18055368791773223141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a292830a1a281a4db66f8c6265b863b66304a5a9801f7982d2c6fc6cfc631e2
Date: Fri, 20 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726794953
