Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040BB23504B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768401834; cv=none; b=ErcQyqXTYya70g3jQuRGi6zMAS3bDHAFy6qQxVT/019ZzEGuDPM6ViXacXe/rX1VUWsrNBoYab+fq6pruS44wZjy3OVne2GJox3mVzhuKeFtbbkRKcw+aaq28Stq3y6INplERMM+eX3aRe7VMDrtrqe4ToCWii1mSqwT9FSYfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768401834; c=relaxed/simple;
	bh=quVfozh5oqw2hsYhP8zdi1kKGFiWN7+JMyPF8ig2khQ=;
	h=To:Subject:From:Message-Id:Date; b=Vb9Yl8JJ8VsABgrQ/TkMBRhl7w9gI+CtzTMUTm5Jp8zTzWSdjc1wD6hcjBvD8RO5NIfQQthAnGPPttyTvK/8BPhBFLFoO4cJtbA8BOf1C0hMb4+KtPZN6Uy137ICckwHr7Wi62lwaFys/IQuNMmGlpCmonI3E3U6daMdz3qoDug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ7MQEQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ7MQEQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E6BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768401833;
	bh=quVfozh5oqw2hsYhP8zdi1kKGFiWN7+JMyPF8ig2khQ=;
	h=To:Subject:From:Date:From;
	b=FQ7MQEQMQhdO04zGjuik0FAletKlrI8T6+5VM03UPmqgIcgMHdLz+dHHh7U1xlVM/
	 wruY9GsTtcuQzYZ0WRBnYNXbrbycbiF4wCsrQ992zaxOs/o9t4qO/QfjFiIjTJb4Fl
	 p/vAItO9jM7GAHCrKQ7F2ED6n/0mYuvEaWD7Hqy8EntuxFwWG71zIme4RLKQsXN2tg
	 Nf31V9uTzv3WZNhTCkMOdprl94QT+zibvEqhK78lK+PlaQeKtDk7MVfWVzggF+XSh2
	 1ArB0jrCPMvTGgA087FNyIwhyQTlv5miTWA9+XokrYqMnMjoVNEWnKaRdhOH7th45T
	 Rms1wqkWo8V6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71BD37E3A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840183358.27045.15803149003018649360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5385e0694e26e98c8a1ceb2fdd04a338971810fbf2e87bb394d8355d083ea8d
Date: Wed, 14 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768401833
