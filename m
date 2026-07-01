Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436D21257F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782873514; cv=none; b=aigI/qk8PYpsJHErp759D3k26nXS1Z9bEFH7lfd9JTDcIC6JygsPt/0NRFN4kbrnxrhwfkk/bmCC7E+do1DpbkI9iWELl3JtbwAhTLdrV+SzpShp6EhJuummsvF+kgyxspZhXf4j3oH6nZQ1D6LDL0vDWplX/gkOi8l/kE6zr8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782873514; c=relaxed/simple;
	bh=HHrsupRGexn9oFbV+t8zTCAUZx0Ox9Fq75nlpemxBxs=;
	h=To:Subject:From:Message-Id:Date; b=W6UvN6GHyiiq3E3AFR7VM7lmFdGeFUwgm+ZXGO/qpcVJBCjFZ16/qanhew3CxrByYr3RIDSTLDIPzy6aflIS3Fyi7dBTUnQ5RiVvuSVL7pDQz5P5zhwntXSSTWNK61/Nbhm4Ml4MQZHdJuLq4h/apYQVT0TOHuEQKRiKC7IAoZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnBU78Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnBU78Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C404BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782873513;
	bh=HHrsupRGexn9oFbV+t8zTCAUZx0Ox9Fq75nlpemxBxs=;
	h=To:Subject:From:Date:From;
	b=mnBU78Kpzxr94SpfW8pAdfY24T8/yViKoxHEeShnQA/ZuepGhQxibFVm0vweUBgK7
	 8a0KyeLYOi7o3To5BZKQYYeWrKAXMLaFeMFvS01+Tezlgnyyuc8qRqR13C6la2bkdE
	 WPB0dVEXmMHNV19RrVo90Zmk3WFamvQ/U8nDvwb/W0McAAiZT+EEQjnYDZ193UtW1X
	 URSe1fIvL5UJrM6hpZJ+1KdvLHKQraid8B5dUFo6V1MlMthC34g5fN2/9XuWU/UKO8
	 iyJH4F/qHGep6IjGIsaa3q6rLdG5TS5H+/CtHnByFc0Lzz4LpT12cm/Iat7k36+e+H
	 +AGXaIsF7tGEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE92C43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287351368.735.6665390076773691792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c090fafe8e9f12ab542ee0fd5e38afc4d3d18d559bd731f4844e2a454910d20e
Date: Wed, 01 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782873513
