Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F66E292912
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748794; cv=none; b=s8/bOYwnS9CGoqnLo9zNkEgcNeqNXKqxO7VJy+v8A62pL8Qrq9RsFUsM13LXj1M2nOk+FtXyuFTWRPEBVinKDEY8vscLnvNfIfn3CqJAHCJvZPNoy9wzhNfGofzFFNPp0z/2mbndWMKWJmv65y90nKRvprzrWKSJZAIlxeBqAcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748794; c=relaxed/simple;
	bh=QnCx5ub4+I5v1ircSHQdavHWl29zN7Ld4EOhxhV/rsE=;
	h=To:Subject:From:Message-Id:Date; b=VEjJ5/GeZk6WndTDgx2PWn5MkL0RFO4ufq5XeGVRZQc6ffCgYZCTJPtPLi53mQe3Lule3RbjFA6Slw4u58/UQNIqgKKTeRE+wi8wdKuqJ8w4/numVn5yD7Oa5UFlY4QAGtNW8f2utf4UECmeOd0EZgxPzSl5trz+GEsYc5/2Iy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kox5J/Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kox5J/Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752748793;
	bh=QnCx5ub4+I5v1ircSHQdavHWl29zN7Ld4EOhxhV/rsE=;
	h=To:Subject:From:Date:From;
	b=Kox5J/BhxeNzSau7Dwyw6IFOMC8XoURHazDBBh8sF3cTkih/Rc8lBFNMMNtia5MM4
	 JbVD21OteTksMN+X2ZPKsaJaIqqhUY3olq1M1ohWQxe0Gw7gCrcTkr/SuyWDwdqgM6
	 Ft8/sJ6pGwiCxZeNenY4fc1uWUuWVsT9HNoy8eIyNDDKVIDRp0Yws+UoloedbJgelI
	 7djV+xtagt0/NiUlsfvaku6Eesxv/Y82fW8w+4L+Ar1qIEknyj8matv8b57u9FG5hf
	 ecTrlm9FEIhEPj7EbO4Oj2uADVRw5WyKIOt2MluO3UuA7AxS7VguGmlyuPkWFeWlKK
	 tuc0A5JQZ190A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3FC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274879357.32088.1448994024051548207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203981b447b7451550ed8a9086285b01cdc9ebf7806b6e970e8d7149bb6df83a
Date: Thu, 17 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752748793
