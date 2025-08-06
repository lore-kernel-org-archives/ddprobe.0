Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A9ECA5A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754441394; cv=none; b=G1CJS3AssY/w5dDRS1NfKwOBeClB9sgn7VlRvRdgaesJOEAaBvh80DJhDg9He3OBTEbri7SxzvNe8G41PBqeCew++QumUFfpGXfhGgVsR0DO1a/K5GAb2DrQl2b7oZ3JFsztrN/TnUgDBw2mTvtOSItdDbJ6EVLZRK6Ak/PNnqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754441394; c=relaxed/simple;
	bh=JRh4GDJQw3/oFQOS7c/tU9dtu0WadYu9zFMPi09Tatc=;
	h=To:Subject:From:Message-Id:Date; b=RJJyEmeIHGJ/55HFPumeTpFP+sdarSueX9iEtjNZvbQG1iybKuM5DCs4y5302Q8ptbVoMCzeU3Qh3qp7v6pwoxQ26wxzXSdCDDPvTKpoLH/qLzaDK5okT5wDELuVVQQKq6XxCzvVFfaIe8ZN6JeMtvj6x/p9lH+rpLBt8uNe58E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oxq7PF9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oxq7PF9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754441393;
	bh=JRh4GDJQw3/oFQOS7c/tU9dtu0WadYu9zFMPi09Tatc=;
	h=To:Subject:From:Date:From;
	b=Oxq7PF9rdNOklmRTn95adorpB/hvm3iwOzBzwOjunzCz1/Er/XPzxVG+R56FsvokX
	 sf00mUIPaaMvhBhmJ5iXJkjZzWHaytNpQqu1CKbbqlDcorrkXKaci40tlpfyzTNLMt
	 EzEBicsATx4/Br4nYYqJEyEnIunX5XDcrcAYuzJEDdw2gU80HJyNe30yfDy9Srh5TN
	 oqsTooV4nY0voOLNbs9PBz5ptHZ1FQDuP10HJ70OfTqWgAhhdffTipWnyGZwktyLl5
	 DJ72Oj528CVfP6NsihASzSgEy8+nAH6HA5bxPGHnKLZqtEaofG+8z/M/YdJZg5H6Ln
	 pLKrslR4iOpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92BC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444139357.26795.3539580953447863636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8ad7fe620291bae00da7c4c18cc1eafab1b2d63036687be3b3ca01bb10dac4
Date: Wed, 06 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754441393
