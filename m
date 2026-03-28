Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AE740DFC9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774657494; cv=none; b=nRlLkCAoeiluIgNUqW0evZSlaOcp0UzT7rzgi70P8TLWIcEF290GoEHZyz0ncotYI6IByNjLGmQz3psSFypzmoTcM8vWruUTC6xCOccAZqB7D9OfRiDqHc9FBbtH/TiLvGikRAkMyO473WjwJJW2R73r+JacTLyYlSusVhzZYSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774657494; c=relaxed/simple;
	bh=BLi8+6NzyvLo/Wrvq99ObxFE31XVRunU3OdP7bfIVVQ=;
	h=To:Subject:From:Message-Id:Date; b=MNTOKnjLux927D5cN0uuEZHm7QjLUJ5oEyox0WhSLAZemELlZPkDrUulxNc7VjCu0LQRuMAo7b54awnxjw5QGqh36vaZS+tGwJaiWgwESjvS0Rn1CdUg7kfQD8Xw3cwaRy2Xw/p/NMlYXwG0NwpnA1vQy4FcfiF2nMkvZYh9ulg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pkr/26UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pkr/26UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F99C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774657493;
	bh=BLi8+6NzyvLo/Wrvq99ObxFE31XVRunU3OdP7bfIVVQ=;
	h=To:Subject:From:Date:From;
	b=Pkr/26UN7Kk7LcWb5xCW/FLueNbeih9JlEkGE4rsd8tN0FkRTV+evostneVfF6kiY
	 wu9FSVdHvNufsbbtHp5/WIHsJku2U0m/NPbGn298miIJYzCIwzgh4c6KCobc4Snm2z
	 SFQpJ83Dka9PaODlzyKbzSXWWbibHmXVcZ3TvSlSkShSR2Qa4BjbOb2yWVmVA/Reow
	 8ksY+pth9PvazTTFO6gXRnZ32zUcDt3tYOjuFbzKLKvONphhHWNguASBU03MiK07tH
	 tmsunn4+PGzSzKjvKJtGs2c4jN/6K2aJjfTUSoQGl/olux6b1sjAM3kH5VGYggVWLP
	 VYKHw4tup+cQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C010BA45E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465749358.11277.3159225596998402797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51fd663e4faea2dcbf7d8679e3616bbaf00a25b7d85832b3fa12a779c786df4
Date: Sat, 28 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774657493
