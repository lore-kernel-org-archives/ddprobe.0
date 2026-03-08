Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D68B67A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772932494; cv=none; b=bvvQnSAUcbFO3WpgQBgtlbmbAHuNzf7SkIeYPew4FbsDZvvYLhARJEADEOux/hWWklwdcz8ouF4bBqX21o108Qse5kXYn05KrcogYhGIuIsG5RSHsIfu5lCCKiWQ1UY6D0iPC1RNhjUVzmltP5B92XAtWhS8lJ6FKTVOxQLXNAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772932494; c=relaxed/simple;
	bh=jEmViEqYxUQIbxu47ouSFOyimvsKlyKiXKO5YQCoZ1A=;
	h=To:Subject:From:Message-Id:Date; b=ePsZdSAFCYSWbaQL0wP8gWxFIEyG9FPLaKrjPfQ1uzumgKxJMq8p5FaUPso90dACrHbfuou6vHNCP4/IPG+YLjBzcQ/bcae6I/jVcs55zSsN4cjvWJdqPKEw7Cogl8P7w8lpWpe9trprt03A2jDJZjiaWfBXfhPQ5fC9v9UXn0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDXkXekE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDXkXekE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F930C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772932493;
	bh=jEmViEqYxUQIbxu47ouSFOyimvsKlyKiXKO5YQCoZ1A=;
	h=To:Subject:From:Date:From;
	b=vDXkXekErW1E8bljXjOcPPEh2HyT9pOB/RAbFY01HotpEKvhs6oh00QsVow3O0M38
	 tZV93wnYsvhMcuenrt5OUuYevXiKZfk83ihO5WVnOjQ4QAkXOzBMgN3Nct4rYFyTgr
	 Md4yQpbHE0bCHfs7Q7/+PjztuGd6yfW4cfdSl5/Cto2sf4s44S7MwNJGOsyhrDXL92
	 4Fy8i+zHzXjtRLYEZkUjXW9RNMlerdlTfrKEOKPDU7QbHoQRgVIgR1QnfvT+rKQdgY
	 mRhM7M7yNuoPUbxM1UdLVldUg4+nQbq+9apCmNlvZppbmVN1lAPCBeZWWBggVCPEV0
	 pni6P0TvHkYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F127F55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293249357.25888.4055818059728456815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f0434dccf1f6ee411450b18b694eba53408d04fe4d4c96cc01c180b1518ca5
Date: Sun, 08 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772932493
