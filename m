Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3536B047
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774469694; cv=none; b=NvdyXsPL+3TFZH+NIuy9zYYBLuMSKb7iFYciLdWBlcQIw9LO/MHGMYaHzooYmLhkfj0g2q0Za/6v9taOLJRFQohb8GsE9mChRtljZNvrdCtQvVmE+7k0BV/xaNlxmexHB0Ax1ml5VUQCkN/TI0T9u8ovjp3CywqHEjskMm6/xFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774469694; c=relaxed/simple;
	bh=zTMCUAawu+Xqfllvxy3PSHHbGkJKNGPxAgPcrlra074=;
	h=To:Subject:From:Message-Id:Date; b=Ps8rVUvWHmbNkHHliYJ0rfYQEeXyBAjcHOlWeHmbQtjZkX5lnO5uIskmoiL7o6Hr2FgqijEkI0EGW2B4UVGZ55UbTIXpULNZOtCM3YjpWEHdncVWkvNWpjfdYkWIJIB4nJ+1h2NU+T4yBeMglA49ZVV7Lbmo7ycv2YTUg+GVDXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twUtaI+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twUtaI+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26EAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774469693;
	bh=zTMCUAawu+Xqfllvxy3PSHHbGkJKNGPxAgPcrlra074=;
	h=To:Subject:From:Date:From;
	b=twUtaI+6lfXUbpNtdZhQhAO/H7P/97qotvzrzYTugc0hIWI0+yY+xNJlMoVImYZDA
	 HoVsK4oNaQ6fwhiamsrRPSHFyIAsqocnnBpi/gb5hbKIcMO/6sYlilTU8HDWMmvWEI
	 HADG6K04i3aKsNBA3PbNPlceXSc/AkODP8iQK9zOzr0GvLIh8vgElAC0+uhSgt03zq
	 O/40geEVW76Nn3rYvHvlOGrhGOKN2ctSNgq9GicxU00QNEwY1Las3zaCYKyI7/uXzY
	 fGB6LOKweYcn8+i78Oi6BOsAnhzJHVw0w3Uewf1aI8chKJqceNgoB8pOfNIFH1XXeZ
	 EAIS5KeZsZjMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E0109C05D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446969358.15617.3771063310281665015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6624425b56edd33971e66bbacb208498c6c6f5dbf7defe396ab7c42ba90cdb2b
Date: Wed, 25 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774469693
