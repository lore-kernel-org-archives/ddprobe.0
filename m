Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEB3246769
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760594394; cv=none; b=FIl1s4587lwcOsWAizFwb5a5jMYjl9nP9Vf3r9YOs1I8UAPG/5L+N6pivAoXal5i6slYFnAhEMSpNIGHavBMKwaMnO3yQQ4ZVvsxCv6Qy8qZp8T7W0oftkY89a+cf4U78BLRq3UoN3UDO2flRnLMW4f7de0Dz5nQKOSs6BeSgPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760594394; c=relaxed/simple;
	bh=wh9GolHM5n7ylZjpwxiVTpHjYshCbwF5QAVrak+71co=;
	h=To:Subject:From:Message-Id:Date; b=VgTCeBnJ1PxVwaAXyGNXlX0sDuFdqivl1IQFOfa55zKkupuzJGfBFJGtfcqK7QvPH1qSmQML8831xGfdSUIyCC6ccisepAKbcwexWj+YIs4Lke+PGj6Wler26TE6mMWk882WqDq30518E9MBy9LXERhRNkuI7B//o0SRxclvvt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT8tBCp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT8tBCp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA681C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760594393;
	bh=wh9GolHM5n7ylZjpwxiVTpHjYshCbwF5QAVrak+71co=;
	h=To:Subject:From:Date:From;
	b=mT8tBCp7JEWwgDHzLNWPMX3Wra1R9Ata/x20cZL0RQjq+qptQrStrc80IgBasLxHi
	 GDKu83M0D4b8yaL1DmvCFLZgOhCddpCPeSXHCoosujey+qKySsN5nyPT5mbIafoZAi
	 lbaRNf8jsNVn5N3Zp/+2AxfhMCo96NL3DH7ufuo8/ywzEcaRz2+N/PWG0vYv4YQh4W
	 RDakemsBU98yPRTyLRjvRIGqVRqGfnpks4g1WdkYuQ6+LC5gT6CkhcLbdR9OYHIk8G
	 JvENRmNnncDRI3u3X1XzYFuFlzyvjlxSt/nXTOrFaxyVvGpPi9Cr81sfqZgaj5I6bk
	 WxLU+WwKybsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9895ACCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059439361.21350.6792982966272488970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8665bef4618e1adcd1a725377c4334bb0ff4114893de380cb4d2b28ebe03f22c
Date: Thu, 16 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760594393
