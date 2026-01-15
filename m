Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC9421ABB1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768439034; cv=none; b=NkB1RYwqdlPWAp2ugvdm95XvZEE94Ek3HrOxj6DZcg3FG1iEn/bpyRAYbOKfLjLNOLI2III03EpLgfpd/0/mSLt+worgEL4N0eimeNkbqKQ4l0YMz/41LS7AhHxpY94paDm3FSJHCzYM6tvJeDlTYz48noMZ3y60ChvnmXiNBPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768439034; c=relaxed/simple;
	bh=J4GhMEPEquVX20R+u4+0wjv8rC9mn4PXcxvQZH6s0rU=;
	h=To:Subject:From:Message-Id:Date; b=GsiMTJJJF0fOxBLy1VIbif/vprNMTz1PBl+Oy5ZP1ZnWA+JNHh72Xgcsnh8fFokVKgo7gDQcTNNEEsjXB9hJ26t6zC+LrYBRp+RO3N3qVZQq18KFO6QCYODa4OypMay0ySVs6fTKuxjTz0hgxN/hmz66pvJvHgGXg0acQ7JBrxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzOWfACb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzOWfACb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768439033;
	bh=J4GhMEPEquVX20R+u4+0wjv8rC9mn4PXcxvQZH6s0rU=;
	h=To:Subject:From:Date:From;
	b=lzOWfACbAk2BZDn0LgfIAMbU40rSnueXqFsOA/bBwdLz5HAXxLOFK+hZdNhXwHYjv
	 2bInApokr308hjRBDm+EbBg53ObVkK3nVIp7BCgVrkdyR6JVfLW/Ts0OHn45z5hzY7
	 htt95hHDJk5pVDOH5Nz9+XS5dG8vu0BGXqD+wnAjsNd+WxcBfqsC/Cp0WNz+ZhbAzB
	 qKVLolPG/B5x6maKP+IrdUQDGZfAViJyCNscHrLTldQeK/yLA8t6lBE6vmWwbmTS6k
	 H4jcDpD5giwOWLDXh0/vRKFShr2mOCHjpXw4xFu6MC6YXRiHMDhLjsNFlwAorI7C7z
	 y0erq07tRB0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF5D3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843903359.3000.12457630209009733749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba0b394ac1f545e2fb71e7957e57a3b9d1d56c4abad47c3d399632d5aa8b220
Date: Thu, 15 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768439033
