Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FBE29A9
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742609994; cv=none; b=RDEk04bRZ/lbU7KA+r/Hc8x8gSN/4TZJUzZiwXQra8mtqXBQiKFj76/cdTy6C4faXjGiDCXhcpjacoNiBR2vbXL7rJqoqm8y+RGValge6AHyq8vo+drPKCtN2T9OISzSUYw16YNyjmmkLa+azpO2Ls/iAj5wXLtnMeRgj+91nOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742609994; c=relaxed/simple;
	bh=6+cDCJooYQ2BsBcyFPJB8K94wmIyuhVeLJn7ZgOcOQg=;
	h=To:Subject:From:Message-Id:Date; b=kZeygcpcr8ug3vWbDIpJzEWXkUqyI4d7Hwp1/YsIoaS7opdTBo9Te9W6Bsds2inoh/SlJ2F/0Kt5BvZ6AyfZi6LkngRiO2fbiBH99ktgT9SrCxvkiyB3NpFvc19NtgBshHxg1Iv+GPq3UcM/Of37ecw1nbdbm6GVv0G8VVsp+lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPZOJS4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPZOJS4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B447DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742609993;
	bh=6+cDCJooYQ2BsBcyFPJB8K94wmIyuhVeLJn7ZgOcOQg=;
	h=To:Subject:From:Date:From;
	b=iPZOJS4LxxcauZrcS3Xt+gFPic073rBzeXBTLoELDnZJ4jkfn2sDLcDb3ujQHD48d
	 DEyOkskdrtI055abPiwCn4UY3G39eG+RBdY7r9Fb8CTzW+mMQ81BaYiRcNB/ZCQ0N+
	 Bwbec+x1cGtCPzsu8i4xdfr1eFVfqi1HxKdXZ7CdTHxQkMmPNmVPG6sX99nRDND4am
	 mgq3QcpHXP7CsopiHr3h8EKtbZnOdDo4MOK+swBB3itmZ8eS7I8ap7BPYfJBkPxmVj
	 BWRDUNV90wVvEY2Bm4WeYIzn+sZOwdegE900k6al5S3NRoCNJ549+hahuNXaHgEvnV
	 AmvACkzNq+sQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDB5C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260999359.11980.13796457278706393823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbb9d8059721e94f5f8dda1c6c49bdc35b61f78213fa4637f1a49ff056387f6
Date: Sat, 22 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742609993
