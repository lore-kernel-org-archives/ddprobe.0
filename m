Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925093D903B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788468036; cv=none; b=of4treJtCt3yN3xlaPFLu9MmAbhTylotKwl5H8fLUwDoW1GYAPnr8/JON8offsQxUASU1K3pXbSl2fnTsV2HfuFUrKRlBbBN9uMEccrVaPQZYBz9Dr6N+KSSzZRVRBcmTem+QRg3zfKmZ+hfu8BJOGtT12Q2Gvqhw1WqjZHQfdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788468036; c=relaxed/simple;
	bh=Qte83L9zf0XZZRr8XvM7J/qSnH/xTwAfg266+JXzV5Y=;
	h=To:Subject:From:Message-Id:Date; b=VE7iWc6mC3W3LoXg1QiPB7z1/gZG9F8Kh6jrZ54AYhrBOd27Sw95ub6hTwalLdjuaLtGtiHxGwCmN+hoKCKdvg8o9OVfZtFwqJP0pNibybwnDLu6TLVW7nURwWbZ7XHDue/sfj8nnAcEGyD/UHlabrAK+YPz1dQZD0ocafptzzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjC0nNBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjC0nNBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06D0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788468033;
	bh=Qte83L9zf0XZZRr8XvM7J/qSnH/xTwAfg266+JXzV5Y=;
	h=To:Subject:From:Date:From;
	b=GjC0nNBEba9fH2QZwwmi3j31sLJ1ghko6y/fNzvVAKdliQSRtHEYFIx+mmWaoaUb4
	 cGPNjqziWz1njrBjd4JCs5OXPSv1ZHPg53UorsplvwD01A/da3qxuaYLZhgrw3aiVW
	 PjLA3K7NK6LM+CDkH9Iacma58k+8JpCSE9jMryIVp6IDAPbAAd28t4UgPoIY8u/LDv
	 JFyPjYEVU6oFInG7Lea91NQwAVa6cETVZqPKgwA1KmuxGtZvkZ5IZV2GcrCYrqWuKI
	 kYgYzXbeSbwnhZzka2DApH7byKVrlhXwg/dL9kNEwu+Sh4wD0sj23lQxU7dlCmgV65
	 S/IGBSFIJ8sRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C4C624DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846803369.11001.11221999587430454561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3024067793f1848221d8a556eef0af43ec18a9af52e05567f5715f97fe3405bc
Date: Thu, 03 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788468033
