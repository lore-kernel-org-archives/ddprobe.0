Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5695C79CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757651394; cv=none; b=j3qeAhnyFRzBd3z4U/QwtdbZskJ0A31/Rng+/BD5rW8Fxh4UoZa3LCKX2cBD2QrpKjxpXl/+PSLd/PBGJnrDZcsj55jc6tORe3t0WvxnIA4uVj2GbWLVS58NyxiHxJp/dChbjaFX18hlA0n0XcIugpyyUoyv9aJYuS1J981AcO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757651394; c=relaxed/simple;
	bh=o2apcGsFtx/h2kC04zYNvIOzSMHPs02xy6p308EB604=;
	h=To:Subject:From:Message-Id:Date; b=nLZ3tvxIwSYR5imhO129qZIjGksq8YhzWJRn7zpHkl26M1DVAdQKm+Fgo0JRmcYbXhqZE2/bgqB1WfAabrwklUDeSrgvs9vUsQ8ggf59BZXQ6NODv87+yu0Y4uWDNCnxoP+Q7mZipwKXES/UYI5QpphvRof2G6bI6Whw6Cq3DoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooAXdGL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooAXdGL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757651393;
	bh=o2apcGsFtx/h2kC04zYNvIOzSMHPs02xy6p308EB604=;
	h=To:Subject:From:Date:From;
	b=ooAXdGL45Kgrgt1gJX2qalzwY8XDLovwuFYk9J2LSC4aLzvq6lUgdOaRr083uSupi
	 3bLWlP9auaseR5IUhJ0P2XydC00M7OkqgM2jR8LyaRjT92x66xD7hjcq+df8fb22Df
	 DQW4Ssk3T1/EYziI6zfrl6b/yiKklPSUwc/C3UEfZbjuzeBvATk4wPgVHcdFcGZNwi
	 XSAw0/Z+VOlb5fihhTT/86yc478xo8N2ChsrGjBGug8JUpUOk0DHlO6slW+ukkqZEL
	 2T6u+PkOpNN1s4YABYeKIdGB9pMX+zF7Pfv30icK0IzSk/tgElJS9xUpW6jtlUgkG3
	 hSnXDzKvH1tnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93221CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765139357.13046.83436814852494779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e3cf74a249074f24e93acfba5d7d76a55dcb92152fa215a1bed5b13deddfcb
Date: Fri, 12 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757651393
