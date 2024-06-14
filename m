Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4771922CF
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718366303; cv=none; b=BY019sMIvb/alfdONgxEjvuYbRNV89uK0hdaXgKvObU5vbJemSnc+BaXRQYYqQUusvd476LietdoF8CwF2t6EpYboQVa9oNojKzW44JQr2WfDVUU8tOOKLvveZcPnj7bE5BKa9JXzLjtFlSMYSooSahqYIBIFpM+3xjwfj24zsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718366303; c=relaxed/simple;
	bh=NXQDYr80ga/YbN0I1ALIX2s4tqJXO+pbPWZrSgxXQDM=;
	h=To:Subject:From:Message-Id:Date; b=gaAT5RnNnmtvGF6b4nDPYs675CTMe8nNpqxYf3ZDoL6k50v4X7aVgB6VWvq2iyjRI7dvMVavWuAX4UDqsOAqNlfN8JwZNowKv26VenzyTcvAGxRrKBPvM5PKFqoy0W5uxcmpymH39Y9P0tp8nyxjEjXaBZ+SdhbGPqf9y7lCLpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOn9uQnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOn9uQnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA710C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718366302;
	bh=NXQDYr80ga/YbN0I1ALIX2s4tqJXO+pbPWZrSgxXQDM=;
	h=To:Subject:From:Date:From;
	b=jOn9uQnH7IP+GIYXZOl/wKwdHqoqz5aNpmRnySkndLdiDF6wbiA4c+/Suk1UsnMbB
	 kHxwesegyy3cu9cM4rmJqD2sd57s3O6u9adLHTMDbLQROF9YepF0P65pMjr0u62Ff0
	 bba3yALgTEL6W3yvF+7iOrJ90U9QEhlUQBeqj6bBcjuV8TH8bx6O+rdQFa9FtdfnDX
	 QfBHDm9WKC4+gB67/dE50JZ2a6LCkJ1CGTq0RNBof30875UrGvZFfwWef6m1NaRZ0X
	 u+gVMnetDShjUVGEyyxoV/EuoBVDcYZemYC/xTScWOhHHjaXyg9C8lJWFbx0IMMeBw
	 33w8TJ3O2xTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ABAC27C75
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836630279.23022.12518828323248271276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1dd3e9145aedaa5e744e01606c63bb56be70bf8126221f9a235d405a498b187
Date: Fri, 14 Jun 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718366302
