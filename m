Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115461DF755
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771571094; cv=none; b=hM4+W1zJJlXfzBQvJWYKJTDePIujrpH4wtgE09a/xFqbkBOoSQfCMdFwFd70v1LTTi8oiOnrf0Uv4QYZerfOWSH6/d/tVPLXZKpGCCEcZRuscQ+uAxEOfif7aICGcY3JChH8MwlKjz7HzNxdpEfhC//EdgpSCi2gexCEVdV+pVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771571094; c=relaxed/simple;
	bh=rj+pTCYZ/DUg0i3JpVFPBwKP9nBF6QpaHYd15PfhWvA=;
	h=To:Subject:From:Message-Id:Date; b=KO/WvO3LpT6+nBShxt1z4237omnjfBNyTgMTSlCosTKriixXxwnD4LpMei8kDijBFbAnb6G+EXHjvmcDmVZP1OEIyx0cYopSa91mbIcEN2j/EX++EWz2otoLAvgML1vHeapHtU9WAsDn8GqeQzg0RoK7KgiUNHfif5+r2NH6K/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWuqd5+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWuqd5+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C3FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771571093;
	bh=rj+pTCYZ/DUg0i3JpVFPBwKP9nBF6QpaHYd15PfhWvA=;
	h=To:Subject:From:Date:From;
	b=OWuqd5+JkXMt3gvbiNjRFPK2WlY9yNdIOTt9XqYWRRe9zeOOMwXGPrDyooLLGTTpU
	 XICvX5DqhlJxhtyp/py2eU8ne7gQidZYEmCRcSxB2hoihKQaL66tx+k7zxkSOvItda
	 WoPVcw9aFiB1rWp9lfdrqJotrkAzWMJJzJFbYPMFyPNpq8qB16kZWakczb8WCWWhh+
	 izInvsbdd6FqQ7iMsB7uIOIRNPIxS6flCRikLV/jEXQ8So3GU1fcWQSLdcmzNHAKWA
	 UCjXRAVFuKMJmVpYDhiFxzdwqAgay44tblGmH4iMav8Xlq5RO7XU3lPugd1sb3pkuf
	 jcXtUjpP4ZMkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC5C54F5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157109359.31038.16786390178486360524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ae081d7b29a5d24ca4df60d4f2b822cd1f3a6679fd4f2fc8e44f6c4d5941d3
Date: Fri, 20 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771571093
