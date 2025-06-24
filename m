Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220961DEFE6
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750739994; cv=none; b=LJaTU+QgFudQApQBdi7ymOvvvzsKy0m1ADhjyFJs1TnLipPl71jeMUj8sWz6b/cq//qU7nN3w0dj5AMFmU7mb4QrT6twaWjQdXf0viVevrdBiWy+j5JeRyrhhypxxLWGYgGxCYCT9ICpIdBhiDXR6udmf/em4iufOU5NCngPjl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750739994; c=relaxed/simple;
	bh=OIVfhHQiz0/+bAZYzaU2YYJ8qOk1/oLvReTmMTL6AKg=;
	h=To:Subject:From:Message-Id:Date; b=HHLEozbQBtgnghLM78z593rSIjFP/E06EJe8XH9TfCWplg3eHmFHTt3O2HRJu94om5SsZAN6fpBmhPd6dZ+ElAuWdzPOwBG1xkaQzyYG6DtDWqg8jmy57/ItfbLlQhv75YE6EwOsEl2Si640o7zT1QDRagAHap/x+60Ka1M3wGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvM4WwsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvM4WwsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F9C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750739993;
	bh=OIVfhHQiz0/+bAZYzaU2YYJ8qOk1/oLvReTmMTL6AKg=;
	h=To:Subject:From:Date:From;
	b=tvM4WwsMrSP+8TyuBcuWg+WtRd96d/lmgj3QkI11+gnir49pYWe2e6//3bAI/BHiV
	 nTJ6Ybs6Jg0gU4AK6d/iyx4s1soBjsoUUSkjlu/SJioRutCFBGn8gratc9Pzq3kX2c
	 R/a8FaqPQrgrOWPdCfkOS4LP96cI13WxS+nHKoUSTSqbozsXN/64kJJ5nuTI6bZhRJ
	 lGI23DYM5Yb2yGTdeTqkXq+fzK9yApvsp59QyXdCTCI/2Htai8rzjem2STk+0DQfwg
	 hJy/vQRGSYdZ0p3hpXMY+wLdrmQrAOqyHeMR34OpP8yFmOJkHEMNL3b8gE0FO0l2E0
	 VgM1czN0TPnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B0C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073999358.23866.1411983452124620361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbef6a8206ef240b962492015047dc5e3514344a9e98141c433654bbeaa5496c
Date: Tue, 24 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750739993
