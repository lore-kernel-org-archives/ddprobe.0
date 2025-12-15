Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2789D195811
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816374; cv=none; b=ClgFZE4lJtvuhDZj9zP+9w9sj4ZYqSuj7P4/X3VZhziCkceQd2/UMVkZPHq3bJrunPnwKRg9YBdj1c5iDVTh2CpXoLYRzIJpZeWUyVH+SdMWsTnFb5LArlSU6JYcOvmv/RaanHvhhePRZCQHPD9hGGoNLYxrmamITRPrUHXoh2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816374; c=relaxed/simple;
	bh=J4YYxSB9lBvrJUzhtCCU8BEJGAklVf5G5ZkdSHNYFR8=;
	h=To:Subject:From:Message-Id:Date; b=vEMcou7CmiYRz2IrpAalrthvJ33WzHc6w1m8mHojFWeTv5n2VbS6xM3n1m/IYevbgV1KPlXhXcEcWomJAe+1izkBjSc44KxJogfvJd2qkxeu4EYELPIbU4C0736APeZWZXP4H2Sf7838HPW3pD84QP5L898Vl/Hce8d1gG++60s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcVd6PHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcVd6PHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC00AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765816373;
	bh=J4YYxSB9lBvrJUzhtCCU8BEJGAklVf5G5ZkdSHNYFR8=;
	h=To:Subject:From:Date:From;
	b=NcVd6PHDvPU0RjK/q0B/eH7ljs3bPRjKYvSCpWKKGgqMhpZlz3Fw7a1JIFvQU8FsB
	 8c/sl0I5EAFSmIDuGp/2DmhJi27aOuP65XcdZAdk2RhQkB8fTmqzsNq9+eKWvBxlPR
	 HSUz4CIaBkKBQB04wMFk9X7Qh0XyOnSf34rvpsULFzyQLXF46e20lzlF7D0nrQ7f4+
	 qgrR4NnC1J0jG8t8bsNmlO7xf/uhwHnp/RlctIh8dYLg0bM1gGXFC4+rXZaItl+/Mb
	 NI/m8SteSNGovYtgNCAdyuMEpTgH/Omi11qe6aYbDSFHyk6ZOyzihYNxL7+sSmMG3A
	 fBJwF+YuxH8Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BCBD5B852
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581637360.26197.523765861347378557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ee22036fa9a1916714f91a237717d7fa71be0855862c9b031ce4ed0b2b8e5e
Date: Mon, 15 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765816373
