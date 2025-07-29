Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E60423DE
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753810794; cv=none; b=bWVywj2eIerUQUmUMyxqWZMfyzUzN4SA/c4uiqKcu8xyFR+2DAmmpv4E8OsJnUoFTEAj8X+oOGNth29Jza5MNNCzg3pA5HxgN+1y9Orxqn8E7BbrLV3Qf3kAujFa5nomo85XSAenqPIg5B7+PFctwuUNaPUqE/fMU8OoKWv7v/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753810794; c=relaxed/simple;
	bh=xLpSychCOxxkFDvGbdnwnJe1a1IP2LkM+Zj3WY/HaQw=;
	h=To:Subject:From:Message-Id:Date; b=IDZXiyFU7Q/jqNl//a2LZKR9jmuLrADez5BBMpt0bJe0NjDEDWBbqfoVeoVSjO4vwNYrj8Th/WaVQWscClyKgjnebaTnRGEIyVxezkVil1MxioMkvwlilx6g0NKn2eRX+dyMY4iGMpkiKGvNTwEbjTGtCXzvtcCaRJzaZYDSVyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE7P1jzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE7P1jzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3899C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753810793;
	bh=xLpSychCOxxkFDvGbdnwnJe1a1IP2LkM+Zj3WY/HaQw=;
	h=To:Subject:From:Date:From;
	b=PE7P1jzkkDJoQax6buKUdM/683x4gHT+EgD1uEOMLpLgYEl5P83xmmOG1ff3RflRc
	 CTWE7T+z1g5OKqxtOHQJ9quUx12LeXYEDtqobt8qIJyjynxXz7Je7SvTOlvTw9SlmS
	 uaIecMosSMwb0tbcoRzA9zD1bj7XN1OQk1uSkRL9hzREhs0QjfhXxVFzG7H2Irfcf0
	 1xG1iTiUk7gk3ZQrANJN4p3GUl6Pcum8KhP9dU8Mg+XGC1AkzmMG7Yr7atmsrspwFl
	 NGHnZCChsiBPGUdymgiPZQppwpL8lZI4QFyFYExyEqaNJm4HIztGtQ2VTXkVKvyKh6
	 vZtOurSLHy8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF75C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381079358.28001.2645481949657569502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac37d0fb35c8b2f0d73f46ed5dfbe6df2b2e5851113719f613fb5cfa0ce2064
Date: Tue, 29 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753810793
