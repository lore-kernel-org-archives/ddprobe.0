Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415191C860D
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743541194; cv=none; b=g1RDbvDOcqqCSRn657FBlc0aNbG3/AMBg5HGyDdaFXhXwq7je+xsMLqsJ4LE03nrWcAPeZSRAwifmiILVl4oVbVCfpLXl8T06NAXC0Vz1gprEqOFq2rDbxU4GEImJYRY1IRiHcaWh1JXwdDtiH/UStEzhjrLsSVcbWPmjlmGoz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743541194; c=relaxed/simple;
	bh=9YY5CeXHv62BpfUngk/F8so1bIJJcmFjquP+cG5Uhm4=;
	h=To:Subject:From:Message-Id:Date; b=AbWXebanGKxDoSQXHaGOe7dvXauP3FvJks7wMZBW4Et21r65crQERW3kCvTtKxnrdOq+nz4/yxIYd5p3hGYNHnRUtRn0+7Rxow7WWIDIvZy/hxh20GftkHRshtzkIQOa+ThZgng28fxjNjeHNB525kk8mBQSmV6BZqMCANoa1kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zu8+ZOTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zu8+ZOTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC674C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743541193;
	bh=9YY5CeXHv62BpfUngk/F8so1bIJJcmFjquP+cG5Uhm4=;
	h=To:Subject:From:Date:From;
	b=Zu8+ZOTRGWJKHI9m5zc8M9ubZ44fe6sd1z5vh7w8r8BvFhotDICK2li0DHGrmEs1T
	 n++N3fcfvLNWOoEwQS3xJfHyFKWGgfTYHA9XXsTX3M1gjDeht5oyTUJMWV4TRUTJj/
	 eBqgEjsn0fUElhVTr+6VSVO6nazGIEEFjc37F8CnQA47RRIePtO5wWNfmIy3nbO9TY
	 6w9rhdBLD/Jn3iNJKHoCZJsODxgsq5NzbMBHKRdyXH4k/HkmXVmMfruRSgSivdALb/
	 K1AWYC5hdxGF2FVcOImEW3JN7Qg9MJybVgISSajjqqZ1F29O5z/1dP4TDZV9TbCgl4
	 +paszLz9BKKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A033BC3601A
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354119363.31515.18407277261867675639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e052873225e9e55c8906b8c5503536377f029675b00e7897a71e932b96e8e55
Date: Tue, 01 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743541193
