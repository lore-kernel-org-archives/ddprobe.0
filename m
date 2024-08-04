Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CB09461
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722785754; cv=none; b=Ua8nrYA9JPBHx5GgO/ihkD2OgJkE3/1yG1YFF2A8JVYUsGJp0cH8B+yi3LjwLGl7sLW4cqohu2TsBpnMU+2PJEDbdm38WA/n5e4M3QDMRDDqPgsUl2y25HHecQLNPXzcjdou4+nqYURDKsBjzQmk08qMB+WNCe4i/O6vI0EQW7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722785754; c=relaxed/simple;
	bh=RUP6yotAppPYIGpoJwDNDXZCe2suewgdoLCQsbHJXEs=;
	h=To:Subject:From:Message-Id:Date; b=tG7CphU+zi+A9agB41Cc908dLZY7Nbwa2iMdVL7bzleutjViiXc8hG5XxDQxFmG3s9kKmB8ymWpk59LLY19H50bVsk372E1ik0/hYUBJF6Zvsw5aWwkbmiKfFPncqUYP8UCUBIw97+0uMzrbSDtSAEVNj6ChDz+ugcNdZ0RyTSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkIMRAcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkIMRAcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF875C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722785753;
	bh=RUP6yotAppPYIGpoJwDNDXZCe2suewgdoLCQsbHJXEs=;
	h=To:Subject:From:Date:From;
	b=pkIMRAcuw6CDJzJoUQnVd7Y7UU7ocNvlyNYmJfTozmmLf0Rhg5fg4cbaP0k9GAAmj
	 8p7TbWt81UYA7qnYBX1Wz4otcsQswF1H2Bl6hv5AHcGbyJE0eOBg5e1nu/PBoZ8hFa
	 60/6ztBurxrONpRWFIafF09xrRAzQuerGq0JeVSFpCfGR48npO4mVEhgDDPfCMl88e
	 Gy45kzVXNc4X+F5068EZ7XN7wl0qZrVl+b+ghX1+tdjsaXQl+82tfKVCoC6r/9eiOT
	 pkwu+1dK8AP6wqhagFyRkQ+5vT/GpL1PIWtPgDRDo4RimwQ5FdS4hcBQ+zpTYD4WW5
	 41J7cuif3f8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7B2C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278575361.6524.519607200726646271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d0d8f0f27f8db041a9b1867cd2b062141e070e4136070809456d69eb40f501
Date: Sun, 04 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722785753
