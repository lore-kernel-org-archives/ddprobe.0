Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6353A9DA9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780383274; cv=none; b=nLzHYu1sI8LuP7qBipl8ZVzcmQw40CXvkAoc4X6yiEASbJq/bLUyims4LZFHNWqhT5FlAzHOIdhPOz2BX4T04zvM9vILqHpMyyCoweOmEOdxqkPoRh2A27Sv0G+dpLaWeAaThDCj920Dn36ik48u7BcDOujxqUXLX1nqNb+hye0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780383274; c=relaxed/simple;
	bh=BQTNkDYI7wrcjiHvbryyFWbUEgUSPvsOsBIHlCUnRRk=;
	h=To:Subject:From:Message-Id:Date; b=KvnMnjkoLbuaXgwIBO9L3S4Q8SG687il7X01+H1Pypo7QhNLRzO2ELju7mpBM+6UjOGvkhVTHd4kP+vVd1lk1vXYrWwG5GIyqg628cmu+tbhy1Vi4rGXZ0luzbQ425tRGZjpn35PgVWWtfpaAy0LgqVkzeMBE3xI4qiZFG70l9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT6BdBoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT6BdBoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5496C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780383273;
	bh=BQTNkDYI7wrcjiHvbryyFWbUEgUSPvsOsBIHlCUnRRk=;
	h=To:Subject:From:Date:From;
	b=gT6BdBoTCiGObPzMrdN1n160TuDq/CYzaX9k9ZjhCFXNJtIxUSwEZiIJDavB8PwWo
	 XBwiWy+UXH7alB5DEaZR1nweYGcwFBZ9NjUaBYTM4uXx7jn36LthXBuYcaFymBp4I5
	 H5E66lKZzZEhleHwIehzjLwMfArf5yjh3pKK4LrQW8AdLtLPbALdTtLCaKo57lqx/l
	 G9oMmveKhpvUqMFIoNiRc+bHNf0/4i3XHiANrr8b14rT4EWJWlUWx5Y8IDQ7D8MsOb
	 MAd7yV4+MVzEWT98KtpPxxG9KKLb0mfs75TymLbrDnC5zbTnGtpSC0//16PEdQCiag
	 6ekyKX6AgVJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F88CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038327368.10076.15415806012971568710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9245f9bf8b87530d940166a6d84ef4c85f3bcbd850ece691ca520203ac163560
Date: Tue, 02 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780383273
