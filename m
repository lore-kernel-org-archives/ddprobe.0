Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0480517C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712462897; cv=none; b=UhdPqwa1PttZzdb6zoLxbcnxejYsLAFk9KvksKLhrJTmtQCS7uydewHqWWur/Y23QSgU3AV+f+tZPiv2u8eDiDkX5wWh32DuemuILOED44QKhPsdGOt9mJhH8obc0wV1t4CCGmuzXwf9SVeynZuAjJ4iHg5dwoQMHG9ObcCtkZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712462897; c=relaxed/simple;
	bh=Q7jSJGQjAIcQsjkVqlpgTSv34UeN5Aqd+p9cdwUxl64=;
	h=To:Subject:From:Message-Id:Date; b=T2RBHd9Hxb5fysTZ46dbVIVM4Ql9Vk4lgAw6gzQ+tzh6o/RODDISN/XvVMUVUf3RxFB4tczSMINExm0RRxTb81bWTl7SIBPvTRlgl5Du0uoYuGExkG9eq29vgelWHZXPiFsfkpsri5gww7SSKmbxOU0OyNKgfF9MhCkgkByIPWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIC72hdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIC72hdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CEDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712462896;
	bh=Q7jSJGQjAIcQsjkVqlpgTSv34UeN5Aqd+p9cdwUxl64=;
	h=To:Subject:From:Date:From;
	b=dIC72hdbkzfmO4T2m9FTecWLcrsIyxWXhxGTC/TZz3TVEnXBPW6Dxg5rZsUaiN2GV
	 1CBXgcumdqhsXbNsyikhOshbYjYUfG4u2yVUj4woaBPvVPl6siT7PIGtrGDreXs8CI
	 DOIaQqz8KkWSfFphyrnjtZgj/Xu2fEXPneqdxnPhDeKdrDAPlfga5B7pv+dm5AeQ9V
	 AdMVGqKw7NwrvRbhSGVHg50KuwA+jmsOXHUUrDA0huFFKZT/Uv/JgtHEg0dMK8me1G
	 8yz8oe8pAF1xx+esHImJhqPTyh9gGJpcNQQZK6hgzjp35IpNpEk8t1LfiuDEiTnOOq
	 EuEsNcULojeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F644C3A59D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171246289637.8729.4257063550383924057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcc5c0099f5bd381a217a57678f754ddd3c618efd7f499c15b82a4743df656a
Date: Sun, 07 Apr 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712462896
