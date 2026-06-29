Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636713911AD
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782720514; cv=none; b=UZh3CdFakfwGsCBDqpSZ6wCtFjt7lldIk2F4UpG1dxv2FFWL2HOcCiLt/QWetWN1yWzQXtOBYHafjlf36M36RfhU6fWB44zM5W0lIm/ySgDrwI8qzC4TIXlFSEJEkkVULhOU0g3ejyKK/r8w5CjU5OpYC19jjn7GLEm6WpQTIxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782720514; c=relaxed/simple;
	bh=dhLJTnaMDDto8x9kAdk5waJcxCxAfB82j6oZuuewpoI=;
	h=To:Subject:From:Message-Id:Date; b=lKTxZ2aW74/y6vbekMkeoeN5ZAC7yhYisgBOb8Idoicd+hoCN1mlR6tyNlS4QN4rfWzrcttVyo+7EShN0Xhn1IJrrDQUjVCO34NSuZ1N0D8MtJ23afVXmUWV3m6bvpwKcA+eCrZT8LhjpVW41ruTfF8nUJ/AJQdBRqDGtuTOXqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHvg/13p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHvg/13p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB47C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782720513;
	bh=dhLJTnaMDDto8x9kAdk5waJcxCxAfB82j6oZuuewpoI=;
	h=To:Subject:From:Date:From;
	b=ZHvg/13pj5AvIYSmHcdUQcLEShGCnFRKKPv5T4/9/zq8PPExY32cVTbIFG2VF4uN3
	 UPvT3mv4litpsn5LgiNhA4isatgNW5i29aqu6H2MTk0vkLLAFetxkQepcqt4UIHSKE
	 tOORjWRr5ZF1XepZzMb9JGXzG2f2pTA7ovWDXYT2jT9Wo0S6RL+u+betfnyetGDsBc
	 x0TR3dh99rkJhwsz3kAZWRXtG/HhcS75fg6h77K5Ki9JCduNSvcBaXiXkKRJmjikVD
	 F55tcR7Rc8tIILHlTQ5ICo+6284eAiKeYmbUs8XMWt9lB4KIqOnzUaTcN8+x5i+Uwx
	 qjaR3CDh6zaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD926C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272051370.5076.1838173499248663336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3706d1da6ffe91d919a58b1ff1ce476bde0e0645206d0a63c26113527eeea3be
Date: Mon, 29 Jun 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782720513
