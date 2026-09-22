Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190D443A806
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790067034; cv=none; b=ba6Ls9t3osRjv5TK08VNvI7BbxaPPwV49uheKuyiQVjSok2jTJ280xRFsThohPY6ZHlLFtkmn4zEZTlsO0DZsHq2aCQEoRbLa4Dt7SespsvTkNgV8gBC9CVxO9GJWL85Je6ivym8E9JAIiDAQYgnG4cP1gLPmRDXyIsvF472xNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790067034; c=relaxed/simple;
	bh=sVNpWhuQ8zIsjlTaRTvKrGVnxcNuVr/9EYDa7vMDiWI=;
	h=To:Subject:From:Message-Id:Date; b=rNDo69K32aI4r3Ut7CplbekOeHHeP9rQgQWtoaFYxSZKFZEZljgdCWDZic6cW3yvF6jVAsNbcEMnJc7IDojDe/nFgY0ibv54lhE7QlxBg7pMLL/6VzQJa6FbCuaH9z3jygnR2uED/9O2tFIWM4wXC1+mp9Hwos0EDyped5o7aXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbEwOi6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbEwOi6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2204C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790067033;
	bh=sVNpWhuQ8zIsjlTaRTvKrGVnxcNuVr/9EYDa7vMDiWI=;
	h=To:Subject:From:Date:From;
	b=DbEwOi6STLNdFOQ5t5RnaU0+SM9SrBo++yEe3GsAR8iA9TZC1iaFv6CddxoV1FLjv
	 TdgNtbq3YUHWnbz1T9TEr5vvP15bC8MEAhOOt+Nnrj0Z2TALZrshss67Prge7alpcy
	 4Bdy1e0bHo7KdnhPl/kRgWfhkTm5/e6tzJPHVMmV4d2avBBABI78r5DOmhuGVTfTAe
	 s9novkRoMlEExZo9SqkgXSCCsRy4ghzIkGKftYQ+z0yTB1saE8yeybTdOs5JBNEyDb
	 YrW8PwxxLqqb0miBVTtrNgFY9zzp6VZruO4Bqi1sMh8lnYwQuOMHYW5Yy7C+/ACUwR
	 v/xNE+j9qBuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF5CC982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006703369.7445.760669764363919029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87449256cdb3e9ed106168edfc57c54b8014c96468ac2038cf0d56b2e324c8a
Date: Tue, 22 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790067033
