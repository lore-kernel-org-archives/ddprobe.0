Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EA02609CA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746038996; cv=none; b=rD2bKZk0O2LMOH9Bp/6xQVXStSQG2rO8k5tb0NQkcjpsOxDVjCIIMOJW69GeBbQWeyr0NJnk+m/DG01bIhGuNbF1zIBOlpGtNf15uG+QEN30+72gwE0j6UIhvE2L0yKkyn5VrZf65+34YxwhoVy43LwOwu57/lq8QkS/ax9bJnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746038996; c=relaxed/simple;
	bh=gRTSQm5w4gsWT/nV+qpD0RBm6cFXJZv0/3oF9EPYLC8=;
	h=To:Subject:From:Message-Id:Date; b=RPctr7jGkd2mSqYzpq2E799bnaPTFoPky4mp7Tms3wM2UWMpnD2vI+HGC77uy8OsSptI1gnoPXwStp1vKmUl3wSv2vYb6s9LF+WuyxKePJ64Fu9vPXORjZB+fLjhKQ7Kaii8plW3BRklHkpBHCZYyC5InycBmXxMWo/ayZUBDBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol+hDTdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol+hDTdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E09BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746038993;
	bh=gRTSQm5w4gsWT/nV+qpD0RBm6cFXJZv0/3oF9EPYLC8=;
	h=To:Subject:From:Date:From;
	b=Ol+hDTdl8PvDUyyY7ERrQnCxkWNVokhjT45r8mozDLHvZqsd+BJivy5pZenee5wne
	 ttCo0Amo2uZFs6Cq5OXssLB7MEuy/soyxe15IaOEhCK/rDu47Fa2wHiSbG0EEaq+Gi
	 p8nsBYfezSqjQoLwjGtWiNre7MqK7GBKyGKNwcEuNkWtNtxMRc4cEVQy4bALLIJW/n
	 XMOUOdUPzqtz0EndysV4nQdqgKg1EESbBn5bWDWlwXvx0qSsGnuUQUrRTd88LdhpWp
	 DUGyktCcaCl3q3B0TXmTeNM+pnsjL9cnSu/P7sGNoxpI56860rwKuDQ+sHthMKn9B1
	 pv5Pw+3APiIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE7C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603899357.11143.4972476700307448755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2358ba67a2ce22a63bc75af72ed63c13ac57c6d65b789398fdaff1505dc75be
Date: Wed, 30 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746038993
