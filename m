Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C75CEACD
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750235994; cv=none; b=DU+IVzb8uRe6VsRjrdE5drcZ5O+zEHXuWAwaomQKZS0vILfgF/FNRluIgzqy2+4Y4UYOE3fVe8a0BaskWNANVQcYj/gDjEFxt/i4QFNve6ENkvmctT5kgiFQmPZlMDqaksr/cvH527qcIphIsZ02S9hvutY7bPc20TnS5qUWKfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750235994; c=relaxed/simple;
	bh=VHfLhZszwtG5AH58hco1z1UYEMpJi1/6WQ4vIUie4Yk=;
	h=To:Subject:From:Message-Id:Date; b=LGkNBD8CF4wD6zODmxw12/lPhMXZNBrAplFGk09knDZAbC2y1eNvSBNSHTIu0A4nZmdkfajClBRJLkDdavYwzdHyqB8Gqt7UvhYJUYzulig4sckan7i6jtZTo7ROxLvTqU36aVAvTfmxcRlxQcE/V++UWeFcTYsffUQSbCBY470=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHjkAZ+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHjkAZ+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F3AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750235993;
	bh=VHfLhZszwtG5AH58hco1z1UYEMpJi1/6WQ4vIUie4Yk=;
	h=To:Subject:From:Date:From;
	b=UHjkAZ+FTubzpr9nV/RlSvi65mTG4VAXoo0HBLSYEisAAaopa0OjVEvywtVL2g3bG
	 dlo8drQ2Q79RU6+0PklbsD6ZP9SXminjs0C10/vorcw+g7wN1HUsF4Pz8U7V1ValbH
	 h1hJJPYt3lOOBBQUQNR19YV8FmKhqU9sBNH6RJyjvai82XDEZ4Zt6VaH4rLbzcHvQ/
	 Nkoo8PTjxbkpQvsvwY5rfBHGjiqGGfmIiBs/iVEdMWXCiOmiTrk7+qFIqvwGjPetQb
	 vYbbdebrEgm3EuBrX3XEb6c9uUTg5D1sDT/Hg6FjhVv+fKr2Kmg9gR1YBrPHx6MSTt
	 xIqqVlUJxsbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300BC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023599359.537.8950540733100462921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fd2137dbf55db74788545621a85bd50ad54b6c72632d1d8eb64f68006ad059
Date: Wed, 18 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750235993
