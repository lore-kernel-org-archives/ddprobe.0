Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D5F4C81
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749332995; cv=none; b=CwKj8sJHFr9so8mOGTqKQYT4pY/hdtDnpfRZKerpkQmkKgtTcLPQIHutQQ5C98kXWXg4HW6FSQC1SIipYRqgBUMFZeG0YDCh9U28GZAHcFKvW2phs7A114w0oxm7t4q7QkIZPol0CjMEVk6eTdWH3VTxHBelh6c3rHNqoam7two=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749332995; c=relaxed/simple;
	bh=AUbIbxjMHxfroa3apcYd67oHSfkWMysHvvuKhh1bYfM=;
	h=To:Subject:From:Message-Id:Date; b=huMUFNVQtavou8GwqLO916iAcqDELjkwH96kM8ytOXpMHPwixUnpr2YHDp1rIQv972VD1KGbRLXzBMVkdQGpc79HQGAWS5Hn65BExsvz87+Xrlw/XU5pCxB5qWOFt6DJZKrahb+Hr0gxuMJnENmyZixx9itO2ruTS4D880soBOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGhLNmeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGhLNmeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C81C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749332993;
	bh=AUbIbxjMHxfroa3apcYd67oHSfkWMysHvvuKhh1bYfM=;
	h=To:Subject:From:Date:From;
	b=NGhLNmeCLHS4Jay22fP/d7+SDid4JteRUJiGnkr3g/xat5apm1nZk+vefB20mNcvf
	 Ke2KIQWqr3XOQJv9u8cRXbK1w/LGkgpxNi0DyNiW9XKExWEkb7xscbDD392s0ERmVn
	 B43w71yx4tJzH0ALAiu4X9clfOtN5hx5n6kEBygMkB6NEZIstDlSRDkbCI0hSa9CAO
	 z7nVtcsPfk0FY19aacZbxqESl9UMNnbKfiTO1YP8cO0t/H560ALxhRbzzKwFGSsZBu
	 nhp02pxd/vD+IRF5KHJqEkunCeD/6ep+qs6Td2qnKiZc4rsfI5Nu1gyBx7/qp4M8fE
	 9aTMD+4SZ179w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A0C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933299357.15413.14564498296382809544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9b1add75a0c5addd18dd53363d9b4e63e5df30ed85021152a57a7c7ae54901
Date: Sat, 07 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749332993
