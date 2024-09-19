Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0E18E1E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726711554; cv=none; b=RDGV9xOiY0VKcXHDRYsgCrUc9J+rBVOPOgdyU7/23QGR/bqMikdLe6XJTLZDMYeQLLNTUyAwg82G8qBPyVar68O0GwWumY8QIWxIaJnIAt2duLoCmtWFQhx/X2F8VD9Akpbd2VQWGyy+uJVBWj8Uu74eH+KaEnatkRHQ6riOEVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726711554; c=relaxed/simple;
	bh=aIQz071E2SHLYhL+Zrh8lqkqXN3E5a6IoSnlCmeIXMY=;
	h=To:Subject:From:Message-Id:Date; b=JYLMzaM0d96hC+cHz2TT808zjmCeUdvoEsr8oCl8z5t9gcrD5xBTvosxUISvwWZ2A/0hdgE3Mb1xaKXUyaxkK1pb34YFBocv1PTGSeswmJsJQQ/kukM6XeNNmVXJXVbzshnx29EvaQeQsnfYKSPQP6fsisQE3fJKPeH8cHT2e4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRk9Ah8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRk9Ah8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ABFC4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726711553;
	bh=aIQz071E2SHLYhL+Zrh8lqkqXN3E5a6IoSnlCmeIXMY=;
	h=To:Subject:From:Date:From;
	b=vRk9Ah8U8PM/q1l/86KeuNVTHxiVnQinTWSuLnH8aZGdWgzPoGpLZNX2TnY4oYhSd
	 D2IdxOC6TT2sjA7opyZGNC5IPuwdFirBzQoxKXpbKzgQM6zsfRQF+lYH58V9zdiKnl
	 IUvf257i3xfOTqZAkAFXGN3enzlJrlxvI78CDHQAYexKWCsnNBvT8288F/C92L5jxL
	 YmNnch5+WkV5oIokAJGqEBibJnmlE5v9gYBO5GzptqHHYZI2sH70Mj4z3KpNuhfuT2
	 nsgAF9TBHY9BUA1noTn/WV6sEEi5/u9ReOMXJFhoruO6SKOwyFtPzNU5m0ZEnB19sc
	 9dlguhSTt/EpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DF0CDD569
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172671155362.20841.5025311802285542875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04f99d0b1adbd08ab64c376df2a8c2052a03423feaac779286156838cea1bf8
Date: Thu, 19 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726711553
