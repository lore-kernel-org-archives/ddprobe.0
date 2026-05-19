Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503FE32B113
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779187234; cv=none; b=LQYGF0GWbollxJgfeCKC3PT4v20ffJJ8A7r1kg9gFf8IB6Gge0Im2b6UCqWrPtvE334ZjK/bQq5bdVoVx5qoKK0VVL6wcSqiOB0QCbp7nNg4uJK1kgK73upIPxXYabua91ycuhew4TyON0WafoqT20KmDPfDLMWCLz2qw0z1a04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779187234; c=relaxed/simple;
	bh=4tTU72eGCUylz0j1+EWmjGVhWvfahdFSXiwehzogXNg=;
	h=To:Subject:From:Message-Id:Date; b=Pp7M/F1A79gJ21yXgMViIj8eRTr2V28VPfji5vLWTmE5DnEMWlXoNAt/M969CwY2AZ51TSJYU+hq1COuz1KPb0PyhDZjPz3tnhcOVZ965sJZwlAHMibtp8Ui+B40sllsJnba3ufIpZ2r/aaIPXJTi0kvQzduux0hEr2coU3Ptk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtbkOglI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtbkOglI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD11C2BD01
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187234;
	bh=4tTU72eGCUylz0j1+EWmjGVhWvfahdFSXiwehzogXNg=;
	h=To:Subject:From:Date:From;
	b=HtbkOglIJ/AXxq3iTaCDeUeOrgJ2BFPYiEFdfXkwIwGQmag9Vnbha847tHu92JIxa
	 OkCu3J9AfolCvkux4Ubv3X/9MgWtXgVE78p0UeWR802E3MRIwlXoYeca+/WdFf9ZJe
	 d3ZTZSJHPLunZrlS/hwh0P4p/oaxzHW6GLR2qcp6YmJEZjwvcGtYTF0cEOCZCmcMG/
	 SL4p0YqPmv83meBsK1XShC3FU+27jhSeKePkzRs/wQitGz8CGTHpTbQmpr0zW2EfeY
	 QODw7VNf6GGvJI/JutlTnOaMzJ4wyly8gbHV/GTnEry/8gZbE4SPPQUht09aPWuhHU
	 3KzKQ8axZcP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB53ACD5BA3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918723375.10465.6620745319196691995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7abd4db565037bbd034095131024ff7bacbdff9de611375b3d03595be4c93d
Date: Tue, 19 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779187233
