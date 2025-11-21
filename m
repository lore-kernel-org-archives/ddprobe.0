Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCA7346FB7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763731313; cv=none; b=FGpEynGNxxWgVInm/OesqTFMtq1MTWqinFkkxrXShkXCJ8h0GMScY6aqxrujVhf+iCa/lk8dNW+GCcdQgHB3K2e1DqikCLFOB7db9jhU85oeRJ+gv1ucwYrBpCEYbbg5pUEk6cmoBNFCNvlSKS1xHuYBkFLDfQtuGd/q9WDlnYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763731313; c=relaxed/simple;
	bh=5ET5SqKDUwpdIvRZHCAQdJFnKRTBE4guo1XjLd1OyJo=;
	h=To:Subject:From:Message-Id:Date; b=a5qZzbGDgK6+VAfZH8FpXWemgT/DL8qpzd5Egl/8hUxxSAEoL6AfVxzfDSl67jSUDXEMdVn7RX3uANx88hPjpAHTCDT9N8DKfS5Ufwsg9+wfyMY5jT+ghnPrzzmWOkSMS35Ust/uU2PVCMLGj2Ibatujy/T+k/qizYYYdbOAbdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXUbVMrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXUbVMrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A384BC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763731313;
	bh=5ET5SqKDUwpdIvRZHCAQdJFnKRTBE4guo1XjLd1OyJo=;
	h=To:Subject:From:Date:From;
	b=lXUbVMrY2zabem4q9wstJqzgaeI+dBG0SvTp7vtRzvoqbershSLQpIEYyynP7OjDR
	 KRqxEm+UCnrFsH89cZSgwSe3bPtsg372gxx/yxvZ+HjKFBv5b1Udn+THxKSaOegq9z
	 WUykrs+mPGMlDCXeJ/XrontvVTY/QA5hOOh5OTA1shDYQmbBEZiorR8Z2rSgwD01FL
	 c1OsWTuMjJ2f/lo/2KDZlF0OyubcAIPTdlj+pyZS3D0zouseMvJx95vtlFlz4HbyxM
	 GfbQpDtNydMB1sxdhulC1UMGH4vvnNRDk8JCJ0VKwrvpRwFHdRkWn5Li5evVQquEJT
	 fJX+xlsWeaq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFBCFC273
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373131358.19839.251593115984204612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeea568461a714fcb621a529b2f5ce473219a03d5168c2e1ba749b1cfa2a5d6
Date: Fri, 21 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763731313
