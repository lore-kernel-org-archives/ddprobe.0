Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186237DE84
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662874; cv=none; b=UAp5heo/tdX6a9FSKvHfxnFu+YbDEsH5J7xUVdZKeHtUZlWN5gJI2fJMWkR3dK8aWyd5eYiJgf9E13pWDZWCA8LqMgC4nZ+sr138WV+yXMy1noXlqR14RLsJOAl3Ub8eH4mwONr9vrJBusTfgTkFg7JEs50+kbbBQeUwKxTLCOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662874; c=relaxed/simple;
	bh=G2R6UWnvOeo/8crz2a2d6xYDEYMwbBRFuR7j5Ozq9HQ=;
	h=To:Subject:From:Message-Id:Date; b=qmnyboxzaSH3RcoTcZDdYhtw6fzHmRdwO6emyy+vJA0QsNrBkHI14m/MZNgtYhj7HS7lwXlZg3HuaZaEb0t7GzFzsAJE8mNNB/jrtCKxhv6K3MaSAzqTOOIfV8Vv2DoSlZWWuiZFsoqxTsMsjyyM2ifRG0BhmRmhOSgPAAm/vng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHuzTmdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHuzTmdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BF3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780662873;
	bh=G2R6UWnvOeo/8crz2a2d6xYDEYMwbBRFuR7j5Ozq9HQ=;
	h=To:Subject:From:Date:From;
	b=KHuzTmdugRw2XAzfQiyL4trtcWz5/1lmXNqTWbDqoVIjtLIe+nE3iI/b9Bxga0tpd
	 QrNjX4PakO7NKaQ6AJ9ZHhq374KVYCKNM8PcLIG9iIaEzPlz/5qGGmQZUI0tnCscqU
	 nQ9/nH7kGX9nyWeFTR0icCnehUORKlMMCNo1eLGUK9xapcRlqS3Itj9Qkb5jee79/v
	 fJDUh+8GHrAOPK2EHSjo2VgdonzPy9WsU6L9vwpl3rLj5eMd4LDDC77fbTJZetqalH
	 6go3NGIb09eYU5NT1eUFkvuSs+EoJtxW27Puf481DgwVZwyXQ0djqeenrjZ7ucIpfu
	 ExlYBC9ttldsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE168CD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066287370.31530.38605831767333720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2332c2170857691084d396f1b9902c921a73aee4f93ee1389bb86004888682
Date: Fri, 05 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780662873
