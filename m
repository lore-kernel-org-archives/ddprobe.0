Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D207297A7D
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747303194; cv=none; b=oREU8o/9qL/rydPxAVc7ydRofGCRlIZBZliDCKazNz0js8HZ5y1NKfb7k6h3Mt+LncyVu1lzbp4IEmPZ20KiWqEY8dZ+j2+wZn79HbUstGfwanTF6/plPlvBeMs8U4WfZzls05T7y8cj4eSjbPwxKK3M2Z8+FFJ0tmu+8VFbZ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747303194; c=relaxed/simple;
	bh=zqZ7J7vrtolnwI4yvDGzcW5BLaECCHgNvwhdogiWbIE=;
	h=To:Subject:From:Message-Id:Date; b=sTC3yQ1R87OuC+FR50Edo1TTM/ngQPYq7guaIRPuEIBN6RgYIimiVS/Jl+RIHDFeqse7Jf+6/So9OR4tsfQebvpKoYRo0YKY2OZOvPuPnSfEu48Z81AU3KzyFdLZQw4Ni20GBhQCVkFnvETiQkLTWAQT8NaOtUIXmmtqM7iWFQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC4b+Sn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC4b+Sn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B48C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747303193;
	bh=zqZ7J7vrtolnwI4yvDGzcW5BLaECCHgNvwhdogiWbIE=;
	h=To:Subject:From:Date:From;
	b=IC4b+Sn9PT/+L5dN5x5tfFPlj6r+0UarxCkrgW0Zw3QEHtoM7Fnd4J12makq0q09A
	 JECcxxUfuHFOqO4wrCbGbLpO1qC18RPg1oDSv48NrfkXPcrwFYWDsVY+Vfso1DJ6ze
	 7IWSTR+Iiy6O6JYda3MDQgPP717oqUdZZyAHiXbBK6SdCsWvE0owvxyfcThztXNHLe
	 SW+lLWbbHsSbwMkJKitDZQhJifY4W4w2Bvfyz4YOZFB+cwKax1knqgXXCiVVMGXWmm
	 /xXmbvnZ79qrhO7YR9U0mWFOqCBk7c55sWZpriIC7VXGknPWhoLFepm8gvpe9zntJ1
	 nXyqZMOmnnwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FEC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730319357.22364.10169510559812591380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45af1c621a2d63b0c10b8e45fe5fc4f1181d9117af1f2e20c772a33a8cf11b30
Date: Thu, 15 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747303193
