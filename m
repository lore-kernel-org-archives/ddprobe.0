Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459081E4AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745712594; cv=none; b=Pg38kTKHC+PMI8O10QSJKgtKrXmeZ7J6gp4+DZiwzQe7pbLC0YCFgL2Dvl3N7zE7v7HuRSPBF0zw0XLpLpxHTqcfzINv3iTzykJTuNqJJObnNftxLq6BBgQ7z9iTfX6vi0agmJ9fqWe0alt5Y+ybn1qG016uw/65BzZ7YTcGDf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745712594; c=relaxed/simple;
	bh=OZGEAoLDtdOuoYpVcAdqYp8mXl6XePaqXMpacMqvIbs=;
	h=To:Subject:From:Message-Id:Date; b=tF1uavf7RCSGnhQ6bv3pKPscQwC6U8Cx6ySRS3L4pNdRPtMHIBPFdKxAaarBxc7VoF9kPtZ8yN8aPvnvyFtxGVO2wmvjCK9hWWSfNaYOFqrqhTdZYsIT87LlUHTA/4dMEr3JErqJJ2fSiSb9s6jPg2SdUqb3bBKZ6XF3ze6twmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mco7cBpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mco7cBpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7063C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745712593;
	bh=OZGEAoLDtdOuoYpVcAdqYp8mXl6XePaqXMpacMqvIbs=;
	h=To:Subject:From:Date:From;
	b=Mco7cBpeKIi7w6M21Wxhx4WuTQbYL+3OOppNAWr5v7SVIJ0+GSJGymiN5pysWXAba
	 Jx8pwQ3tdXb7UmD7/WUnL8I5wHsqTalTkNCJArVr72ZagZY74I92TJ7GgopmqMOHnQ
	 yFEQULGYpngfVu9DTf0vq1ppb+c7uYhN+q/DuBe53VAvfqc14JczphNAcbOe22IgvJ
	 jrwRhYwaSjhl13khRwLP97DWxiBv/m7kNkQfZfwcByKELF0IzrEHqnKYe3JkLSPvQb
	 OYeOHOVWdsWJPmQfB//V08+Dsns1cxZCURvJijc4+GfzJul7jpEJ4mq3gn8uE05ZKy
	 FpsMH12EXcqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D2C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571259358.10583.3826914003173796229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d9c499e3514fccc6550ebdc02e88759bf9fc29e226ebd3d33607194b704b1
Date: Sun, 27 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745712593
