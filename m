Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DCB33FE1F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779951154; cv=none; b=MyDBHKpcqgygLQEfXMY3pAEXai1a/B+n0ttTf7BZy9hV65LAQGUrHQwV/MQxhfmrGQC3xOSO2s90dOYo///JOmQeZBjR6yLyC+1RN+CKNI9QqVfeVxO8i5d5rP+DFLDob/g1HAJY0DG9URHgw1us2wY9RR0L9fYVbnSQ5gZ9C5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779951154; c=relaxed/simple;
	bh=dikz+pRjPfuoKWnSsrFTbqw7j1QURygCGigvQYEWVHI=;
	h=To:Subject:From:Message-Id:Date; b=gZsHHCd5UcGal0KILfbo7Kfc9oVXcrfxzL3cT68vSz/7RT8LABLXJCu1HT3z7JFw/HUEZyz0zMESYwC3ho/GJn0qvinADRXg41ZFf3IawRNrZvWDjaetJeoKmRPXeC1Iu9oXkJisvgrqY2SduGMMrndCAPoVfS/ccj18Pf9srVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkIo5h80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkIo5h80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB33FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779951153;
	bh=dikz+pRjPfuoKWnSsrFTbqw7j1QURygCGigvQYEWVHI=;
	h=To:Subject:From:Date:From;
	b=BkIo5h80JpXqvUnVqxgs5zrutbQl0EvXrQivHU6Zn2GWCrxYVW19Nl0eMGZD2DQ1q
	 lxTA5XVNFyepW+dOstADNmzasWRKFTXHW3XvzExGk9q1SJFIKHsHU0gKC9q+kJjVQO
	 HlLyea1BEFbZdpaKcGHDW1AslO+VwqxIVwmBd00HGY/ARFLMoIYddInLChwHZv2Ddc
	 iYZuiRd5Pata9BxoxonU2qQEYbxJKlc4Yg262FlC3fuJwyiFbJbewxgtJTUEut6taL
	 qPO3yJQiamvJG5q2WEu6lc7gIcyYg5kwH0Modxjj8HoMF7DMJvLErYc9G5wKxT+UF2
	 29e42rbWkRdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44FCCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995115369.1640.10921636268806049409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e500e4daae696118ef740ea5e2b1d7e04e4fc3813f156aeaa52dee20b060bd8b
Date: Thu, 28 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779951153
