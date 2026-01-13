Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4E419644B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768333434; cv=none; b=dmmP8RYh90VRJk4L6pHwjXhJbKDgOEzy74deppY6WQuY5XcIpq7mpNHxmcgVhhWPSEzfQNyjwln22scd3k/dSulMOOY/baWcvrBeSs4meEm1w1jXN+OcvwPNv9BcFiDCuWhaPrz5zccEIkS/95yxmybP4jdEqnjoJvsEHzsnguM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768333434; c=relaxed/simple;
	bh=cqfZfyOGrLtTUDGUuI/vZYWMMbQNcRCyCzzMD94BuqE=;
	h=To:Subject:From:Message-Id:Date; b=iIsuh6zq284fG6meArZBTxK1l1z7jy1ZLgBLvZRctT1LnheYlUNeizW8i11Z8VOhB3Y4aGSTjHp6W9ndt4Vjkj+pp2ONLvZCegB8ClI6WIyKQmqFF+yhWLTyaPlxhhIrAVuJ4AxLw1bhUMboqoo9piQ0BnpPXQZzmzltTPfy6Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhTqJz73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhTqJz73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768333433;
	bh=cqfZfyOGrLtTUDGUuI/vZYWMMbQNcRCyCzzMD94BuqE=;
	h=To:Subject:From:Date:From;
	b=LhTqJz73FsZoDwQuMryQn9tUxLQE9uFPgRWvPN/AlLqqMWuDtuxfroSpp3XMhgshR
	 f4CoYbDRAu0P7T03RZOL4DXCUWF+GWc8KXPo6bEtdpCj+q3CcCwyxiAn/Etv125sHZ
	 vbAyrinkuItVVVC8hWtZO/l2Ka4Ev1SsUWthcYuj7Vd26mziduCbD2jn9yBZBddsoW
	 YIXtcUE3JMpGRoCi3epWvsN3rjznHrpWeVjx5xVPxt7Pmf0LeGi3JiROGi+zT0y29E
	 2qelmUsUnyDW9aaRbv3T0yHk2I2Uk7nD5VvIKl6YNsLcTsJQl/MN+a0JSJ1vA8+HaD
	 qeAn1yKG5gXcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F717D2F32D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833343358.16667.5340339767281747360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fbe10aeb7a52aedf22c7cd3e9246d3fa4193737548636b58c5e494f74cb7dd
Date: Tue, 13 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768333433
