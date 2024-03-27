Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8803A20313
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711505296; cv=none; b=cPARcp9qrQB8k2yUR2Za7KlN9x2Eze2v+7dC5SPKgUEuU4GOQNaGv+u0ZpU9mR7KsCXDZRk535S6kgvlL/hrt2r9boA6wQdIKP72uBLsWV1LOrVpp62+xYIoueRt7YK+A8vjIxOShInIofQ5Z4EjhZH1jmNuP+K503sqom2B6ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711505296; c=relaxed/simple;
	bh=OfAGzwD61Qirf1kOBKQXG/h+n5FeN3bZx6xvABztjPU=;
	h=To:Subject:From:Message-Id:Date; b=lhRkygiBIwY5S8wfQFtesydBFq14XHwITfh6ybB7F6sPfBlUl/z99DAMIsgBrncwj7gpFl0mw+GPxsna11dCAJzrJ1wvMWR1FgD4ww6O+Npimgk7x48CqF57gVVk5XM3p0pBt8xVTBK2/Ef8jNIRAxyLiNqO//aqhfCPFpOLZ8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTuARDwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTuARDwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68695C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711505296;
	bh=OfAGzwD61Qirf1kOBKQXG/h+n5FeN3bZx6xvABztjPU=;
	h=To:Subject:From:Date:From;
	b=XTuARDwWIHKwxY1HpEzb4CRfg1MS8f4xd/oj9p03FgFYKT6kcLEO7JyL9uRo5k1+8
	 aFDPc15Q8i95qVV9qadymqVLoKQxg1wRtdEQhTvjFADeeHVaHYSxCiElVimh0xXYzu
	 IIsRr+6ivrmHpRYOGhBaE+k5bDX/ZK4aAvzO7/KKOAXaTQuVhIvt3l0yiRUDTyliju
	 sFTt4Xx6i+8f6vYmlZmfmW6EKlk1kDlwZmiZAla52QT/9CvsoOGl8qEZzFh+hmg6xc
	 El06Hs/QW68eDNfn0RYxk6QfbSAJCxRThCzo8Ufldgb6MAnkLQrU/6SamGT3JY7XCP
	 Q7s+3G1VvMm/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD8BCD11DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171150529636.2179.1811219338782522254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac7ccb405acf597991ae49b28a50f7fe37a21be29af6ff512b04a6a7af09bb9
Date: Wed, 27 Mar 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711505296
