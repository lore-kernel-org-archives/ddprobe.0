Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76C185949
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728468354; cv=none; b=Eo3Hlh1O+6WIi5PsV0g2UIdqpnBvU3n9W34StKTtGNF8g+gUqXTYOivYNWhmvIhlHFqIKYa902uG/I4JlUwqOj4pcNZA6B76gu1P58gUrSkKlKiN8+CfDC6HA3rYqVm7uqhamrrHHpbV0Wy9kLk0OvxwCvtYvYo7vEd8+LNhV+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728468354; c=relaxed/simple;
	bh=p3Yex3TW+kJe4Ac7ZmyFTJmJy0z0cxv56enRCxgp7/Q=;
	h=To:Subject:From:Message-Id:Date; b=LrvNJJa/Bi1AABkhix0p2Ww6NkLp1euBxHH5pwld+zZg0xQw482yqhXVyovB9S5yuKIzcxTKv2AlKtx0iVgy7ItB4/KL2j7cP2aBoA23IAbvPQbsY3P6Qur13+z8RvfaW8AKl4o/z6IjYoTghIJwVli2qiOpijYvcCHN/UsoCAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbqoAOV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbqoAOV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFEEC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728468353;
	bh=p3Yex3TW+kJe4Ac7ZmyFTJmJy0z0cxv56enRCxgp7/Q=;
	h=To:Subject:From:Date:From;
	b=kbqoAOV0Vzv76xYLf+YEqK5jrS68zNDEFI1yQrjZ/e17a8Fy7WP6tTzFFNDvk7Lpx
	 g8sEYDdY2h6gEtNLvoyTE6hRuQNBSgTqD480ttV1nJmwQ3+ig+T26YLRthiwBaIY+K
	 hBHbfOEjYxSM6U6lk1WrDE8YdAtBHgLOJmqypSnurCeKvStHnp8WIr9poStl/3yNaK
	 C9Tk3+SyAAPm0q5cD/QIZTNifiz48S8hb9ZWXgn/T62BNDJHVpPGKzYy3CgAJuvE7w
	 8y1gn/qLzdnkrwWfmsHZF/8+5/gcmpOgQqYw2FhHhwFgDkNmINU8EN8N1P1kxpcfKg
	 R92/UZkgMzoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC48CF0449
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846835369.17488.11921395785767661738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d53a5c6334bd4931176287e7114e2ec9f69a17f012dd7b7098e4b21d8b5905
Date: Wed, 09 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728468353
