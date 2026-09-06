Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5140D213254
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788659434; cv=none; b=pJ+HLLPtuUx6X1mE8ty5+MFfGxesk5aiorx/5yZvAkykR+Wf003LFktHDsYIZgMDQZxY5glWonoX1ybmP/C3HBgk+iTVHXzMCAJL/PC9+24agx40BJ1w8hIKHOh08I9qtZouHKk2aE7RBcOHGD7tMQdDDzAk8cE+7I9OucEpQtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788659434; c=relaxed/simple;
	bh=/sz+I+F38YQDUJMuU6I7DWJxLPl31NgwYfs/T3kCo38=;
	h=To:Subject:From:Message-Id:Date; b=TUrX9Q/A08D9fd95Qyo79lsZSC9X7vNMUIsK5LTJTPl6T5qct/g+0cW7a1nLHDYWIqUUIG33dYEbvKD+dmjutL378ji//oZnVIv146lOte3frr0z1NwMCSzHGWUAdjANCDyOf5ityhfPs1IxQ+E/sdBz4iBI3/2TOIyIOclaTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NapHql/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NapHql/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB74C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788659433;
	bh=/sz+I+F38YQDUJMuU6I7DWJxLPl31NgwYfs/T3kCo38=;
	h=To:Subject:From:Date:From;
	b=NapHql/aq2ToKvID/Rjq6RfNeK2iW+srhrz7sB0BD/wdaKtwxUfYyFhRh/fYRhJ0B
	 MimJOj5MQqdafYeXPtnCxpqg/1+iZCziFjDD4zqmIhpbuwoA91uPDTQyVjyBxP2Iua
	 bkvTFy7j/TTnj7SEfsLQsU32sZmQ1RWjKPNeg3qTtaLze5bO99vrRK+oNsnGN2EQ5A
	 UIqCix3Q5HlWFF5LpCmjJKGPofl5RD7qFE5cTvpdrP7kLR/poZamNWE/g8aCLzwHAy
	 CRQnn6MyrzzNHU+nPYESbcQsa1N72aQYVjA0frxdohfNP6Moi5nq0mBgCFM4WMIRGp
	 xTpIoBA2HvPSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE94C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865943369.32278.16390339277083871478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff85c03b4aade6e4da5386743f175646365400823e94fa02271be63acb2f09e2
Date: Sun, 06 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788659433
