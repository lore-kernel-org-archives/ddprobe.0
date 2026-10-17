Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474D4CF489
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792273834; cv=none; b=A1Gtn+i8yMfuS0eIRZybCFMkohj7TVkSEseJAe+4oD970yHh5SudmpxWdmZMP0mOGHl2IB40AG9yl/WlmSOXhtZhBMbDlGH7OqU51yicrHySRS/KpZNSkZEq+8YKmxSHOb/E5Bm/LKu1fLuJfdpKiM6gAwETx7c+pqcIBzOiAww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792273834; c=relaxed/simple;
	bh=Yn9VrpuLi3Tjtl9/RDwbqwNpOdu4YzfLD1pUAqI+jH4=;
	h=To:Subject:From:Message-Id:Date; b=MiHErxwn3thlzZfreFwZ//utOSsyiYLQpuIZKnbMl0vXdse3e38r0kVBOfU6388yavC13dNfZQZfhoiRJUMxYIWnBGLYpnzXZgM/Ya2YAZQbuS9H7NX0ZVgVLc2x8VELuLWrJ9hOPn72nyhSJOa79Qv1J16XA9WVFdweKr6kt4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvDKsoie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvDKsoie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB8EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792273833;
	bh=Yn9VrpuLi3Tjtl9/RDwbqwNpOdu4YzfLD1pUAqI+jH4=;
	h=To:Subject:From:Date:From;
	b=hvDKsoietCGsvSK5ca2Ocic5kbgyYSAYDZFdZ/l+w9a0dq6PpMv8ibHS9pyK1ktVM
	 PCJVhhwc9feAozt2RLEH9xpWzbJF6oFOqqjjwbd8JAP+/0f3rT5ueEAcRsUojC4sxj
	 RvKUKBUhCVQoEDQIANzIXo/G6Cx+OoNDd7Yze7rXe8BZcSPg/IR788ooJidbc/t26h
	 eVoKjjLqmhjDuF2VDnTwoJZpzzUQnGvc6YFj9dtIq43E2wup/wGENa64OsVOrAICDd
	 tjLk2tSY/CbrPCfmbfh6nGRf2gkHUjSjvTNqc3ZSwubWca+IrHtSg7ijLHLqWWvAOI
	 9tRQci9fi/eyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F9ECCF2CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227383371.10517.17558966898845045485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c37bbb518f6d1bfa0a12d576065611a51e1e4a6fca1aa6abffc0db3f2d4295
Date: Sat, 17 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792273833
