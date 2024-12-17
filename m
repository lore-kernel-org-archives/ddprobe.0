Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4705C1D45EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734477354; cv=none; b=rZ+bHpPsaTBzbhLQDinwcPAXcXDJTLRLLA1FO0AbwMNbKuMs9eNC9RaVIqbuie2Rl9xbiZqHgITpWjJeLH4kwcDdI/wv7sSUorQBYNdc+sJInG+6uE62iGLW26vyfQ+joGVc/u4i/OAfNvVILwPYIJvLlhLPQEn1rad7+FKFMjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734477354; c=relaxed/simple;
	bh=wFNZS02cqR7hDNhMI2rT89Xj2oElnn+CY9az6/OLf8E=;
	h=To:Subject:From:Message-Id:Date; b=ZJuV8RJORI0ACB2hXDUo4MMmwGH6ng1sB86IAwXMqJQQd8bbRHnj9+bZ53jQsY8QBpVXoMrp69qqu5mhs0JyyZd80+SinX3p9fDi7unmZ+r352YavVDPvEzPR8eMAxwnhBBgIn+y9//j7Xo4upbkqoCk9F99Ndxf8z2ZE2hr4L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/MUUpo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/MUUpo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734477353;
	bh=wFNZS02cqR7hDNhMI2rT89Xj2oElnn+CY9az6/OLf8E=;
	h=To:Subject:From:Date:From;
	b=c/MUUpo4iXnvOWJtsLvJJ6ygY8GMXgk7tWenEz4IJpKJgDSGiisyvDG30Xn0X87Al
	 xHCwpJcCTnnWTunyEMVYg+uvEUXjLsQCbhiZ8cME3Vv6MdkTdZPqJpQRDN6OY5OLmC
	 262FFdDtPdAIw48aIaCnVM2uKFSr6NhqcSRwUKuSiK+JNadL2P42Oy0wRpwJS/5oot
	 tgIN9qbf1HytlzH2cNQc+RHaiktJIGmSouqykq3R5Swt4+0VklyD2MGJzRhKsseW2v
	 jwOCAUwywUJOXAQcPvURR6/vF6OlH1HKFjDA50g82/eWkJa+hvUmW9aW6IFsw0wG9Z
	 FcrNwtuTqVG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706DE77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447735359.2409.14545709410842755362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0e49d739adbe9bed8d008283c37b5d41adb12c076eac9643427a6b81b9f306
Date: Tue, 17 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734477353
