Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FB6DCE1
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779073234; cv=none; b=u2EoHKEPfE8+AwNeE2jHMhPk+oUglxHiZCV/eaCM0UC1D3WploEScW7BzOAsiu/iW8UK3DMOlbnxsUbZV1lXrUbNE9VaIaVXP4fQ835KOh/n7KLUENiu8daoBShFOlYEfQVLWTotgKXXmcUAe7VzosIF0AWSTu2Q7/iqeHHNQ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779073234; c=relaxed/simple;
	bh=f2OPH4c0O8y1f2yYqfeKMzAIryR+VWls5LNgqeo3DsU=;
	h=To:Subject:From:Message-Id:Date; b=sFllpSuNxhTxueuZ3aEpkpf6u7J9v2Lsze1g0il/E2YqO2baRgHEWkq8R173kPyzFKIZmVtGz5sB4yq4zES4Kr7rewM1KQBeseWhSOTqjnROzzn+tNFFJjN2Pbldm4u2nmih8bwT+qQXvHIhnj+vWK+55FX4p8RvrGT8cCTWeuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4v5+eJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4v5+eJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E7AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779073233;
	bh=f2OPH4c0O8y1f2yYqfeKMzAIryR+VWls5LNgqeo3DsU=;
	h=To:Subject:From:Date:From;
	b=X4v5+eJJhbQH8m7f0WXmvODpXABP0aPwoXNWg2BV7+vlfAzk5EwXRZMWTbSadQzHg
	 Lv1NpyXVtBfq3BZ388tj6wOrBwE7y4ZPpeX/I/PqK0QOL4cmJd4t+6bS38Jk6d6WJ3
	 qtoQqoW8x0nJJIqYe+rp1Wyg66j6sCjVddsXWITiJ2jVY8QURrgqQCfhNw43Ncagwa
	 YiHvqgUTRFw2x9a55KyMEVcvhEK6vELywKv2QOB1A6rosiLIXQlrKdS3PLzbUkEd3C
	 mBp02ef4+9T5qBd9HRDOyrl7d2Dk/1wJlGS86ZWiYfXvUD+xw2FuOWrHKGOJilehlt
	 h3Ee23bNhP6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08EECD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907323371.28839.5868353936561676231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58d0eb0da56a836c2bf1e1345db5d4a41a8ac739e2a5a085bbb2bdb0a7a002f
Date: Mon, 18 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779073233
