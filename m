Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ECA329C74
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761897594; cv=none; b=Hp8enq4TZotVKUoakJOQtnA+dum5eGOOOglqu5E2RPp3xD/9uEGXpcUp0EsxOmExqAW00XmAZI1NLroN9CLmIOJbGx3x5WbOhFiPXqaMMyHAnyuK3qYDNwj7RtO7hR3NcYFpgQAZ2G5I60tfb+WyEARKFXQmTK9nOS+AT3381fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761897594; c=relaxed/simple;
	bh=w3bt5ZPInlnowqPlbyrBfTm5gjDBG9dfm87DyUm8xf4=;
	h=To:Subject:From:Message-Id:Date; b=jaTpXNcLbvOhpqRsPQNvVIaN+dnEUd7OLLUSyhpX4qRL/+ldpG9mTaqO4U2AvHUWu0zDLPivt5u5q3fn0zoxy2Y3USOJf4ERz/yab2APWPKUI60CoTdezvQ0jClFcOZQqMZRUo6EHGtyHADfcjqFVQ8vmqi1CNZYEd/bFgy4nzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNnjKUec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNnjKUec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD739C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761897593;
	bh=w3bt5ZPInlnowqPlbyrBfTm5gjDBG9dfm87DyUm8xf4=;
	h=To:Subject:From:Date:From;
	b=FNnjKUecj15xvo7rB5wMyCcok7Tjl+ZcB5umEAZ/4lCCB7QvO1hN9uK3JrbIfscfC
	 mIEbURySJD+xb6FKJKio2Muv5bxlB5VRsNnRDlQ0Z1ZKFPQLmYGERztu+Bqf5VuAah
	 O5g5gaihJbBguleEZXEofqOQfQ1yG3Nq5aw9dU0rgxU2plHL0dky7yvjTzVDpy05tg
	 yQBu1gaseypnko2i/gycBIX+kUd/q9gO1Eb+zD6kz0nAjR5NtK3oLcaTE9y3wjygBP
	 ykfPu50e0j6p83bGOC/ha1C9vpAt7/monAxkJUOXudIRK9YHxhGFGWAwMUTF8GTuCz
	 w89Ksn5F1k2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0D8CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189759363.19831.9338589771571723661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8718d6b9161a6dbd710973ca64de12a1b15672b77fdaa2fc883113fce4ba2f
Date: Fri, 31 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761897593
