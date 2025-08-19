Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C8A2BD030
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755579594; cv=none; b=ii329I0Q+TB6HZ1+fbM7Kymt1Rqt1B3WuN3WGUZugwNV9NFNlSNycxCNDq9YyPFbZJBjk4YWpfmmkXvITtzYKUqeVMbgEF+PQ12Qree852It7rhoiEqXjfbq3Aulgztp2RiKcY3NqHQFz5yhVPbhIMeipi+jnOkpCEJSxH1tdto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755579594; c=relaxed/simple;
	bh=OdgQXuUsWy22LIv7MxDhQGibAzlmtfcmuWE3jrFU58M=;
	h=To:Subject:From:Message-Id:Date; b=tbS/mmsBg/ybmYPlal1QbR2/I1IeFA06UtopTvu9u1i0/oBIYIfaEhEaUb8zcFp4upppUSGDLeI1bhZ3+qz5crVcmVTVRl0RjM7g7DvdOSnjeYid/CSenaWFgPMSL4lutM4a3f4xfhFBxXsM20e0dq0/Jc+vuk4W+/TSfo/e9uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ysly5uA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ysly5uA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC33C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755579593;
	bh=OdgQXuUsWy22LIv7MxDhQGibAzlmtfcmuWE3jrFU58M=;
	h=To:Subject:From:Date:From;
	b=Ysly5uA1V1q57XAHKh8oE7IXZOWl4rwtmJt1OIg7EAumnYhaUggLCDUUk1AR2uT3n
	 Jmq4le757u7Dg2LsKNqgZMy9hgvHoSxELyDsByPHpgZKLqFX0XxWkpXH6fYyGAB31+
	 zlBNBJZM612+7kDr6GD2yWeu5dsFlkruRzj/Ji9g3cpGsFA+IeHt4QDgATwYkhqy3O
	 0GLntaBLgAirplosP2WKx7t8ne1ldwWG8gV4cjX02Wr+MnSzd/zPLYC6LE5Ifd7TMN
	 SsD0I7SKKtlDAs+UuH6/Y11t2lPkFUUJp5H5NN4AGnRHMq/zywxnkCXSUoft2vxsTq
	 lrf5qbFQOGNZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE0CA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557959357.10163.6518125386624077142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1226637498f6d0a4abd07b9c469cd2e082a2bea336b3920bb6a95d6ea9a5ffff
Date: Tue, 19 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755579593
