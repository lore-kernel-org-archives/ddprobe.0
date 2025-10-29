Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22394254AE1
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744594; cv=none; b=GuFJ7Q6Oh/I+YkhpeO/W3cOt9itNwKGMa1QoT0sClTi4HC3s4/FDgul0nTN/tGffdHQY8I7g9CQU0H4sie/NAy5bE0mNv92JlpfsP8tUFmAoBBcilEzwEJTpx8mToTtzAZ2di9ttvQRjSSPZPDOXVfwQgeyfwxRDUCceE/EfMhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744594; c=relaxed/simple;
	bh=+34aV9/z+xH51y5QvmIJg2ASlRlv5In43U/Qpx86EKY=;
	h=To:Subject:From:Message-Id:Date; b=j0j7IrkFy9mLz6Ps0wcMHwAB/+3UFFG7dzKfTzXiGDmiapdGTF0VWWiGpZRe1agklxWuvZrjVHOjcBEMytsBNwwIDDQvZEMPgVv/iNv8+mkL7F7blApYHWqhYIECmULVM/JWYDy/cSH2qRZmgE11JJTmwOmNBbD/KrVtzJCaEgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hodXZx10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hodXZx10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D6AC4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761744593;
	bh=+34aV9/z+xH51y5QvmIJg2ASlRlv5In43U/Qpx86EKY=;
	h=To:Subject:From:Date:From;
	b=hodXZx10gYnldyEW2tFDLmsDatmO/Z9urWjvHClwwWbW2HqtYZPV0TalmSIHMzBsg
	 Fr36Ybfp+cw+hFBwXQy4KNrW1ns6KGUEHK6VySgYFSpWQtFaDKTHuMbt+39c+BR/ot
	 iZFofXBkvV/Fq7CkmgtAvnaAqCRUMfkRuJ2GfctVnzmlYCiEP/TePL0LXgMYAxRYHa
	 SmC36FNw4sCW/OQ2DapONa9PMCYDNCzwinintwOUunQqwLRGNc5dndPgYRhc7EJMpB
	 RhxYcdnPEr7ZWyXAYnmpcMlgBo15x0bUI6FcHFhuukjkNWnhgDjiO5D+XXBtnxpLJ/
	 8yjV4mQ5yiOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133ECCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174459358.19377.4246754116847022870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe12dcb5005c2958c8e01a5fc6a572e1b502fcd29778e251bdab6fbee98953f5
Date: Wed, 29 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761744593
