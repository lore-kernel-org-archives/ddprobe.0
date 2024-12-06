Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FCB1FBC95
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733475954; cv=none; b=ZUAz7uaiKDOwMQlMCJPwMpB7/Q5TUpfID7Qqbe87rJ9LOLM5yWRDG95jxIB5iMzTba/mPpZISMqqzjspUOI4+Qdjv303660HX3uO5pNkwVflkTOf/xkAoIXFqfn3JpJ1kKU5+gTeA/DaybuTzXZzSpcxuchBNn98hCocb2AQ+t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733475954; c=relaxed/simple;
	bh=U42E+IJwQ165EzO8Pqo12teWpucM+2DtpiMXyT66XWU=;
	h=To:Subject:From:Message-Id:Date; b=VeQxp6oB4ovKy2zMYYAtWNg+GstAWppbBJFpfHOHnY7P31Cvb+87/F6WDtsVjPF/tg9dKx3hHwEuRG5o5hGJlgfsPRCjtPTAGLPMBOOk6gUnK++pQ4uSI3BkWk2WTRoq7oufc89xfYKJRWjHMQlbKFLpYdLSfH4861EK5nN/cJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuOUokgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuOUokgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47F4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733475953;
	bh=U42E+IJwQ165EzO8Pqo12teWpucM+2DtpiMXyT66XWU=;
	h=To:Subject:From:Date:From;
	b=TuOUokgtJGRq905HJpHJhZRctEGsdfWzMn/BRZDFfEFjGTRsKaSkwS9I2daMQDZZp
	 As61aX+6xfwiGTn6y0pwmqcHqQ2gmETNXhmxSXrIURbdCQPjw4KuXH0ECXNsm9I682
	 V/i/8pBsLO66M3Wr07KOZ1KgZ9mX/d7qOmVyXDA7BgGel7Xbr5HiRznqZRlbMaNYa3
	 hAeLiknCPJ88Lz0p2pf8pAmszqTIYjYhYPcSUeEVT7USW+A5r40qhL6PPCrP0et9oC
	 67ZpeGwQiB4QoGR2/Q9LjGlNnmoPg43BxJL8vMsPvPQyi7nYewQj2xgPY/+sHbpMP4
	 GtV5RhOkzXb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE03E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347595368.13441.15119021495944098749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d4313d665325d173f4f04480a7d641d54f41e3c78607cad50622b44810a0e1
Date: Fri, 06 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733475953
