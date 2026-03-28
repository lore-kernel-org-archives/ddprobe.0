Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BABF4FA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774731293; cv=none; b=ntS0yGMhHTkiSGW6D5Su14NJY+d1kPxmcDiY5PC5epmYcPDX7JPvDK3G9C8ALg8Lw4o9poA8zDiPSFqRQYg2nAopt9ENAIb9CGPAjy2ajaM/WaHts7wmRMmmcZA3/N4K53MKt5VNabroXSnC7+Dqr2IB7Ug7tpXcohhXlCfmvUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774731293; c=relaxed/simple;
	bh=InCto2LXktIt/85HVdPxPRHRani0sIkZ1wzt6CUCAJc=;
	h=To:Subject:From:Message-Id:Date; b=VhDO1UOSanlu/XaNGeQFN51BxlJSl4ItsIsYx1wzluYIeB89K35JPtVFi0CH/wIhhTWr2rUOCzLty5zKRHwMJdAApPQK2RYRav8fGy7HkV6JQmtgsfF4m3v39XFpsp/GqHqY2MqQwKFswbHpB8QFMqNUTMVRI1YwGnINqdT0jck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHHLo23I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHHLo23I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774731293;
	bh=InCto2LXktIt/85HVdPxPRHRani0sIkZ1wzt6CUCAJc=;
	h=To:Subject:From:Date:From;
	b=bHHLo23IO4ZrRVREwDgJDmpo525Li02TAf6HfozQgy+QpllrPHv5Iu2nBqnYRSU76
	 KbOS+Xwtg/fVq0cBC+0Zmy/Pb0q84HS2ZqZ2DNgcIlRq1RajhDt3MNx7DNlYtcRb3v
	 PkTTeQuHADO1VA2CBKS0vx5lFR7HdCBl4QQWNzWfxEAzz9t/j5ksnukPwulNIOCcDV
	 jLE8KRQADqN+t5j1ey5MR3oIUgqZtWzJ0VvXIdo8/d+djfIeNgwa0on85RRvE76v7i
	 I5QiOBweZmtVI+e3FkHCFg3PE+tOlCptJGlNBu9ZqETQn8aJsYG1cM1gmsYFJnLEun
	 vzLLON2dDfnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680010D1481
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473129358.18442.702765416301147578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db50df9ba122b54855341866e540839f8e7a339bfdec0da2955a0ed1ba91e3ca
Date: Sat, 28 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774731293
