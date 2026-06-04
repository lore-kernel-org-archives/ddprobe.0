Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0A03E6DEA
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780563274; cv=none; b=H3BRM8g+APxPH/Y5S8IcisEDHCW4q8H7Y7mbj3JZyMbHRvMlC/Znxp2ImUlkMpcDJnqUKpDZfOOxmCMZ9UWcwTiBROPrgv23IUDHx9kbaY+XvXxzmx2lDbj78d40y7WgwcJCU2p6pK9sbfzmzVyZGGlTK3ML0wiugosokzdBIXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780563274; c=relaxed/simple;
	bh=9RMJEyhVzpwGboFbNDWimnEhu+TX7BLPub6P8NuEwII=;
	h=To:Subject:From:Message-Id:Date; b=e12FAuheAytFDgwrL0jgo9DD79/unback58f6S+y0wYsNEoRD1k+v8MagN09ZEKDJyyEG+rrhOzm3ieI/pZBRDNhMpI/1CeZ+gizH6UiADYwYnH8buMS6WpAlolflPC53m1bOwiZWkU3yKlJQxEFWViYQ7U7EqonLKo6Mf7FfGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVNEZ+Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVNEZ+Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C465BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780563273;
	bh=9RMJEyhVzpwGboFbNDWimnEhu+TX7BLPub6P8NuEwII=;
	h=To:Subject:From:Date:From;
	b=EVNEZ+TgWzVpuOnvd1CTwppul0bNsJ7NuGZhP72bpxSsHIQ/9ZeLXQ9SPECswVecJ
	 djBErfa9WFPNWmQ+59MmbmkceyAMIXiNwZ6+KqNSEd2N+CVy8q/q6hhPSRCjS6rje4
	 zfKe29ghyyzoIqteJYKB0Jn9yaL8UlPhl88ZWMrIlTgJbqQ4jLVbcUqnOeqqI/1wBE
	 4xpIdzX1F/K1QPFo0MYi7HDnWajHK7GxLN7a0+di5JRkrNdLYOi9WfsSbeyTcX3wUB
	 Ob+ZOPMhABTsuetTAdf4FsktgxFtb3s71pppN84rJ7Y7oRErv2I/LHBhoHkoyRPILv
	 NXvJeU/xF4dyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF94CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056327369.13073.870642021674072944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5780adac2cb12fa4ad37d8ad471b9da6069b9625a53fe0ec43101d047d62fe
Date: Thu, 04 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780563273
