Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163EF223DF9
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762313394; cv=none; b=uGA/yGNYL6cuhwRPxrQs5J+aY7+oGSgiliL9jqdTDkTXCDhp3wePf2KvvyLrEY+mRo0BQG98fUrXyNI2Sp2AoY2cVmseJRSfOtPfOBx3tHYadqHkmMKFvaqI8Q7WEbjoG6fJ154JIKAgbZG+bj4a5q3j7B1IbIedE/OY28b+bpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762313394; c=relaxed/simple;
	bh=6fpPDnDazb3JifgcVhNgF/pqCQMC6IEGTps0qTaytlw=;
	h=To:Subject:From:Message-Id:Date; b=tC3jVHInH5papKd2vfykYaGo3TCYh6M5eNfmfvBuOD0YGvGLGdHjyctlurSBZ55HMz9bAiO2tz9hPL99Y0Yol7LzNuF+/zSDtS+axpHzUrzwZ0Io8vsFZyn8FpD8MslHbc2PlYDYp38dM9OnNnehaO9ymQNFejtELLpZNxjVfHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/Cu84E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/Cu84E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDCC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762313393;
	bh=6fpPDnDazb3JifgcVhNgF/pqCQMC6IEGTps0qTaytlw=;
	h=To:Subject:From:Date:From;
	b=g/Cu84E8TxiMYI2TBP2PlFUKvzQFFraPhVpzwFeScsrCrh98R/UJz4rt4eWAfzHQn
	 1cbI9VCHGot4VMVg3iV82PpUTi+r5M5YdL9APLcNrlkpkRhTS7FspxQk3smkNQ9pme
	 KcjPzRb3JTNWLuECNvg2PFQxugCppvK/F8vzwJi+9HoSrLdDxtE+2P8Nzv7oOIuvsY
	 7ju8OPCNaq6KPvsG/FVrfrCEnMzQtCOI1mg7HWughmhLvV1jw+boxTJ+Ds+vsB2f5Y
	 ze25u5T1xzmzscoThHGLn4h7oGSOnlF3oFMd2VfL9Cnv0xvg2KQxTJk+5fDi997nOW
	 XKKsR5K52iTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A5CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231339358.1000.9321925827343534992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace3a1a529b4ba1f10e3d1048ef78d68cf0d2827ba0d36f969fcdf220b955f3e
Date: Wed, 05 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762313393
