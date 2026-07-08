Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526D3ECBC6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783498714; cv=none; b=IhAciZH47mVffVFoTStlONziBtniKtyCf2zic1Ag+H0GgcTrJdHoVOS9umpClGWcHMcY6d319MOTsKxgQtBdXkynv9BsOxCOtdxCcb11W0wTOk4kEGtSXGcMmgEpR8DY4O7R8f0RSnJ5PyvNKOwjH+qAtIKbvANEazRRmAeMkPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783498714; c=relaxed/simple;
	bh=JZM7tfxJ3aVbfLfadPp/J3yTkwASpGnnlvXWRYpo1Ug=;
	h=To:Subject:From:Message-Id:Date; b=hUH7RcfTTTFYGLxR2hzhi9pk56QVaq1+PJIGRNI2t182G831NpUfcCHvw425m3dKjsO2ll1DZ52VaH21Pt2214hSkWVBBizEBnx+YQbkxNZHlyM0rxw+bEHe8bJRZb+EDhXhbExmQxirHIR3FaW4ejJpsZ/o6MTYOVxTcLvSl1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvyrhRJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvyrhRJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB762C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783498713;
	bh=JZM7tfxJ3aVbfLfadPp/J3yTkwASpGnnlvXWRYpo1Ug=;
	h=To:Subject:From:Date:From;
	b=BvyrhRJw7f7wOBjX7ilcjfEMSjj/j071kz5j+z7yjdJyju/jMCybcLE+tSzT+9XRM
	 nOuY/ITHciQlaxvTiP8qiWx08f6+qinjbKRuLezcLCGliCrVwGUkr0vYhYi9g2lhFX
	 af7usetJ1+RJFLXx5k08kenghYn6cIXl4GFcfmWTGD0VahcB68Cw098T9J8Iq6dJuU
	 uRM4wKmJZy+al+05XS24e8OajQuoMFY/yPsq5cB6DzHm+0owWPO7AjQ7BFTOlvb3p0
	 O8m9aP9qtDzaX6MQ1oajpGpf6OOnE5B1OnfmjpzuRRo85OwmheND0Ri8fjRjbl+2Qz
	 Or1S1LTgfiw+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85E9C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349871368.22839.16715217644941690204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426d8958184fc102e8fd92346cfdbfe3feaa26b8eedf2e57ee911634afbf3e94
Date: Wed, 08 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783498713
