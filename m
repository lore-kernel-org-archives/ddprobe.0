Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC46283125
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750239594; cv=none; b=Y6doGbmSxL0cV/bChhve/UXcN6wrHisesP9ahwuvGBc666Dus1FFO7qEPqACMW1yzTIhbHS2ae3RGZwxLa90X/keA4As5lXOip/WFoBgDKLrpDIrQTWOqS6yFfcUBzaCDLVnXsR2qsPM7yW8qO4iSOjVHpvvbRDUXYYsNM/LBGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750239594; c=relaxed/simple;
	bh=6dynGUZaY0xqsdMWgDIbXjeEfaQidyCATgNFlyrDTu8=;
	h=To:Subject:From:Message-Id:Date; b=FKsUCDzwv2McijB0HnFb0/3850oMX1JGD881vMd4xt3zEg2JQqF/xXR0aWmvTQlmGmeBSX9tBmZjI7XK2SxCe73H23TFPlPslUgUM/WuKbrVagdVY/X91QaJvRpXSXOhtqWbsNKckcaKh+MTK5S2HRn3wQIO7sX/KU/tSyfPcxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae1WS8Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae1WS8Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750239593;
	bh=6dynGUZaY0xqsdMWgDIbXjeEfaQidyCATgNFlyrDTu8=;
	h=To:Subject:From:Date:From;
	b=Ae1WS8KsHznQAhK2IR10lmz8hKhl1DbgSqNy3m9R6suk6uZCFmja4PQRfnIHbwbHU
	 gZ41ZMGWSBnImXuz0i5G+mRfUL+6eFPTuC2ONSruAXb27PalEUBxHhvdPtW88KS4m1
	 kWLQba39AEiyOqTARCUYMmJ8vpv+zjSefeX27cAku9S8/0X85lTtDi5ntd25VaAI9w
	 xRCdGWWMaz61EhVUTvfrvvAL6a+dzhiAfkVFz+JsDddxNjF1K7VMuMy3tvnIn+JsjP
	 KWZdsghWEPIT+wlWodwlBXNIKTDZEB3XdtFCVrrZQPyVXOGnH9uporS4t+9HdVwGDk
	 b8woA3lntIulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA07C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023959358.11227.18087107202131876830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193aac4f163cca52beb5531de6dff2ada61d47274bdd7f1256dc72b020939b6d
Date: Wed, 18 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750239593
