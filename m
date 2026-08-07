Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE54279DCC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786067434; cv=none; b=a+Xk1McYzCvBnQZIpP+XCC9uaDuOp6MyXt8ISzKXaKlfHKuzm94IANtX8ubeIyB5wEX+d6YBcA8i38wnvmviZff7l+k5kUB5oNRWAualpgOCmRZabhjr6Akd1123V3J0oQcd8oH5G5x15wNLsZK7Qxm3xT33RPn0EqwqJJgy9f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786067434; c=relaxed/simple;
	bh=Vg3jRGefNkgH99lUIY9Ji+7pkcEkCj7+TUp2IyO7WRQ=;
	h=To:Subject:From:Message-Id:Date; b=fz2Cx1PX8SmYByUm1H1hkRTlngvygd3N8V+tfa4FEKhn73ELsVRknb4JBFkfPOukauOC24DF+B873Ou2sIxEgjB5TvPfyBlc8SM7ZQckXT38EF6dLaCbGAjGzx3FOixe5olYOUrw0wIp9b+283H7heq7JDhnY9rgg7CjZP0MIIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+LV+4pC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+LV+4pC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC984C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786067433;
	bh=Vg3jRGefNkgH99lUIY9Ji+7pkcEkCj7+TUp2IyO7WRQ=;
	h=To:Subject:From:Date:From;
	b=l+LV+4pCdgxxhoJ7q2CK/F785taOp/drEa3gqgv/t6IyKo9Su9Xc6kV8K1g85Qwg6
	 riizfs6M7+QJYYndjvTHnyH+0ojOw8IhR9j8QeKOB59z2MFt2Q/3GaluiFf2GLnLBD
	 0Gn5vkRAzyry0xjEgCrWxbuUwU9m3LOnH3vn4ERPaclV68jfsu9OYu6HPJH2C5Xkqf
	 WIIzSQ8BCYUN3JVc01IGIQn8zCMoc0U3FXYO8MPCoHd8UqfIa6a9K3rhqzA9/KVyc1
	 U8tabtuBC9dEH4BuVYP89btn+rIiqdr9csnBrTVL/aOEiQOnsskhL2TkWYsNAv3Pqy
	 imk20b2i6m/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B28C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606743372.16840.7888064927219420424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7acac5534d7362fbd157523100122398376a9ed7128f582bd59821a85e76c8
Date: Fri, 07 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786067433
