Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1196D33B6D4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772524494; cv=none; b=TQInm6D1fmQd2ZWeYdYaVnTCw07dOBZf62ktde5G60QZ9zZ6FkR7VN2eRSSSt3pZ6nQJrs0ghlO00JrRfUutQRa/ueUSOIo6m6OPwq4TzXVqgpLjoN6vmjYPlCArsDC+G5wfxUmsA1/qF2y7k5RC/tefrUWdPVzazmJXOyFzfNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772524494; c=relaxed/simple;
	bh=pKGpzame/SO0IpFGrhYSpuiZ1zzT8/RCcnLdxnGPFJs=;
	h=To:Subject:From:Message-Id:Date; b=HJcrxZZ0lnhrlW6PiZaDovtuAiekojmFnv6uoP+8L4KaNHQXI7Ohfw/3eEH28BIwm6jTktMaDwdwPVE09WC0+/xkNnrj1a8aQ4D24YzMxMewhQnf06FvLi/P6sQAI6Ygk7ki9wbpgOGqV9TvIApay1ehPtX1vHtOCBvPB3W9NCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/ff5F6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/ff5F6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA292C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772524493;
	bh=pKGpzame/SO0IpFGrhYSpuiZ1zzT8/RCcnLdxnGPFJs=;
	h=To:Subject:From:Date:From;
	b=T/ff5F6B/nX5gofwDyO4kXcD015VANBW/eZ/L5SJUbVp+gZu8eRH2fx0VOuNdvZi2
	 gZP9BLJQDKOOIkpVRj0sIgvzAthVGQ1CorYCXiRmn0YxDMk3/yS+bfOsUmyy8IeUMD
	 FI5UvmDWLZxS6V4KT9ld8L4ZyvcFNJoQ4CoMFlL0x5fkq1abvYMVsX/ZMolLF82Fu+
	 lZNU90L7Vcr4CK/zcORVeuWhMuGzZ6BKmKrL+3wAwpnNudll9tVvvMdpw/eJ8vG5Ie
	 CUWLUIhMELZjxjHg2BS90KJFfhxIPIUHLhHYuxjIMe8L3BOgaz4qVnBBtk0PRKE6od
	 K6YlRRAkrX3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD1E67A92
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252449359.17901.1589437854967330975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7e4ecd0dfa34ca188b00234abe5e5b1e41bf014de314d3c847ede7defa4b65
Date: Tue, 03 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772524493
