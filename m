Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A448824B22
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706308096; cv=none; b=DR+Y1vznbL6svPYahHwuAyCARgmUnxgzQoo9B6jZLfdSEQJsbzR3jU9Pl1EuJE3PBNate0MfmiKFJ4C+FgyG36r4FqMXYXfFu/8eW6+RPh6lrGKx15SyBky5ZlmX5ky/JPzToQ5J8hwVnuPy97OK2LMnGJ2+SxFTwwEtMqVSwTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706308096; c=relaxed/simple;
	bh=9oiWjhyOkDhG+tIbueCwQdfUTNP3b5r5wynSNkvyw/o=;
	h=To:Subject:From:Message-Id:Date; b=DmhsYdyKRi9ggLSrSJqBGcjU3dL4l0AYCnwFxstmR1R6+1WCL8OaQLAbBxnJVBOh1++7SCE26pIKweHAn5h9fGR/olMz20zkoz9MT41gMM8guMBhgl8o3WFh9dYcldoPVv+kXKkUlLHvmhQlS0Z7TxBExJmXv6xGNc2JyeFuLeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctb4C+zG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctb4C+zG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B7EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706308096;
	bh=9oiWjhyOkDhG+tIbueCwQdfUTNP3b5r5wynSNkvyw/o=;
	h=To:Subject:From:Date:From;
	b=ctb4C+zGiVLYxPDgSZ11JAKQ+Xkag1mgdnDNTM7D6zfTTl0OmKDecQmNxycX6+Coc
	 JRrEIYVTqd5mzrnJdtk75zj/2sMXAabREKOEDH0WRB/4X9/ngZXL6eDag/lEr7XJxw
	 Hhos1CXHQK9WMbt6SAexfnwGNWuy/+qMS0AjJ6PDjmlo4H9FG/Q4Z81X3pNo0wngPw
	 pUqCrrnNH9wmNZJFB9OsaU8Ale+Jv1rWvrGrWR+LdDaYE7inJmjE1eOO04Gkl/WoQN
	 aT888rcil7E4tJXS7uUROnYE9DVhHMbFedKtkODNEmpBeZTMpgnrW3uYodGQcGp9h1
	 21UFVKbLAjL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9F0C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630809637.26818.6533782620107798529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e17459a93b4ef483d50ff767532b38c1884c1e4f08be8f745211a690a6338a
Date: Fri, 26 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706308096
