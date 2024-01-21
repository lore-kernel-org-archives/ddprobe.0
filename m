Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D2B2E3FD
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705825097; cv=none; b=aTUuMHOquKSHq2wLWAHyeIgcE6afV/PaoJAb7nuwFaNq5XGqRkZt/urupkPfy+NJ8Ojq6gEFa7ITDXIHM92SxUZK7rscxVKguBBVJmZ6v9PJqDktpcNLf2jCw3HwctjkHcx4Fd6kADn95mEJ3OmFC7hGdrByyy7S1czit7vrsbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705825097; c=relaxed/simple;
	bh=nMT1VTunYYy0GSD9GAL4q2KgRU/WCJHYqsYpQn6LQ+w=;
	h=To:Subject:From:Message-Id:Date; b=oKGNqSmQPso1SlBo9KtAyHbrooyTKGsGWJBPq57MQx6V4C3XDf/zfW7HuXXTI3cRt2VpV6f8K35GePiKs0gMz4nWPNYZoCddnkVcsPYVRmyPBd32QUHtSc07hdZ0loq25JeT7vjdxAl0DvBCL/AjXcfI5E2gitEfXwhcbmNKOPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJvzcy2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJvzcy2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A41C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705825096;
	bh=nMT1VTunYYy0GSD9GAL4q2KgRU/WCJHYqsYpQn6LQ+w=;
	h=To:Subject:From:Date:From;
	b=fJvzcy2U/0R2kbCODQgFXhC0GHaLe1VB6BKTEYIW5oxGP9tbJnrZZblHVoVmZHctN
	 35EzDDGHT2VvKbQpXbVubvB5r2ifmVYu6TLo2hV8C5pz694vXQSD4MiVKEP0TEZULm
	 OrZ9wQ9J/8OjlPMkZppSfriX8hbmOlRQ5v6Nuk+T/cd/JmEJ91BqgktDWLSRY7Tue5
	 5MkCSz54J/0juZea+0RKVHrXdW2zezaUqg6DWQxqaqtcFFJ8JtloHAJAU458ANPEph
	 KPCXo2+WByKy6vVIPty+zp1BQPJ+oVl51PMCIaoZADZbAFkt2vfQIAGG9HyRFw+dMN
	 yDCMda493Fqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6BEC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582509636.4823.8093222781220330120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c67b2aeb019518b3642cd7022f2e5afc8b3a618b5d190ef6b5021c50a08c7c3
Date: Sun, 21 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705825096
