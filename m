Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A33B13D29A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728725754; cv=none; b=eWwpehc+z4DtuA6fz+KV+LGWuxQUHShbdHNRJYsL9ZyDL1nZC7ZuZiImfwgWfsC9GHhA4kVrTHZrA5V+nmXZFm9wbyQLKE6oOFmbK014F/QecjrgYOZoZvpjgABxBuvxdg8LbipWDDZUbmqnIqq/HebdaLZyNSNOlpemHWAWfNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728725754; c=relaxed/simple;
	bh=p8uGG5J5nlhlJ+0PzoYX9z2BYUDf4Vf6U1V0WkLC4Lw=;
	h=To:Subject:From:Message-Id:Date; b=CHBvrAyhkbwy8GRWuWlDLjNS5T8Dn+p/3J19G1sUBl24FlAxOxsEfi0oBCGlxkAsPTrKIAhPjxE8ZfwZQN4WZvUO4VoVGw9Pp3f94fFpSz/HHoRADfNIi8Rs0a2R55pJnomYifCvAyBFOnhkBrm1lvFPZc0yeuOPrr2kd7qQ+/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDRfuT2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDRfuT2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB74AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728725753;
	bh=p8uGG5J5nlhlJ+0PzoYX9z2BYUDf4Vf6U1V0WkLC4Lw=;
	h=To:Subject:From:Date:From;
	b=qDRfuT2dkYZLDy4a5CLgH1HaV2WNatD6dtIOGfe+MTgMVOG1jnWMfuZEDt+qjwUnH
	 gZ9iU7E2Az5tZxYiqvlEvlnTlvtv1ZZ0+z+0mjvgTNimN6HPF0+jxgehqje81MPkz/
	 e0hc9+qZGduDijhyXu73NZKF5i6ayPGZVTbURBTHg8k3lKAV31+g+g+XfMLjjcVcF0
	 D7q0HdgsgJnEB6IsKncYMLjEG/3GzpfVL1uzbEauWqARyfJAF6xvgj5Pe0up3okVFW
	 irYCYcJjm2r/R8L194eYT9e4SIffJ8Gk6Wu6vBfi/q0bH14HBv0JYsy7lGdTQ9pLUP
	 RQ478SmuMw6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95967D1A45D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872575360.20238.13011785325311443457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999bafb9aca116416cb7d060d27ce281e416a73b4f0e25656df9546bd523bde5
Date: Sat, 12 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728725753
