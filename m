Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CE51514F8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776358654; cv=none; b=AkmLuFHBcZYhWjMKnt8AbsU6RlNhlPlpLSXG/lbjbcMlopa8Uncpp6HKDW5OKDtrJLOsufjN04OifhumIZ87q283p6kggWBSieg5Br7LQQuOZXa/mXZM/vPv6aURxuHjZkLlMdR2z9bxEGMH2kCd/TdpYTXdciW71JVBRTfHxJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776358654; c=relaxed/simple;
	bh=MzDrGYJbX4TS/rJ/zDuB9mhHSB5wkIHLkJ0hWb0/RQE=;
	h=To:Subject:From:Message-Id:Date; b=VXcrfonHghAXxFmMFk/UFMf/nLzbZ6lJTiKVOvG3uivlA2VLFlUoTNXMb4UQTTarfIUtw6TejNfEtMaOHos9T/UvM+0xtJcGL59uSlQlib12FX58K8fH/s2QYxvw31Jw144zrDB/bppOsPDF+jX6sDUXcdq7pEfaPvZagjQWeeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktEBBejq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktEBBejq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8D8C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776358653;
	bh=MzDrGYJbX4TS/rJ/zDuB9mhHSB5wkIHLkJ0hWb0/RQE=;
	h=To:Subject:From:Date:From;
	b=ktEBBejqLs3/Rd+Je+luLvZKLb6DNfCd8YPRSEemEWXN0vzKeapv2I3TGLoQBsQPr
	 ew/vlwtDFLoVMSZw86EWMRHUhwQnjiIJjSTx+V5BQwjUawhgGNkKcdVIGf1kXgRK+D
	 bVcmKj9WRsgLXZ8WmydwAj9FEAXKc0qStkvjAlkcUe1U+yy3ddP0y26ROje7WcS5Zd
	 9FsnDuNFmBGLKlO+lhBrJZLxu8KpWHruVih6SKz5ruC33uae2jdiyxu3KPvDSkEF1U
	 XpeW9f8kyjVxu3RP+LWQPM+5G/wRZxIKKNKNkGST7t62gnog+EOHV6IPjUSwQhUWeq
	 5F9mx9VQVyCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB012F8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635865369.31784.11264276573106703248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe1b6e0aae7535cad69c9c0e6f17ba324737c69d4a88ea8e6acdb98956fe53b
Date: Thu, 16 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776358653
