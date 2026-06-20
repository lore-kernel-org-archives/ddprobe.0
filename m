Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F18240D58C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781915194; cv=none; b=Fc59HTggY1GHEL89kT1ltB0q0iqCYRiffzYicL3UJLyter5iR3n9QjCcoAzENp3gezTuyCLs9DnZZdKXgPLQOll6zfn7LJrGJYGZE8FNwFxWY4YYriYfOZML0X6E+EEtCn57biJbOsdumuctpUJouYvWf16+YGFhsOvkAz+9wEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781915194; c=relaxed/simple;
	bh=74z2CaPA4n4lyUbujHCQBK+DN3NFcMywtuj5fGS27E8=;
	h=To:Subject:From:Message-Id:Date; b=LwgQMhtKeqjSgEoojPUuBLqmnjeKBFao+bE94NrJpWPNqEaSRWun5jkSe+wVv9NowaLnN/DjFHqcgv3UAvhROQJjidI7cAomfxJq5ivT62Kud9pNGM7ckGEjVTyYtVAHxOBNOb14CyhJcyKtFYW6ODMUl3J+eSLZBkjjq2/yKYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAdhkLsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAdhkLsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A13C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781915193;
	bh=74z2CaPA4n4lyUbujHCQBK+DN3NFcMywtuj5fGS27E8=;
	h=To:Subject:From:Date:From;
	b=EAdhkLsSO1jDFn6bl/zl1ByLQvnenCz9j5YSkgBGk/KrLygUZQAn21iWfIWYHBTqQ
	 zXl/jmfu/0ozalR7NehjBAdik9ThWGJWit7cW3LgVjIUWVKb0XsfZfzlvOzkWxEQZC
	 6NseRTe33eq3AbPSoOsvenfu7EJApvyvxGF7/3FQudVHiCJXCRoIB1osfFsbulLYDP
	 nL6LjX3ghmthrZLypmBuy/88+c9Ieecjbe7W9MmjewgnfVnJaWPsZFAbld6EuS+ahC
	 4ly6+MjulmzFaiYZcp+JXC9L2yAmhPpe9I2qd+u7HXm0WYgJ8Q7oPjvDf2s643WQuM
	 ZkWjJOnQySqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B698CCD98FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191519373.12725.8074457406603154457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb4a3cc370d3a1620136b7be6e37311bf4dc113fad944bcd1798ee96c463cff
Date: Sat, 20 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781915193
