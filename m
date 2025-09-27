Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DA722129F
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758991194; cv=none; b=cnNq3rK0wu/B3yAAxp93UpJj7m9vCOViLSH1ZvysEJSZooBc9mNKFZrTw28Pr3LEPzQoJethyXVhTHh7MYxKhGm9gyv7MIIyJZcmfID213j/YxD0zbTWHNCLi6DaDKVa1hzJDvquySyK03ylet6YDr3UV11HDbcdeXhY8e2DCiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758991194; c=relaxed/simple;
	bh=HrSDgGZIqXwZLDajp2rTzZuP8V3K/zhneP4OJzESl8E=;
	h=To:Subject:From:Message-Id:Date; b=lKlfj5l+HmilmpvEICPFBlMPgEXshFWxNPb8tLr0mOsHSzO0e9qkoKy5GXcIrNlmdq1JJvP3+n1wLADNVKklTwpIwla3HANitCg3o76Ce7WO45Rz7ROy3HRs5MT9fZKoqWMyY5jmnaASN5kZ+hdyaZyLEDVaxPTlTBbquqif9BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE6Z2nc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE6Z2nc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3930C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758991193;
	bh=HrSDgGZIqXwZLDajp2rTzZuP8V3K/zhneP4OJzESl8E=;
	h=To:Subject:From:Date:From;
	b=aE6Z2nc7dSOBlBbQ0RlBQem0P4qQFH+r/kVpSeYElOrWztgnDDsb2rdoVlkEXuvrD
	 HgSCHVaKMZ4YRTaUQaVWXhsHpa0FxIgMoj+xMjUnKEbL+utDA9qlpRXbouh6c2nJRn
	 1EibBGse0phafNFUgW4QFPEK5MvZAbi8xvlzcYI1cmWrSQaab/tya5LkOnWe3PHsZZ
	 h+tIFw6gQ7TZOZlJLVwy//zSlcpZ/ru7hIlwNVdXNowVowR/Oulv6+S14T6NtSx739
	 yArTJYiRi9xMcFF4l9kURjxNhxPHfGhR75YwXoCn/dnqQVStDwywA8q3rG8+Nd1MHq
	 Wk/bHjnrs3oMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4DCCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899119361.10778.17100435337022766348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e6b683d5b01537b0118851e4de0286496da28fba7a127ab1b64e462b9b064f
Date: Sat, 27 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758991193
