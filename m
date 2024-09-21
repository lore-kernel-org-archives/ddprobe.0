Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891A2943F
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726916154; cv=none; b=dVk5shl6seOmGxDkkuTHGcItHiWk0cvX0fklDAxxquz3/RXD/QWoRRY+mXvB6cumYc1XDZEfPvcN8PksJ6uclu8HxVQY92twnbaEZURFl+hNxKnuLzSo+L/YCgjS5iItjE8c3OuxJ2foiAbHATrY0lBDGitlh2XUWyn3+2CtTAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726916154; c=relaxed/simple;
	bh=L18N2mydz6Xt2nGA5NlsJCcNtkgHT/UhFw3NrO1Lf+Q=;
	h=To:Subject:From:Message-Id:Date; b=hBQMdYAxJBy/NBHc0XWiUBGIZ1mmomMbF94qHEP9PJJJSamoRWecNqj+ph34zQACrHwIEMy11fEnOL68m7yRRCF1IDkZdSxMChVtu8EUSCRZX/+gcEtbGyHbr1ioMhb29Lqag0tFHUjZyA4catG5a6L6hNk+8lftc9h7lxPXuj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJIEhdHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJIEhdHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88E6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726916153;
	bh=L18N2mydz6Xt2nGA5NlsJCcNtkgHT/UhFw3NrO1Lf+Q=;
	h=To:Subject:From:Date:From;
	b=OJIEhdHfsMFAJ38zd7xvVjZ9ipG0sfN5ZeKyysAGdw5RE8uvU2emnDCC61eE+xrSY
	 oPzo7S9IB9anBLhbKThUZHvkEmE10fRQtfvO6sVTtFpgU+0alpVrPhtaDl61P75/2b
	 sK3ByRyvxeI1t9+G5FZfEVUyNfuii+rrC84cVBY1fyAq/ZFa0EkH0VYnUyupNQdfj2
	 0t1IVdzBfA21m0pYxssvkWAqpgCAJCH0mtZV+iXka2zyO0GHpMc2XGGv+VfiwB0ryb
	 N3+v0PZQ+v4GuXLJ/zxDbP0Z+YBhmvhookWKNmFN6lRL1RX1cW0It55zFR5B7j6BTe
	 VMXx1eHbzeB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD7CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691615357.25905.492638913674044642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0115e29fe6e6d3b0b12385543c04be9e9cee106243e297a45f1efc11eed27fc5
Date: Sat, 21 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726916153
