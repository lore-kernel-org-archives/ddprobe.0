Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2883A4F36
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768583034; cv=none; b=MWKveXTj9PhNxp5CQcbdRTnLhY7POaNDcUEFu6Knpm1SBzDuYi3iEdo1iFP08bTIFa2aVd9EUQpmsmswZhs6r2px1e+YuvzBU6bmKmTb3EG2OyjJ4pO3EcpGACqpvMJ5FgCWWDodSqGNecZsKDM03Bgi5byppc0oEGWxlAA5j1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768583034; c=relaxed/simple;
	bh=Obc1Xdlabk1PAh5HVbCoszXpOtsgusM0bcsllJ2BfZs=;
	h=To:Subject:From:Message-Id:Date; b=FuT5KGgSGiyC3m1tj0Y2noxaic1A+dG/sd+fFSuS+t3olO5pWqR4xOu+9TltDDaPMMgHSrFjPfL8ZaBW/FNjqLKDUtIW6LROfPqd78XsC0fQbu/GAolNmko/CKcO9DUxKZTGPvL2nwqGm1gx52jnKg6AntNIU1AwGCZl0owGT0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIWQkTbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIWQkTbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768583033;
	bh=Obc1Xdlabk1PAh5HVbCoszXpOtsgusM0bcsllJ2BfZs=;
	h=To:Subject:From:Date:From;
	b=PIWQkTbG3UYsV03NIH9Pg3XhPxf3Evh87KV45zmbXF0+ox/KFtq2AeffVf2rI3jzv
	 vx0n6f7j4uJdj12wc80HG5ACaczhS5avwFzeddGh4h4LlyZaxJi8D7zt0l4qXazk/5
	 /WXGBE79h1/+krxWOA9ZH+ZlUhcaAFQimtur6OlnmbtXQygQ8oTERMKQDzTPb2a7yQ
	 qBPiP+lof9XSXh0cS7Kg3QQ3hpNcmAwe4yDmFNVLXVn3/csOuC8ZaD/asUS426twrQ
	 3tLPv6Bn2X2bhuam5Mnd/7WBOAPMav5sijuJsQer3s7Na4Qe+8nzoO5TeGaLxb57lg
	 P2oVDZe2H+/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E69C982DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858303358.32346.6046375561938401520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2c5c78205468b32c5833bcfdf9ad3883ed1c51d717a3159fa90c9a133348ae
Date: Fri, 16 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768583033
