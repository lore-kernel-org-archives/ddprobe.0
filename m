Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBC02F6904
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761945593; cv=none; b=iRDTQNEJ8djzEMIgrS7+kfew8Z0er9vGI9KxS+ftrh4yLd0qtKLWhZzSIEqEdw3CDzOGbMjxVsw0jp/ejcM+Gq5B/0Mk4PNlHo/eP3B6Xk4pc9XaqsfBX4LNhfYAj2rSm/SBaDUFdr5VYNNHBWBhqcE35JMK+KRjhaDovnGt+FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761945593; c=relaxed/simple;
	bh=UnNNEEvI6l6jSR17OeXkm9jMXo14R/+bhPuQptlhkwQ=;
	h=To:Subject:From:Message-Id:Date; b=EpDPkUAiSFnhS05i49eTg0SLvyDfYL8kaGVu1HduV03qymGkITX6RJpdr0zDss2Y9ieBiGUwHFeA+AFsmAyLesmcp8EnBaRG/ugeFx20V4nDoVLxzd58a/3oME9ZfMDQxVygMrh3NQFOZ1N6shPu9hZ0eo6MVHXdzHVyLKNQ1io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqiKM+ZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqiKM+ZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761945593;
	bh=UnNNEEvI6l6jSR17OeXkm9jMXo14R/+bhPuQptlhkwQ=;
	h=To:Subject:From:Date:From;
	b=cqiKM+ZTbH/BhqGv5IDwxUwnVdG7N/0TemIxOhPsbPsTVv6cgC3JYTMfK4p6ALD2k
	 3wNAI500gGI07GF+lC37jpgv1FrYbvlNknbn9JJ54goyZ3/N1dpMH4D7KZyyC4BRtk
	 eRbyZz3L6TZKUJjXHV1C7p3TkWxMJsAbVJXmnHbgS4pQFXKGRY/52SXfW/3k6YJc7O
	 HP3+ayXF3qYS8Gbu0UvclKkSi8/Z1ie37sCEASTE0GJBPxa4i2wY3MriVjy7TVFw7L
	 Xr2CA5gXp7vUveMoJKMoMZj3Afg7T8RgxOUsueDlwgK0CV51hH3bDC82Xv1E9l+U4/
	 SqWQ4CpiQkufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130DCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194559358.31992.2162292042118401362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a052fc3218e6e15fd48bcc6a0a51f29e75f107e0e364b0fe3e2f499af610da0
Date: Fri, 31 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761945593
