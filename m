Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507E1C84A5
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599794; cv=none; b=fdj1+O+cWUepI8L3s7w65g5GawfXaKA5kQiSrkdoVgiE0YNPUzr3+2TaXhrmZIchtPUKFaymhiKlp6LJ3efGGVPT2giCMjLOxPHJq1cvawnUO+vAboTxx8X6/du+T+RgDHUeEObRZ9yzaXv/wHxBcLhwRfjKAz8FzPKOcmFkuM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599794; c=relaxed/simple;
	bh=PDTinxPTScjV85J8YepSJPKvZlw8L341UxTTvIiusaY=;
	h=To:Subject:From:Message-Id:Date; b=PEAmXaWXxxqMhWxmx0+x4DQhdxSJhcF5wjL9a1YkahQ6kplXLPSG3B40BKPbL3eq5fhutYbyYBg29B+sOKIM534YnhfhVlOvhla5+Z9HFP3RBin2AS5v9xshghWegDGYksmW5G0jg/d+SSG5NyNsDCgKz4SsLcJb1Q41OAruees=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neDGavMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neDGavMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F321C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748599793;
	bh=PDTinxPTScjV85J8YepSJPKvZlw8L341UxTTvIiusaY=;
	h=To:Subject:From:Date:From;
	b=neDGavMeCccKYJPQfOQq0CvcHR+yrtb1hy7lAUVWvesjQGTpMq91bNfVV2hnONneI
	 ivzQeOCW0m4vew9pLEjNbtp/Vgva9gj4ewaGTiZ+VHltR8O5FjdnR//sc/rXM85ApC
	 mx8IYnFq+9vEi4xQdtDRex5pmN16xnLNtzATTgQ7CgiXXo5joU2+QtRKQqwFlyagn5
	 9rWEqgEI7JtEIvhVEWE1HJjJyJcrFjd7qZuiH2oZWANvhRoXWxvEi1LpbGIjEoikv0
	 7/6XDxLkQfi2ZnxKjd0W17X1s8o33sOOJPXEqu8/w20Of1sxydo12N0FONHwMXeaNF
	 hK0nhrysfOvGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADFC5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859979357.8061.6069214017972958431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a48e8579539f935138c525f45af9104b5e5932f085ce46ca55aa42a7aebea3a
Date: Fri, 30 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748599793
