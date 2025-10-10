Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B524676A
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760091594; cv=none; b=nh4qNR/jO2nm2+2MaLZC2BZ1AXpXq5xgRi7j7gwFbHTNKoAJ3V14xSk6x/CcYWLhsUOBV6fpXv9jQvz1chgr8UV8Tf4S0bZxdHYF9UCskjyJExXhIx0D0ZnBdKlBOAFg5sY2zeW7GYwWqDXUFum8lEu4iqa4Rx/1g/m7tpSWjWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760091594; c=relaxed/simple;
	bh=TMtQApmT8lZbvKJLS7hLPdJ0+vY1QiBp/RwcVvl/PSk=;
	h=To:Subject:From:Message-Id:Date; b=UHkUP/nuhgOnWMCd8r2NDJCkDgsM+TTbBQw37tY5wD55qAH/wZ/6zq59gmrOwatGBB5bhcgO7JV8Ykes1eb6iR3J9oA9AdVUdfUcuxh9jFtzm4COc4rsRazNpgsllUhxIyn0wGSzTLpm4tgyWvLF/k/6iTJs/geq/SbfX5/UKpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezDMiTHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezDMiTHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B75C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760091593;
	bh=TMtQApmT8lZbvKJLS7hLPdJ0+vY1QiBp/RwcVvl/PSk=;
	h=To:Subject:From:Date:From;
	b=ezDMiTHdcfRxp4fcF0Gzr8ZuXtI6gCvoD2jgn8udfKHwt4vOMshzTP7Dp7yLL1gNY
	 FeRbwAiT83NsadJWDjCCBn6zLHDo6oMEczEPYkOyMucrL/1qLQ50f7aAp4uwsC5VR4
	 6MJg/MZHqOzN8PzNMrRIf/7aqo5GTwyeGdtSdRuU7PKiUx7dRxBZXhvmkrLrro0boY
	 mF9T0lDVDU9HmxK7EKsIydQQwH/6gu4V07iTgOeFeUqiKxKMo90IosiGHtiKASjqTk
	 u6DpKR0OJCA9Y3m2HezeiEBqhQbOLmkjnQpoFekEnlKSrRgYgNuXSQBvOGf+YFm7/w
	 Mu3ipsHMOvkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4DCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009159357.7806.2614569296181838503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad09c85db83846f6ee91deb8664cc3f6825a8b9017ce964081829749a93de24
Date: Fri, 10 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760091593
