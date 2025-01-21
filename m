Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1551383
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737437754; cv=none; b=mctcQ2FbNAo/8phONuAw+E1svCmX3TySseeOfwsBKVexMYl8OA+K4smDLQEGhMMQ8HEtcwHEF2mWwk6FLoDGNscMxuS0AzzmHpCt17kXBQ+mO9niNwQKE9ypdKMHo/FtYmkA+auOrCEnayj7YQFLdmD2It3mKuRoxrO6QGasFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737437754; c=relaxed/simple;
	bh=WTVbjf9kQ3bZ23FQ6D5i4SbbnRbMziRRAwkYYAGH+uo=;
	h=To:Subject:From:Message-Id:Date; b=mhUyzQZEbXyD3X1ShbFBIJCztCDRtnMyF6x7OwglveALY5cFO18F99a2BVvwJC/cVZT2nYx0mU9HPV5vFEuvnn/M0/JHR4zsvtQ6gA1Np8xnmRwYPi0sV8H8w3h+TJsLRgyTObdgVzIKQ+JHSRn2GJhDUvgPdWl8MfbyezxuiC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgDMCLR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgDMCLR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E46C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737437753;
	bh=WTVbjf9kQ3bZ23FQ6D5i4SbbnRbMziRRAwkYYAGH+uo=;
	h=To:Subject:From:Date:From;
	b=cgDMCLR7ip98WhlHW0Zggu6jsAOsNWWLsc0plj2xdIAHye/tLAlzSyahSXcrsuBVO
	 3fo47aEwB6450mIW7C4KtzJnjbDJkZBauO5GgXNx6M8Cw0pMfun4UZr5gmIxpycZCJ
	 wYfrTpIvAhzHqDT9gkJ1rkEQh2R7Ec1utGKcNNbef3geykp3OuaL4E4FUYoHOZj3ZG
	 OH+h3Yg2/e33x9ZEqZekgjcGWq07DJFFP2kktTf/C1rf/JCWwDJLRN6jGclh345b+D
	 HtYvv3N4xaAUs1lP3xUQgpGDhi7g9w3D6gmn3OOirFyjMQJEj0jpb50Mxa40KvDQoV
	 HqZjFszCKfW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD23C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743775362.29816.16867910779736649309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc511708a7f1264a63a7db64b9f49305ada26474f5f219417e6a9e9458b4d093
Date: Tue, 21 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737437753
