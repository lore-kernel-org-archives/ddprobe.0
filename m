Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432421C3C1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740873534; cv=none; b=Q9kErB1geAIVX5p0ovOMY4bz6JjBzCJnsVr51bxYXhShed2Km4O46t51EX7D2atiJ6F5pc0ybdvxuF83xp29kfjfBCOz+eFJ65VdOeS7sg/yFHZxX5nVyQvcT2R2Vrfd7McXsWqkH72HFPkuBPLnpetQ9eK0nMI4R+zEWhyvO5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740873534; c=relaxed/simple;
	bh=fyyOFLoKPvJIKALIekbdssAujweXmQf0Syyz4QWKn90=;
	h=To:Subject:From:Message-Id:Date; b=EHxkyFsPLYb7uYRL7HPIUFmrkCxHFkCn5UYiD6VrGiMl18JIsnWDyDCqKMtoku8+u5zHxTidc6FDgyWjyRHmLMZLXT6yeZyw3eveE58iUVWgVYoUZ5en06dXtp4+ftJOY7gjIL0ufafr7G+IqDCjnGlMH+qyHFDwhCere+syNvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvrq0lhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvrq0lhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5721C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740873533;
	bh=fyyOFLoKPvJIKALIekbdssAujweXmQf0Syyz4QWKn90=;
	h=To:Subject:From:Date:From;
	b=kvrq0lhuITpMkyXLu/vD5EGFd+HZY11BCfDTMDXiW/UYSMF6rvhpRAg2E9/hNVdDZ
	 G+kozTcCebX2YFqqVct0R45GDX1GDSCYHM6lQB6KSm0zd2A89Sljmkv++QUGOYb5i/
	 59uEx6Ti/Alsrumh35X42VqFz/Q7oaYLcjuH0i1gzuSln6C8B5ee23BAQcEcOxrM1+
	 6TYhecwNO3XFp9XxXH33v5PjNADWsVd/4+tUECKSl4fLVMGOZcHjaixMpLixJJx5t2
	 S4o8wGjJy6eXsQlaWVe1UVGlrSBZtQ922VmVVWUr8Ej2BaBcCvooAsYjWq4OYAv7Y3
	 w2pqOqlwEsdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310DC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087353359.9425.1315687199773983242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d50dea4d02dd41ca600efa8c98dfe9afcdabee83dba6c1c376c47ffe2050cc
Date: Sat, 01 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740873533
