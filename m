Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53835976
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740796134; cv=none; b=idbjgTs2UEheXDAjktQ9TGMFhN03HZJJChbgTqws8mTU9tvFvY7iw52NVVDs+GXXsnc4txUwQIlpw4zAdUvCp5qcCIr988CvjtorRPtdMU1AxJG1kxd9oB0nVjLRzc7q6bL/gO7qunuh/LMop1GwmZ1WUAVAYuc2S/YhxHDhiZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740796134; c=relaxed/simple;
	bh=1m4TWncjvqb6BRZi9ZQdEfmf32NFx034hK8uaZT6Na8=;
	h=To:Subject:From:Message-Id:Date; b=V+MtyiQabo6giCgXSfUOaCRjAwLapqCPzTed1vZL0V5w+0hR1mcaE1BFHq1goOGSZgV0lJcuBVrXlRKElt7W7eGwxXaco2Vtp3qERRsPYLYv2mehagUfnlUI5+8elxHR5XxJgl26drwYhvOV6LC8zDZZcbAsQZ43PYhrPKO/RHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2pPDD4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2pPDD4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6633C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740796133;
	bh=1m4TWncjvqb6BRZi9ZQdEfmf32NFx034hK8uaZT6Na8=;
	h=To:Subject:From:Date:From;
	b=j2pPDD4PWsKGoy1MTPllHW9k3+A11U5y/a0+xlMO6UDAJVMGbMLpbxgBZJOZpXm6M
	 6zDXcmL5qqCnmcpH5C1Fp8RVwD3cyOTCWqtu5FT4N93meHPsbkbYfKdVPXfxo12dU1
	 zbG1V+3RiC8HH0a3xp29VuKWpNvQsUAUeBMQZqgwf7GhHu5upnyW6VA6TEyyKnf0Y4
	 50P/9HrhPBhO/MeGbazMMzW3udl9BC9Kli73wyWSOT/Yf9AMgFUE/FloVnfO4xce7F
	 tG02BeXYMsegtR877BqiB9or/iphwFK2GHlbnV7Hdgd1xxbbI8vQ/X6dxX5iz1KrrS
	 /DimKmPKiVj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A2C282C5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174079613359.15832.12781029720978444555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08de0b3eeed4e54a521f37e927eb7dcbdd1433e65b3ecd0d92a6c50a82ada4fc
Date: Sat, 01 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740796133
