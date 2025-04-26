Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610942AA5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745641794; cv=none; b=GqTa0aDlX7UGgb5NdH61kJRtcpmZNY9DgCyl0zP9Y0C0UHQ3GUQjz6U7mpMiQfKNKtJVOfui9VkRRznLz9K+4pUQTZ4NOVuBkfbze6s4ig+vcAxiXPCDu/IXpnV4pnY5R/4NtSvy5UOPGF06sGufKXma3kvKvL4M7rVenpm3LCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745641794; c=relaxed/simple;
	bh=xcDhA0DHijaGYvw6REDbtKUHoZN8pbLd5i6lQk26pp4=;
	h=To:Subject:From:Message-Id:Date; b=IJ3KV7tUb9FS+UCjmeo0yHA/amutqH3M9iRGqibyQmmhQssRdi/3X9Md9VG1vazyQDc03jUjSFkupD8G5pNR/z3LSeyzHvRAG15kuW2bTy5FbHBOi/TIvEgO867+qxe+UhjdGkFFpZ4t25kUdTJ8DQupX1eHuYFEeID9qRIOook=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3aLbhRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3aLbhRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA537C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745641793;
	bh=xcDhA0DHijaGYvw6REDbtKUHoZN8pbLd5i6lQk26pp4=;
	h=To:Subject:From:Date:From;
	b=H3aLbhRxELSVX2JGjevSKo0YWCh1ZFMiGYYCZLl6ZcC05/fJNQup6FltT6bPm1Qrl
	 mVAeY4Yhk8JyWDejDR/e1cLXrW6IvE1IAPatlz+8gnImOhMkF1QvvqbDzv7y6KBKgq
	 zO3DrghuEtXvTN56lFprOqvzcJAlqsP494LtOFuNnVPfhPWjo2yCKRVMPQidOzvKJW
	 gKOm5dr6sUwYmHlBdDnNbNZIM+cvJohjVOV1vhAM38r8lZk7lAS51sl6FSf7+W4aZA
	 8axcYZ64Zfs/WzZqeHTZ1X6EDgaIzSEVrHsJ6D48e+hApWTZyKjzRzgkJd2edPVcY5
	 EIoSKK3QEkz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A29C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564179357.19034.12302801734584378771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7218c04d800e3269adc41b210ab48fac93a973d721f59b15aea25e1dc29bcbaa
Date: Sat, 26 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745641793
