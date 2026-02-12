Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3362D7DF6
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770930293; cv=none; b=ilQZaor054/+e2JmgYL64TJ8UgIxi6r6tejFv5plRmJuYGRUuVlZv767d0yaA+9ABj3fqZruv0Koj4kgHU6ik0ax1APRFltpKc4ByfzDfgTiQchYQWZM059rfyFR7chHTEEQuSI3am11GEVcvbBAMXlPD45ByeW7G7rFuXPViEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770930293; c=relaxed/simple;
	bh=dZlWc6YmCB/Xx+owc1XcfEtNJr3ZkL+DFIbosFmOR/c=;
	h=To:Subject:From:Message-Id:Date; b=jpDfQpZ/Ps+a/9N4xjblmdZdu37nmkEmDZCkJx1szFtHbPPaB3VVZ2QLdJXEc4VBb85cD0yycgrDkp0R/xfVZLTDyS9RKg4TnofDTrG0hkCU4Pf8kjcspYlNs8WYvOZ1cAN05CPF3NKoNbwkL56DNfSGm+lzTdcx2oalyfz+mGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L50pMMgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L50pMMgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD977C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770930293;
	bh=dZlWc6YmCB/Xx+owc1XcfEtNJr3ZkL+DFIbosFmOR/c=;
	h=To:Subject:From:Date:From;
	b=L50pMMgoF9hnCHKstxiS5izv4CgtbePXKBQcCEKD0lpkvMtUGJ7gDRNoD9UvOUHtl
	 QCQJ8NVhw0dKNbPVpc+YQ+emscbjExWKMeZ0C51/dK6vyWw3KqVB/PjLbvA9e/jJgd
	 +/MQWjxepQsT9jfHYf+CtFNoPW1e6KcqAn5rc+FzaC3Sqp+SyCj4pGB0yfwiwmAvD4
	 IiX9ni2ctW6UhnWR8BH0dl8teJabFeqdk9F2EAVf2YoC67j0S6EkKZC+4n6gGbeZ9v
	 2wOwoeGiuwJkunwTzXFFd0Ey0VH2se19KcbyPRyZzrXAfv9/gyE6zU8hRMswjiI1lP
	 M0/9SNPI/zmkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27ADEEA850
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093029363.27625.10188655929934675593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edaff48c1dfe5f78e89f62d9976cdfb5fbc71ac1f652155e8108d6ad160e725
Date: Thu, 12 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770930293
