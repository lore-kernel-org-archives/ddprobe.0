Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034DC64A9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712579297; cv=none; b=MrH1+p7whh7FN6on5nNETrJSDuTEUs3fUvWJehqYPcnIWR5vxLq2TVvJyjME4u+JBHkBtl8hZOGpKmsk4CO7QgcNGEFAJLHVnOzhiSZQBlNzS4ehIiRw4WqkKYxwjDr97Cwiq8stRSQUaPT1KqywPcqLSoq78IqaLbyVihR5vuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712579297; c=relaxed/simple;
	bh=9fn6vhHFq93OIk24ZL85E+HO9S/2CbSoFIhvX5I5PIs=;
	h=To:Subject:From:Message-Id:Date; b=E7EfCkb3+tNBYmkH0JyjZIS4xAPJyh2iPQ/hM275F/bZvoTPlYn/HocrM6N0WJG27YTeRna1Bnz75OocYY/5hHjQNhYZEQ6i19D9r+uYZTTt1LVyL0T2ZNnVhFhEzK8X01pzlz+zADLztffGYsX4mthF4CqABm1RF14BTXhZHIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuMOxfCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuMOxfCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB19C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712579296;
	bh=9fn6vhHFq93OIk24ZL85E+HO9S/2CbSoFIhvX5I5PIs=;
	h=To:Subject:From:Date:From;
	b=TuMOxfCzKJL1yu2Sz8mKrpyvpxtW5Znzcb3inT0vpXII9/gsvx0spFZZP9oGKGFiK
	 kYd8TDoZ1b8uuKgt76lwlujuVBqa2YJHH32Y9UOAtGp875ujurcriC2bTFpQRYg1s3
	 zqmBq9sc6o2yEVCxbiJCXAtOj/jUgQXxqKdycuZGJigwYjYuQD7wLpHcIoPPzdJ3eq
	 NEwqXLu7Q0h6HglLR+2gmo/oy4bna8ZnosjW35hmM3EB5AaWNVqalwfjig0ny6zcBN
	 8b9WUXLRWUjWPI4woOSyh+CiuRKyXOZzfPgEj79mawPxoPb11V5xjxjILtr8K5jmHJ
	 6+xrztkOkG3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C27ACD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171257929636.14637.14978926718797875398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639783b23644773fdcd56bb967c514797501228b884f87c6e680348315836361
Date: Mon, 08 Apr 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712579296
