Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230BE1DB124
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741775934; cv=none; b=Lf2ko4zTwguRWkwS8/m5cdbeSUxbldqQx3nSnNZRYf5c4KNlMQzsuXjXQftBy8r7tUZZ4fAgYvcuc6refVYBT2xGF0sbMHaSmunDQ7Q8nmTzFI1fJdJJKStq0dTakBRrYMzWs2J6Ha4PTVNmc2kv5df/D92uKDt5MrVBFs8H8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741775934; c=relaxed/simple;
	bh=Hx/JniaaWiuw3TOA3+Iwp2FYh0oJ/IMWFGh18mgxbss=;
	h=To:Subject:From:Message-Id:Date; b=tTkJIlJU4c4LAgEoBGN3aC2lj6M1F9SMN0cDtkUdoqRJ3JrYMpiGCT6WVYrb8c6tx23bS3SMyMNRuz5kAFeJPVsDEEH5erq2Fzft0iOL/dIZg3E+ytLH+9UWyifzthTRV3hhtFvILknDPwM1YblgTTxcVsxkyIw99X5gUGe+aG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR1wzNqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR1wzNqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1626C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741775933;
	bh=Hx/JniaaWiuw3TOA3+Iwp2FYh0oJ/IMWFGh18mgxbss=;
	h=To:Subject:From:Date:From;
	b=ZR1wzNqQI/IPKo5h6h/jZ5EdUo1PO+CB/cIKhLgJ1yf12io1AVwOerWDNgPyZ1u6J
	 P76sE6RzWpFzuFoNwh5o7B91cW2+LLhOZ0MBFNVZHeASO2Cat4N8/WqbgyVQrO9LH4
	 gVDLq7FQDjsZdyMV6r9xwh+cfvZ0x5EE8uYbZ2NcLzBJinBEoUhAWMVp/Ruhw7WlmV
	 0VF4hRfBmdz3W6CKB7dhF1G8j5mZ8BXhmohbZYzu1wYTIkev8tL5dFCh7dKOKE//BO
	 EJVDKzC69F9mAh1wwjIsgx/8DGleTRvgBB5hci+WiiVyAbiJuAg8mpMYEjUgJij6Gc
	 4Jrsh/kX72iNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BBC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177593358.25591.14271094306336810367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86c0b38cb95932242d27c28b6512094f719b592b859257d06bdc14f8fa1d105
Date: Wed, 12 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741775933
