Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA3E3B05A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791394834; cv=none; b=BeL62IXEJs3Fc0cpkehOV/494RiXlfIsXwPHwWWez23CAkOHvGTUXFrdWpcDc8devmsQGNvBi4AOJpcpkI5hVCH/vIbnzKXgJwF/030GccNkTNCVh6OWdv8oqN147bpi79MJGUAaw+SGN3MzinI7JhO9dO/Y2ajL6eYUXRjCYsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791394834; c=relaxed/simple;
	bh=8N8KyNknxpE8wIAUheJUmN1/cX3BvUowegO1dFX3jnc=;
	h=To:Subject:From:Message-Id:Date; b=ccMrzzYAKju6sdoKe03+884E6BTbbT97bM9/zrZD9fc4ZRAOCZgiBpr9w5Us70Q1elx0M2jlB5duXfZ8K4unC+bRyRx/OV2L/Mjo5PtcB40dsCWtPk+9wyu0veFrmvYKCh6GtruS8PmoWq9dT3o/p3QX1voB0uEEKIm7XFE/Wx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLchXmRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLchXmRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14FAC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791394833;
	bh=8N8KyNknxpE8wIAUheJUmN1/cX3BvUowegO1dFX3jnc=;
	h=To:Subject:From:Date:From;
	b=BLchXmRzmuQKbu0F/7c8aiBjRlMaOaF4efGDwUE2vPoiWgX8a5wTEnwKMW25/8Soa
	 MTtJ8YmSskZ8BVEvjwicLbsbdNP3NboPVQjEsHUAxfuQFskNVDMt4LSVeA1teLOF/E
	 Tb45RLHI5XgNQdX9QB/Q35HdKRYiTjh9mHvJgT5Snr+4B11CfXSI8k252+hhce+ssf
	 /egodD49e/qJmDDKI6vwdGECIPya8eukLhq3W9OF7RZgfLyOhH2vmt7wDbf8FYcn0a
	 wG0i+D9Oyc6ysA3mOwt/JkYoHCZdXEhC00bOxdSj2i8qsCACakWpPyGtihPyY8Qp5O
	 6TJon3cPu/Zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3AACA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139483370.20747.3191306709645761263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf831efec1df4efbcc538caa1ed5474277daf7d1fdda427f6edbc538adfa7b7
Date: Wed, 07 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791394833
