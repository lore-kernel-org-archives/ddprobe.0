Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2866215624D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756947594; cv=none; b=QpgzNF9wgzfrlZ4/Tt/XwFkCvSb3F9el3TTulofUIzRx5o6QLgtbU0Czi0uoZ7YeXUUyDrFEUV7lWtXsmUEAx7X+qk8F0wJeaXBs2CCMV8+tkvHsFW/HtJ/I2pNrY6vpRwrPVzU3iqH9I545DZi+SWXwH5y+r6nONUmx/p05k0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756947594; c=relaxed/simple;
	bh=LQQqzVLmBCn35q8fOwreJLzOGw7VToZ0zrsIlNTtXT4=;
	h=To:Subject:From:Message-Id:Date; b=LQQT3aKj3UJpAv1PEtvc5sGhRwaIIy7QDbC2n25Qn0pyuHANAwpYuOILPQ3V3i/wVOePqV42xMQTa5Wc2h3ZCveIHjdvJ1NfKmyZ+Xbors/cWv+YQD3MJCO9orN2SEkehGJPU+nAQ4YWp2QsnO5dGSe1lGozNpiC+q+H/InZ/+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ3y30i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ3y30i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F160C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756947593;
	bh=LQQqzVLmBCn35q8fOwreJLzOGw7VToZ0zrsIlNTtXT4=;
	h=To:Subject:From:Date:From;
	b=qJ3y30i3WHMpZomhU7GQJEVaz/p6HjBdUCmdt/1mWZt2b0JyVLuwMh//ZLdj2Rbd6
	 K4XChut8Xu2wiqwab22w+vgHkYb4A0e67WtOIpIjHiWNnpnuG3Vt8v/ecvH9Z40Isy
	 S0rNkEyh6O6IrZBXoM2vZkOwBbHbuldNUsZGwKaX+uLnlv4OOy1sSZ2H/X95fpbvuJ
	 USVePlSU6S8pQI5soJCsM8T+2rn7GsUc276XuIU8bAEDj2Le+s6rPaU9kPjMytexIS
	 5Ql9Pd7OunnuGhxk3Cj9Z1KOUxiPDtwLXIaA3c3fueKCXJBeaI6+jFbm6szFx6sMz+
	 4NboAlSRUmxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDDCA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694759358.25735.9392842938470714868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e81072e6247b490235aea8f75431f2c7728e942663afb42afd635b8acefb7af
Date: Thu, 04 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756947593
