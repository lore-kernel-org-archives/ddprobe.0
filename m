Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B7255239
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707994; cv=none; b=OHkxhVsYbEsUqgo+L5by7CZvvOZloYJF/1AS4Q+Mh36+T532QyyJdPw4E/bgku6JFm/dQIvZBNiYjowaeqBhgO3Wyu8ttvJKX0/u8413CAiU9Y+wk+L4hHwTAbzUa8PROBgj9Plgbu5JLFvwTGFyOGGMHWR/QWkha3TeYYudYQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707994; c=relaxed/simple;
	bh=enH7evruzWLUVx2yEbvPWbUD7ojzwoWDBBxNdryTI20=;
	h=To:Subject:From:Message-Id:Date; b=BNpc05AVcKYsLrDXeexxmsJKx0o7uqzxCnn7al0xj+cz8PE/bc4GCKaZPp9YDWZ88fD3qIQL5Xh+nTWyxgjTAfO89kD75Wb+9wkihJGLqTELdRzt8yx6S5FQv3CZgNHTXhy6M4LKanMv4/GFy+plGti9Uw6QcvFm0OjE6eiFU/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKVLGrJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKVLGrJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E0C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743707993;
	bh=enH7evruzWLUVx2yEbvPWbUD7ojzwoWDBBxNdryTI20=;
	h=To:Subject:From:Date:From;
	b=sKVLGrJeoeWF9KwO1NJ7CZfVjkG6XtcLd6TPZ+o8rYzy5M0Thmb4HFG2KvCmtOfYu
	 sSwUSoRtWVqSyLoUQBeP+d4yP9Ps9BTOP6JCbPVmqxOv6cL3XY2JsgsJQMC5+01PuS
	 OrRTcHKJG58GvUOBygu1FdSatIW7Cr+M1P7NZYQXnTVjcglu5EBYxdkR1jEnHAr0mB
	 db7efKD8l6KesLg4iQJyYYf1Jm047SCvVQQPhf1kexBvYL8oDnvzv0blhpLIN11Ll1
	 qQ+2m7+uIvv8DyMuhfVqKEy8fMplpDE2oebqV8+EhkS+QG6U8RFDWgT/l3AncHim9a
	 t6g86kcdHiKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97175C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370799360.17369.7713731762595908618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e94319489101563549dcb59d299bc42dbcd9bcdf2a48d5545512177803e2ec
Date: Thu, 03 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743707993
