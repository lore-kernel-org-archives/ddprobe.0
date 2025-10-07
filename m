Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1002D19755B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759849194; cv=none; b=SW3Yz/A84OGlymaJ960c6fw/YrkLf0qOr7hWfxf/Ab2Al815rlCrb5RJPcTjIALHu5e3+PGQOxWs0SYcbLeSVEzYmxOeHTLfXclVR7hKgJEovd/tBjuGS4ej2YrW3NRzQiZL4qq8uigDLVd9+wg1bIJUsfm66OhIlcHHa+hTJNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759849194; c=relaxed/simple;
	bh=y3gNJ0DNAANTCqYINQJeL/4763E4B+10lEZFVJSH7Ic=;
	h=To:Subject:From:Message-Id:Date; b=QWwX4mgmNPZmzStemnq2xSbUA8RD6ctNHFy2I4OqKW8TP0wqFCCd9WS5FVfSn1qyN/aHOe5ekj2Om4UGF5y9FFdgeqtsTMmrl9hcnLO1mRxxyKY6EwAozdBTiZ2xD8Gz/UyC5GTIU84IZOyaNHOl1y1jYztRCCfHCIETH+wiaU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3fysduK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3fysduK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759849193;
	bh=y3gNJ0DNAANTCqYINQJeL/4763E4B+10lEZFVJSH7Ic=;
	h=To:Subject:From:Date:From;
	b=T3fysduKV+YlCQm6lpKOWqJ06ZJxpdPxDeM8s1b+Ad7bB4rXBon+bVjecFJ1H8tLN
	 0pJAmalUnaL7SUFygQ7480Z2dHs6jQSuI1513cpt9zoemxwDusq6+c5tNoXZZ0TJZf
	 ftRlYumEs0WkhTZRtM0Xux5sZZA/6VhxDyBgJzYNEszm2re/BfpSYGgeCQKrwWivQA
	 UsPfZpaTWCWQq1Q4K+fqHT2ayZCpjfxjadMPugLN8SxXVcDB3T8G1j01W/U/FdZdvv
	 Uk02scGF3r7sn6o4Pksm9W7Yiw4995gwO6KXcoY6gUKeDRp0hF+e3vLlhUXrGuP1OX
	 y0/twzb8Wwn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8DCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984919359.14621.14807658699962546080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd40f379913d41edc83ff915e301c3839d5608798a06e0ff162d5142d3d7bc7c
Date: Tue, 07 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759849193
