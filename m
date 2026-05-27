Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D933F58FB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779907354; cv=none; b=Utj/cVjZEOyqQydvYy9Y2MfY5vOpJblMML8zVHU26bHbBOc4uK8ieclhIWDPqqJQ1+xLDgRFhinhnNMGvHCX3W9aQHJaX0aTtK+HSmV+BNRii16Jn/LBXhN91lqi+wSNwlnGD2JeWN0oquZCopB0XFK/b02A5pLFr8ZDTvOsZAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779907354; c=relaxed/simple;
	bh=IJOBt3pLBlIypzh0j9gYx5RLE4KHKPiqfrqtV1K6V3Y=;
	h=To:Subject:From:Message-Id:Date; b=d7nvO98vgIeK2QcVnkUzE+y7jypw62/kpw15FrptW9ewmxxlIyB8H0/FTPZalDcW58qBJpZpnWKwYJeF9QA2ldbTKsOfCC0p0gRfGD2x6m4ESJKt8hnFtj3bcKYYEB7PG46leZAq3V5r2Rlf2XvEtZ2NC8rp8MoUG0oCtgk57G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRg8ERFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRg8ERFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C437EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779907353;
	bh=IJOBt3pLBlIypzh0j9gYx5RLE4KHKPiqfrqtV1K6V3Y=;
	h=To:Subject:From:Date:From;
	b=pRg8ERFttoa6jH5wXU2bXzdg/6213jBjVcTCZg/uTMYqGVxeS972DBcQkUaz3dbSu
	 tPtdRjNWGa2XHg69Fl4zVSmqN3tnqopLP4+AmbmDbc6kvSJmja8sPbk4b22CbF93qI
	 469vPYCuaFHuINeFN27tufJrJTHnSfmCkmgrXotZ1Wm3tby3H7reTcML/0w72RuM4Z
	 vVtD3zE2JMLZpfa0/sd335U2aGJLQXtzQ1tlwDkASRPbcJqf2NiFviYsGMFQUQG16R
	 tXVh75440kU9CJYUb1elIxLqlAXzx7jp7e8B4uPsVLm7yMmEQZJ2vwVnfMTWZ/txAK
	 wpQwtMVlk0MSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CACD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990735369.30749.420890299152488871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e67f8963374df209fe5a81a2a620c5d5c2cdb9196a469b421d32f15cca3ffa
Date: Wed, 27 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779907353
