Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFD1208A7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745003394; cv=none; b=ZjK3KJYnLVRe0mCstz+Go3MbWAh7QkfMLAaaOABJsWFYjs3MlfBvm1vOeiycC+kzrq1H32xFkAxk24FaCxwAt9luV3bZV32PJn5qq8v3pGqXoSsPCo27tZKwCqfZE01EXYD4HTv2ZJzjwqw8Bwf/hiEuluIs9Ku/AcAvRfzE0+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745003394; c=relaxed/simple;
	bh=9TVqiHWl+jgN6KvKxBRvDMJemGH2rfnAVnjYya0hNcc=;
	h=To:Subject:From:Message-Id:Date; b=MdSGIu4lJch+tv34ahRFGeTYjxbr6XpgM3fxK3RH6AKk5bU1YeliVQ8SghcyssKp9TKuaUoLImHMCUB0K95jdT4JJBAPNJsSo1nhH55LaYOOa681KppqpWqxnwbCk9r0UCzmduRKvWJPETNXxrymKU/agZJ/ZFLRwK0FKlkBwvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btj+a/JC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btj+a/JC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA362C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745003393;
	bh=9TVqiHWl+jgN6KvKxBRvDMJemGH2rfnAVnjYya0hNcc=;
	h=To:Subject:From:Date:From;
	b=btj+a/JCur2RIfPQ0V1UjuMJs6I3JKq9+xGvgxvD2LAvXaO3Y3WiIPLs6IsfBZjvt
	 y9h4kQR+A0qf9Yhpo0EdeHVNk0JJFjrEj3Cf051x3Ms7Md+DKdXYwo7AWYtwi+fKFz
	 JZigCx5T8p0JFwcsfEswhUvp7jdxOeLMgM99lCqb8GbKzzNnjhip3gNhA9CWXFVWWN
	 DNNpHzAe56ijJx+hk2a2pvhCEZQGmnrQ9XwHyO79Ac3hXobj/J8ffcWTN/+t1zczjv
	 AeJi/flUT42VzQf/1pUHCzV6G+DGN74I/myc2K5eMUB8LN/W4qEC023juh6Me/S5Hc
	 A+fTQ21Wfs6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF3C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500339361.17902.1219602751817840299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d5399f76209812277e399274f09904e30d5400a7888b3d0d5a4d1a0a857bd0
Date: Fri, 18 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745003393
