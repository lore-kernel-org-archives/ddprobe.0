Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1EF3115AE
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789479034; cv=none; b=syvEkVpIxxJhWf+zkqgE/VntZCVRTRunT/NT6D59HgyHKvE3KMGrKuEnvLg7an5CXiw4eMp6K7k2K61KFW9goNo9vEETrVnQUa0qxQA8hx6voDws99qmjSnLHigtXnroylRXacfCNQLrwetTBkePtLtFrTRIdS1tUrBL60wR8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789479034; c=relaxed/simple;
	bh=bxJ033+pCXgVJqAO2TIRaTDuihQynkmu0NQ8Hl0tlZQ=;
	h=To:Subject:From:Message-Id:Date; b=WEBctIk0R05nebD+Gfrukkfy2VJ2bH4pysa6z2cg+msWunSVVzwlRwr5yipC9EVoesb9C24NDgi7I1H/VW3jjqIbKF3OwUsgwDrQy7WU27tGc0eszIFTFrRmXdKzHzLdzBcz/lsUcSBqmoNF/njsQaxMXw7rA+4hs85JPZdFh5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWQ88OIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWQ88OIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC488C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789479033;
	bh=bxJ033+pCXgVJqAO2TIRaTDuihQynkmu0NQ8Hl0tlZQ=;
	h=To:Subject:From:Date:From;
	b=RWQ88OIJ6SZ40BjmI6SJq/AYKiQoje8UlHMZYa7uQRTLEmensV08D9VU0wX1ktB6e
	 AgZ+M6u1NlvDFh7Wcye/wIYN/n5zlojJrf9Ihija+ShmUpyXx+9Dr+TwfOBP6FP/oZ
	 JNJLZYqYGR0CoSmNjkiimQG71p58IoTg4fh7W6pShUWbbjE8j459tqL/+dfKk4Y7De
	 J+BXRW1s3SB0YMjaeHj/Rp85woWu9/RJ5rzlD96opZ6ENzHfhT2YN3OxDyl9TY4Rga
	 LBiAe1SIdqLNg/MXLyQ3wEbowOyfPQ9/GBLJjdK0gmqAuvUgebEtplVCBy5crEjmmQ
	 qIIMQ7rcNd5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A978BC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947903368.27564.3487258411239999734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f511dbfe2e9b37ca847d9a3bab5fd4545a94fc4e8e6e8dfbea9707285d8578a2
Date: Tue, 15 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789479033
