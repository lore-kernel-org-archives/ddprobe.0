Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1743BB102
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785220234; cv=none; b=cHebmIHKuI1MR5+0DxxYo1tF/BUD8uZsXPHjhrEB4CvrSqgkm5lew5bI/Ez03+sPShocwNKxS2IHFCMbJTJ/Cv5AaWicDNjMQtHci4I5z7Ye03ldhxtdJYbzFTnxqGszA5RtrwDvzDzUh9PtFOUw8vQGLB/NyGRsmqySgxvWQeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785220234; c=relaxed/simple;
	bh=0ssbF+LOTL/89qkOJziVn9Ni1LcbLebqfB9JcRVyuS8=;
	h=To:Subject:From:Message-Id:Date; b=txlffoVfCJVdnIemVgsGp6xw1vawoJ4wfK1IFSe9EhkQc0PxbV714PSUxuw12Uc9L0a1pkoX4AiMmhrVl2MXzysfVf7M761upf9i3CZ96Mi8qJ8pbKFC7zWdQp3Fz2acAdL+TWBLQaK/OINw96zw+IXbccrFtFZ/3TnsMuEsFj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEKhIPm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEKhIPm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33FDC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785220233;
	bh=0ssbF+LOTL/89qkOJziVn9Ni1LcbLebqfB9JcRVyuS8=;
	h=To:Subject:From:Date:From;
	b=mEKhIPm2vh8oIV3BZI6wHg6hS283slREuWjn1kD0jACiei/Eigz75C+4EXJjhBE7z
	 O674RS6DTI8Mwg9JdxXvpgbybzOGDWYf/QVBniHbqleqPeIYQnF0UQNTvOUE7Cd9kp
	 9jURbxdVno0A0VIUji1QeUif3STMBBbQS2XDki8YGYSLLw/14uKRoEd6kUHfuH8Inw
	 4uwrbLwGMO5eDCG9OJL7MHkuKgJ8sdrKM48ePpYbCcg/NU9h9yUc4ySMs9FWeYaDik
	 wL/emfYm00pb5692HrYEcBQLnMiZyxsZffpknhUjvEDEG/D+MMfGY2wKiER728qbdE
	 8zLzH5+Wo6v3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD84BC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522023370.24012.5713934805341080514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd99c6dee87bc608cca71fd5f2551d46f468d1484ea34bd4cb4a20d7608461ce
Date: Tue, 28 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785220233
