Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B5F34B19C
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242394; cv=none; b=L8q9NBKK5YZC53DyDVhnzm+4KtOKjVdDIuXKhalCxiVDMYDMbZznV9AGtJWiXL/9I67lrttVHVcdW7SL9M+aC03FdgdIx5Qye6u17MnGABKCOj+AE2Vw45u7p28BocHnI/1+PFwHeQqFUmx6KdVzmhM/zN/mSY2FTOundBhKfjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242394; c=relaxed/simple;
	bh=FgWOz1p2kOhUu4SKmcTs36LSPdTMeZ79a5/NWTb4qlk=;
	h=To:Subject:From:Message-Id:Date; b=Ql4cH9a5W9WuAAOD2jCdtzJtH2XDM278wA3SEvFIKG8HzgrhPbrxqIy/dQwkFAPZrkgxQlmL/N7z315A4msL0MXJ8RySi0UwOnIqTlXj0LEK8cRm0DNHKXC2IxlUXzazGKEPl318wIriltlmpz7Tk/UWZnQI2soXSyZymG/EMK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6fTlNEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6fTlNEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD0BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761242393;
	bh=FgWOz1p2kOhUu4SKmcTs36LSPdTMeZ79a5/NWTb4qlk=;
	h=To:Subject:From:Date:From;
	b=H6fTlNEyQ4XQxLOay/mHuKs6o7h2lKc6dhBEE2TQN4/+UH9njX+C6z/eJcNxWU6mI
	 Rs5FYVgw1xD0W/fJ2HYibLKkJpXAsHte1BvVO/QYaIxunD4WPqmcUMyvWfwm443Q8I
	 kIMuJE/ku79Pp+D+cW3yJPLIj5NyCSC70tJ4o41lODnWLfdw/9fthWxHR5aa0rFJDf
	 RdiTKYStQb/ZYXc4Y2LYDUDK4nshBaf70yA3soXR8rfcw6VQKrqLmte1Bd4Spp3QX1
	 2b8jytl7WcqGQIK0S/ryNWSSwELKgZIgJXrUMnshvc4TD2g7Z5nXNSO2QLvT/xRa2L
	 uNGSfVinyLpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193DCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124239358.6465.5051652127843600511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80583da07a37945600e75b6cb7a8eb25b0374b856eaaf21b308cc9fd3de3e60d
Date: Thu, 23 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761242393
