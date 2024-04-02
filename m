Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C6C159916
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712076497; cv=none; b=LkM4KQeB8aL+53YwchLZTFGImFsy2pIRAlN8B/oWi8gZVljSsfvLKnp/vz82fRCOlPn0lJFfEEl3JNNxkFBvQZB4JSTZIKV49bO38LJYf4A1I+dLX7YIuekm3IgaD+nBG1RXk3P9xWrgSbNp3JgEqeSmgB5DRIsLpGyO7jsAlYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712076497; c=relaxed/simple;
	bh=l/8K0++5aos1kAzpvuO6L5qvN4iBlekzJHKwVW3EaIo=;
	h=To:Subject:From:Message-Id:Date; b=mr9O590sVFqTFlyRvWPcwKCMYg/ch7sw8c4KAiwwEh6PZc3DLft0lGtQdEA0JxyhiNXC7V1tTUsDpKyxLpL4dpxHN8LIGynGjwzC6d7xoSoU/retlk6j0bGSUduf2vkIAkP043io7VjWoVom3UOQ6GaF4uAqLN0oMw5uX7tJsqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBINTHZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBINTHZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77121C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712076496;
	bh=l/8K0++5aos1kAzpvuO6L5qvN4iBlekzJHKwVW3EaIo=;
	h=To:Subject:From:Date:From;
	b=XBINTHZ2TE/5hIPaT0tCSBShtkdJI7kn/xsXhSSiOF8l70RpmvwKwU3xIRLHfQWgu
	 r+WGAngjpCtmkvkAlgsIWwCg9Oiwc7x3P2M14tQjQLMBsXLOJtUmZu/6taGmvz2HkO
	 T/mXZAfvgnTHg/X0NJl1DdYFK1+x5KVA+7Y7RhhTRzl97Ry8g6tp1qZ7gPqcrtP6uG
	 TaTx0HBD9XCAwNfZLPB4IP2lMpCi16R05DPY/Tq+LAvYKgR88FJ+11/ypmvafmBdsB
	 T2y3AB8jXNvtYTPe2FtXdgzdBpqGiVlrPlwBPpmsqPJIDjKcTAUcwCmqdACInuNNpJ
	 6Dp26mydHmCEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671A2CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171207649641.4667.5326539795077665776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a8325b8664d0eeed8686dcad3b22fab02ba0f3f74f49ca5f2ee66257231054
Date: Tue, 02 Apr 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712076496
