Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425892AE6A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744858194; cv=none; b=CqnMYUhsV/11d/MGoQ0yYgSfbE5u4DznwIdDtUqCt9uLNrvgmL8SjpBYWLOHWNV43zYCVFC0VT8d4Q4fY3MJ4VTRYI2+8Ar4v3biaVa85hw22/2HNcV7H1PuUsuHn3NgTmYJB3R/5EhpvSbRpgNS9Rjh8hlxqzuw5MBSG4hJprg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744858194; c=relaxed/simple;
	bh=cJX4hrqf2edlP4x8vR8KFM0kG80x4SuJOwn8aG116qo=;
	h=To:Subject:From:Message-Id:Date; b=crDOKHqQZPWaema0EAJZTaK2yJd3O6MDzC6qug1J+XHnaOegEg1obm4MFYDeWTvmjiitokyb7Rvxy8jQiQvRgYDE67sDAi4dIH2JGPlYMVMn/23UzPfV4wb3GY0/t4Jdtg+1yP9hhj5NZ9nyE3SXD4t/H+NBnt/txGJ5a/+kff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMCoDGmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMCoDGmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC6C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744858193;
	bh=cJX4hrqf2edlP4x8vR8KFM0kG80x4SuJOwn8aG116qo=;
	h=To:Subject:From:Date:From;
	b=vMCoDGmDYWxmZbXMHL7Iyk5fO78B03c8edP6+pih+ubs+9F7+QDlehy1+nLizgQHt
	 Wqc+fpOFV6O5j+pg2h1d7Zt1FdczPm+DLxN5/fuw8ZW9Xm5/b9HHBCVwX+aYWLTL/9
	 ZiG1sAGPdm393CGVt9D70gfWislh7HBkww+fbladQe3Zfk7miU9zWG4CXQwh6AeAxe
	 T78hjInqwxhCfR0r8ZXfi5zY7J1j7pp12o77arJ13MUwA20wvOmhw2SUQQYpEbjgHD
	 NGuvxWb7tZ12G5vwXYNdzd84FU7RFwmKFbCwdMh4IO6gcynuPp+9II+vz4IAx1CaZE
	 Ugjxf8hWQXGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91636C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485819358.4267.16135110352206401078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b560778cf3d0c57e278671d0685310e640c9a4ac9cbc4e1b8430af64101fe23
Date: Thu, 17 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744858193
