Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EA07262F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753037994; cv=none; b=VgjdoN0foeE7sWQoYkvywVaXizDTM5ioTuzoen38jhm3HWAoKhx0wfAgKSy8h7Cll0gEBf6CGEiMmR6ZzgHyr5y7UX8l5DKVwHkdhYCNWWbqhC25a59li1EbaBNqHCNe/iV/WiJ01HKG/tQT+8WW7E7fdpP0iFVBujdPczGhIi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753037994; c=relaxed/simple;
	bh=65dKdm+1/N9uvFuVPNiFO72UyeoTlthd4EJC1H02o1k=;
	h=To:Subject:From:Message-Id:Date; b=Iz+bgpjeATLlGN5H4v1XGz4dGPscz6zgH62bjeUZndbTnR2AQnjEyNvNJ4ZyEaDNFwsbzR49i7H4tsEachj6NvONAeDy09mpGqqhcFxkEaMA/UVjmwNpRvmjFvcxtsbHlscXptcufgdtvc5FzvZyv9i13gnvowPWzqOqX2wCekM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB7pQ8Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB7pQ8Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2470C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753037993;
	bh=65dKdm+1/N9uvFuVPNiFO72UyeoTlthd4EJC1H02o1k=;
	h=To:Subject:From:Date:From;
	b=lB7pQ8WtvjZy+2CvKuu9r525eTvvThb2GokY0AHxsRrZYaTQ2KdD9Ox2QfbEPdvSy
	 DxBUuQICyt+8M+Qkr7rDA8hQCX9T8eU2ZLVmPPSs80X2dNKdnLlEoroTzYNTikG6pf
	 w1ea11QRoSao4GRuBle0uz9z32zmWUYjZiYbrW+cqqQkvNyqCxs+zMjJHPhHfaCDkp
	 nDoXD+B5V3k3loZxiLdHU4tG5RAwzrKhpWQNkWqiqmXE7hrUug7yPYbU/vkZYzZ+XP
	 07EdOxI/Uoew0h/YPam7Jwhwz0KbHjmNfYq5/jEOVmDA83f2lB6rp7xe61tVnDqsno
	 rUT8IAxaWvrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92173C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303799359.19326.2266978724570740550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b84fefa186fdc8278cdd2bac91214a9af821584b6d86c7149799e0a81dc0382
Date: Sun, 20 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753037993
