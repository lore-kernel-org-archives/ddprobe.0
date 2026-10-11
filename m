Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461EF547043
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791685834; cv=none; b=EzVk1OdpNUo/ILyGD96UceZgwT4piGRloxQOqzNNu14STN1gWc7dz8hKmRN/PqpZVdwIU1s1DiZdvCxqkmTz9lYLgMiTKfFUO4jEjzEW1nSRB1PBQtHhdoEvbXt2p8JZQ9yL4rDWT86hx3YDlMUD+AzG5j+Vi9xUA61Sj6IwoTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791685834; c=relaxed/simple;
	bh=nTWK5uBAdPxDTBGD7tUQXDJ57+4cKiujVMJasxbqhLs=;
	h=To:Subject:From:Message-Id:Date; b=MEzmpE3R9t9nYyP442IDzcKinWTJKV2Sl81poTvvcODfMjDHGe4qDl1Qv3sWEvdNwGJ3n+jLTcEnqUZzTDR2+0Rs9+k+jbBT+N/gHOdnEnDhJ95x/JS4jExsDEKF8PXjb+8qiXWlOKroRjCrbEATVSJ9gGATK2DkmX4uirKHsIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt2gyd8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt2gyd8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA949C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791685833;
	bh=nTWK5uBAdPxDTBGD7tUQXDJ57+4cKiujVMJasxbqhLs=;
	h=To:Subject:From:Date:From;
	b=Qt2gyd8Gvyb0nbdohWcvC57tiajMIQqpgbcaSaF14Hn9PJ6rH0q2mths3mVfsrluQ
	 JzSR0GcN9pwrbStfqmS7600Di6WDgQrwOHV8UoBBEvuD9cUz31T9l+WyBnexQKplCM
	 7pM760DnW7z+b0NuzAAP4LcYrrGdhpC81j6dGvdICSCjijXRVKDKYMZ0qDgSqq27k2
	 HwBh4z4ofgMlZ3uVuIy0XH/HPLOc9fcUe+QToNTV2CE8zfiuT47DauPcCcsqqChtfQ
	 KiwyZXoX3KEhlMLd1j4zymyLbHAvlRIrtWM7Nxei+aG1HKzzj48V2PLrGx8+YXfB/x
	 +MuOX7G1IGlkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F56CA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168583368.27463.794771392013004117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc85fd3f05385d63ed2778e8f62d6fa8461df53467a09360d42fc28b00e1355
Date: Sun, 11 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791685833
