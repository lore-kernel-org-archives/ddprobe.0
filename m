Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53C31E83A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780867474; cv=none; b=TUYbZ9GGUPFu7GUrVdS3jqoDJTx1E1aYhs4ezGg7/xiUaV/yw4C7/RwV7ET1DbAzaGglpVo9yy+0ROdPqhl47r6JlWImAF63gyS47xXozESChVexmOe3oPXFga8TwpCMpbYKzx4QayqWlWOom2xmpvgPNnRu8gWlkNf8S5nlB/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780867474; c=relaxed/simple;
	bh=wLQA+Er1rRhCBWR97mUlxxqMlKx9A3u4UyFyV64ZdOY=;
	h=To:Subject:From:Message-Id:Date; b=BmvmpHiob42ay5GsCElEFVKyhDLugRhZGTTq96ZHRMfwnJ0AIxnhdSYNxD5V7vtXe5u8BScJYyiPT9uljqHioSPhFE7PxTRHlYLPQMX94dAoFrhDUKEc8xx/H5S7W15E12ByEE/BfK2+8wf2f1oxMjGf8JB8GwQljmSCoIpajmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PefaZPd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PefaZPd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CA1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780867473;
	bh=wLQA+Er1rRhCBWR97mUlxxqMlKx9A3u4UyFyV64ZdOY=;
	h=To:Subject:From:Date:From;
	b=PefaZPd6D2pS4lvO68uQEVO53fG0TMqHn3uZTe9Cmri/eJ+TCic7n8PGxS2Fun477
	 +04TVSZBNaxG/9fTtvXE9GoITF1L8DVnJ5PJQRpaAzo6jEtKt2v2KaXOq4yFj7Ptr/
	 JMxwmRHDvGjEoMHNkYKCukgo+MGqkTuHTJsoJQv6QHwvFjyv1woLRKg5xZHeuM4D84
	 ZNJR0UvnFYtQmliivR0wloqAe9ahA5wOIEZfVQAvTH5XbjpEMZe43KuMngOpIqDF57
	 3SivQvZYxyzaaaJs+eW6L4sQMC3VRwUu57qW7XZq+NwtO1e7NwAhHr8dVab2KznLux
	 hDvxbbvtokxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05EACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086747368.11992.15061268438104829995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d01c6128e641c8a20054317a3c04bd106ab2aff0d88a9d45ace1605e454961c
Date: Sun, 07 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780867473
