Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20DF34C9B1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761144593; cv=none; b=chzJXEsgPQTSTB3ZBFgB7WfWYsl8dNIVFlk8RpmYkU7gXvqgOmeDlAN/emrJdG8VT3y/NmQPSk4LF0sQYN5xJzkp+CaGVQ7lkJF0lW4mqnXrYZC/9XDpYw9e2sI6rmTGIB2yiArEB7B2lZcz36NaZCjvvM/ctV4rviV4Warl4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761144593; c=relaxed/simple;
	bh=0G5jVE3hEhvs8qt20OwRKD5wg0arLIey8R7ndxcXZsE=;
	h=To:Subject:From:Message-Id:Date; b=ofN+GIRqjvmgl0bLojy50old3Uf0nM2+oA1X55nWC0MIZSe7nBmtV3qYBGlu/3dUjgAXsqfYYvEgOpI4s6+rtqsmYcfPCbEiFsDXpsTRfnB3CP4CMgKzdOtJzyTdRNWJArPaohuRW48P2fbhWhL5gscEfllRzxUIzCXMT694St0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmDqoke6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmDqoke6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761144593;
	bh=0G5jVE3hEhvs8qt20OwRKD5wg0arLIey8R7ndxcXZsE=;
	h=To:Subject:From:Date:From;
	b=mmDqoke6f0m2OMbqiruMiCifh9lezv28jmGSTL3Cte9/jc10tW2CSHUVYQc0h6pzf
	 t8U3KSkTjW8UOucQ6hq2Y1qitSl6eVFDcVe/3pLMOac3R95HhE84cZvaHDw6VrD3ag
	 dM4iXYgs864fF3hzQFAZbLmqRcOpgSZMBwwjt6KpWfS6FhPuSlarxBrKVCvESwHnfT
	 sfgr1S13pl8jlawoXdgrHB1JSiAOhqubLvmvX10hiUfuPnCbK/8doW+fryJUhYqcSK
	 jBsnyAnL6yDWdJTAP8mYVRK3wNf4cj+Jsv5ApKpY8tRPN9EXphc1317BKCgIiXJL4Y
	 gRSrdDrpT17Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90408CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114459358.15307.17447522063985988944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c1510178bc351157c2cf13a6566f7aee024e318ca9751befc89e614f846283
Date: Wed, 22 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761144593
