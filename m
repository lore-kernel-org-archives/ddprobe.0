Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8BF140384
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714478543; cv=none; b=SuQINM9Z3r3m0qfJary5LDfzoxdkaGVnE+4P7Z+N4viX5pGewMq3OYREUIdHkvgDU+ic5E4rzuXZWENb3cbbkUPNA1wOiqEFgsJ8l4xFGItVJX9kyKgrXIJN3WCgLNzvGH/UWyLDO89kZb6Yxhw1z6JDp62bTwTg6370l905tw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714478543; c=relaxed/simple;
	bh=eOXwQUHZKUSYfeGRWbRCIKFH0ZpKxPQgEYpLU6CBoqM=;
	h=To:Subject:From:Message-Id:Date; b=BLfzbRXfdofSZEuY5BStTPXPC8Xgao4xvGWLaoF0iOk7UejbI3dVomC81WyqRTFCruAhNLtAOVgp1romhcTZnSpHWdu4AaTVCv5K96fjU4C9rhitiZmJuXMOeh+Cbz5tfBSUyLb9CaTn8xJJ2fyOHZdSaLAW5Xw8dK3ALl6C9dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW0nSGwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW0nSGwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66C1C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478542;
	bh=eOXwQUHZKUSYfeGRWbRCIKFH0ZpKxPQgEYpLU6CBoqM=;
	h=To:Subject:From:Date:From;
	b=QW0nSGwdmJor0ZtokcqlhkWi2GYmXt1u8CjULzxqXoaaagvCjWLaRyXgrxIUY2ymT
	 qO/h3ZK1aV+x+m86Utud8QMAI4JBblIt56YB0QV/pfIuuaX2gQ+R65oT1ewk3INMEi
	 J/ezPXAqHr9xwqxYVlBbFMDfJWZrL6XXeEmIG71Odnm2jw0yupV3xP2SvQC6km+Yd5
	 bPlR7W0SBzYXyNXMa7sZNamZ3/9PqupOFoNF2GRM3ufV4kNlRvdSS3UoO+epZPDdBK
	 IzFBdZ9aJAimWqcOVPhEecT4PA7tRKM5qky7NfFFORayUIvRd+4rr51gOvaDOSZBjL
	 IBscBdP1PRc6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30AEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447854278.28788.5969307123422191062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244706d1395992d62b02a367b75e8b70a1382e750a60bd5c44a797cc0973fa5a
Date: Tue, 30 Apr 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714478542
