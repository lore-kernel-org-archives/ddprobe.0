Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D863E25622
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723795553; cv=none; b=uoHPy3D41IBoOaZLtRp3pJpZDaTi6a2K1F3UGa0rcMCx57PF/wKHLX0+lJPL37o4mzLC7afCRH3V0iGetGiHoT4j/vmFMGcXoRsRQwXSdgopb2xK+dnQR3WbsZ8EdfSqaDJZMiFTGFyj5t9cHOtL2n/oAFNAxeCZQlAuC28K53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723795553; c=relaxed/simple;
	bh=oRLpvYJDTlB/Dv1VHH15QpxafSXrGCibBrPJzqALGtA=;
	h=To:Subject:From:Message-Id:Date; b=ayVxZPfq4ws3GtlyX5/9VcrO1cR/Eqpn4QK6sx5mckKSNP/eyHsEbg3q96pfb/DQ5vpL/QmMxoq1KvqvLYX0Un+LlhkSdE57HhKtOS4YpNEJ5t8vmRsFJu6H2r/yyrcgL0GxPZu601jTFX8c8k74j4NNPLiKUe0dNllj0gtyD+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTEWStX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTEWStX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86A1C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723795553;
	bh=oRLpvYJDTlB/Dv1VHH15QpxafSXrGCibBrPJzqALGtA=;
	h=To:Subject:From:Date:From;
	b=RTEWStX+wqiec9GJQ+Jx7F+eVGFrFjKtw41B/ozE56tTp3DpnUVF9lkMlOpuAnBkR
	 0giKlJ8y+rNzGO0ePHZv9EKQufKc8GS9WjW9kWM9eHKqtJsPmSI90t6szfCzGbSJB6
	 5JEW2CQN0AQlmoN7adfX4GcNikYQNNQKO3u0K4+FYq+cBWbCokMPmwEE5L0tuqNsHu
	 e/pT8B+PXbGcTARmYI/3J4c3TL2kUBBqsfL/ZshnnZJseYxP+KzQab5iCtpLv0VBYt
	 x826rnFt0tOjMgL/p+MUGOY2lcareMnBEL4xjqPICgkMbcNSa8IAtwY1wEMuJpuD2+
	 u4wqM7LkHa41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20FAC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172379555365.26250.13045615079592903180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f8c9069817452c0b3664120571c8548c8fabf8ff760560cd5f70b5954239f8
Date: Fri, 16 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723795553
