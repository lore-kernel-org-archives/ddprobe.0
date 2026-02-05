Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1933821ADB7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770257634; cv=none; b=n/Wu7NZZl0fd68hEERcGASD3Vm7r30ER5lcct/lfExcRT56vckkPMw+zD66kK6XHVWhaMHWSOkDdfSiECSM4agFfPgg9yp4ZgnxwVHjfy28IJxOrIMP+ftSIlT9bCjHMolPAlgvZl1T+G2EtYHlwVTkhXgw8v+0LBycxZplxq5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770257634; c=relaxed/simple;
	bh=ZDb7jyjAsAPV9WYYv3a7c+Kr75icJ9/WyLg0dLAKooo=;
	h=To:Subject:From:Message-Id:Date; b=pRTc/zn766qO5uQ+SXBAdhSNSllKmBDOtzfnPZNugTdl2v7CntdXMXj+4Pwjyy0PnFEpyNG+tKN0W7MsnkSZZP6TMZ6RI/6fqmLm+C38FwPxfkSwj6nsMJdLLdPj9lo8ka5gbmHT7cm/yWdP/wNs5J7rYgaDpysP9zZdA7cvapc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1cgFtv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1cgFtv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770257633;
	bh=ZDb7jyjAsAPV9WYYv3a7c+Kr75icJ9/WyLg0dLAKooo=;
	h=To:Subject:From:Date:From;
	b=a1cgFtv93nkBqpwTvGL4QpG227TjDK6Lnr4TLjfXDWCMFYzTsEis3Eg7WrKyucENf
	 KwvSCp1zIcWFqfs6KdlfCYwno11r2fRXY+vbclT7Cg2xh+NwBU9t8OXHhwdgUxz8Zm
	 zMn9/xxD2uMvRAQKDuCn6Aw0u1KzEVegYtptQZwsIaCsx18UT0oWXHwoRTqOfJeWR0
	 Fwdkl4Klw9HwmFAzTSzOAyM2abv/MKy1FIrEGa1USBAeoObo30XZtmYMhBMixAOpMs
	 Kdp6ceQKVnyGQf1kg+FuP13Koe/+NLXmByN02UM37yGc3JVuMYMC29F4d4MD0JOq1k
	 aUjSmoLeENUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F89EA7951
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025763359.29783.2388364544945528018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e88971cd8c1803f8555013d6ac22eb459ff9534d8a308354f16a8f08f4ffddb
Date: Thu, 05 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770257633
