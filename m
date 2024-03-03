Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686D79DBF
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709506697; cv=none; b=s8H4jggyD8zlAVxFueCgrqBYTd+A77rEfPlkuvUs/yBNL4fayM6Fj0tWcTVqPHPoovg3Qo48ZJAQlfPubfkdzZUbpi4Q+kfkTBQkNOsOi4NRAUf9dDFdXZZAm7m6MUagNV/C9rU+SOX30Uo4q8BSncNpLyeEyfRVzoM2OzJ+5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709506697; c=relaxed/simple;
	bh=Jd2+HXJGR6hyTr94QydSWyQiqoaf+WQVFqugUVHkYAE=;
	h=To:Subject:From:Message-Id:Date; b=UHO2Jb8KQapbZXNjnx7M27Ig0gzZYjgKStI0/sXjAByThatxzkts7+2TDObkESUPX14CF+8NUtOnsWrCcd9JBpHzJPUslVbSIxpuGThDhF0ieeYIoa992Z12Pe7tKwCfYqVROQ34MQ+2tvzP4SoxlxSiv9+QxFKzj9jPjZsL7DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okLzIuLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okLzIuLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93F5DC433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709506696;
	bh=Jd2+HXJGR6hyTr94QydSWyQiqoaf+WQVFqugUVHkYAE=;
	h=To:Subject:From:Date:From;
	b=okLzIuLXwfMyFQF3SPrL/84W3H7Vr3GOwuktHgkshsd+oz6XO92ApSoESIwmlt4VZ
	 fnGnYVF0imgLAbgWnssid2ZnVJH4/jU1hRPi+Ab6Wn7crcZMp+/Vz2vbW4oF0E8FJs
	 bXm0GsdbgwY8+aY9j0vfrDFXBZ0RUMcPCtrcCNdpuKlX9FZjxbHt60nQqe0bUbRkQf
	 Mn6rV0IfbkBkGWE8wYuBjza+S9ZUkSKB/0l2HodDt7/0zKCJKblRuZQy8f2o3M67DB
	 bsMXRRsgukrpnVsHGbYM7RAwvjpuLuZpaOYQcC7JIz39IA9VWbMZjNg0GvbVfyV5k4
	 7JBTfG1YokrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B5FC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170950669643.27227.6553317853046198777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f605e618a158d7ff53cb943e082e73e3a4bf278055e7cb11d6ecb20fa1a548d
Date: Sun, 03 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709506696
