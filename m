Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C63E6DCB
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777919254; cv=none; b=otPiUfmGp99BWFmW/iBGW6CP54V2CGSLJFV0dcojaBz93gpbbzLvIia5z/c+BgHZi+mcGj4rvOjHkVHD/GTlTddCeBlrKps0yJtY4em/54leYSjDAo+9XOVYj4Bk7a9xzzJDihofjsHhQV67F7vxaGBdf6G4bmyXyqHx5qjoRMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777919254; c=relaxed/simple;
	bh=pQv4GoiUijerMjjFAJQZyd8BA6GRCm0ZX1jwBgQNn14=;
	h=To:Subject:From:Message-Id:Date; b=GTNrPLNWE/6/5WYCWCEHx+7Zo1FpQmKzHSHBdfOIMP9vgBOsW/4gpMYoRx9c2Mt2+zKO0NLCQX61ELUEgm2AYK4TotwBzlawRtu2+qBQfBgGcvQpPO00deR68xTutcN69X0cHPSIAHJCudu4Cev8qTiMUUldP+WbystycPYop0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3cDkmuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3cDkmuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5216C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777919253;
	bh=pQv4GoiUijerMjjFAJQZyd8BA6GRCm0ZX1jwBgQNn14=;
	h=To:Subject:From:Date:From;
	b=W3cDkmuF/cwg5wcGvnsV1aIolga1r2nIGbJVK47Hr1z+WQRI9c8B1IvG0/8mCZbEL
	 EzfQWVk+Fmy1XuGxYpBKV6ppdfWB8e1xWjuWaWT2bOndcaoFCkgDNXnlQ0TdX+kx0W
	 zNre6XSepSPB7MAYLN8yiV6VOdSAaRXTKCVGeU+Al6ii7Pa7iENRaI6C7xvSPoALvD
	 13Rk6Ez1oVD4gM/T8jtr1px7tWeBpwdKMqG/unx+KU/uX3c6J5JtQrDhG+XCey2Bfq
	 gYevLEyeOcnOGW978K0oDLHyIDxRd4e7PhIHt7/0rorcvl8i8vT2i1qylh+2aUqT0w
	 qvsU/LSp/yJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE6FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791925368.3982.7163963017835970858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63feb0730e448b87d71f2ac97fe83902751c35e98eb68bb9d13206af5744cec8
Date: Mon, 04 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777919253
