Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69275303CAF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765188774; cv=none; b=GGCtsS2zHINpjcwv9+Y6CMwiFuDZlDr3CxhUc2it2Izy9Y68Wns9MfAmNTsLXUAuHYoOJV2YrmqOpBNHtF4eU8gqppltIcsh46pUsBB00J4o0CRuzr1h0tanpkgNKrP/vbtTAO+Ho8R+kqKrsAcfhNREGTTpLNuyIdtMsqRmc9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765188774; c=relaxed/simple;
	bh=14LjwJwVMzy15icZw9ieuby9xv/YEsJiJ4tKg77qwts=;
	h=To:Subject:From:Message-Id:Date; b=kmLnc5D0Qcgkfznn/O10KeXYZrjrKkK+PQM2HddHoHx/BwxCzDsZFvHETMxlMHM+UY1sSnzBm/KBHY/bMoC6mEWoe19dsy3OjvDdZPmxCO4w79Wv+Spvf6pwYF9MdFQe61S8882MRo4zhuuiU+Cyge6TPVTBpfnZLqKbHVJosKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnusFuMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnusFuMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0788C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765188773;
	bh=14LjwJwVMzy15icZw9ieuby9xv/YEsJiJ4tKg77qwts=;
	h=To:Subject:From:Date:From;
	b=ZnusFuMNP29n4IDFCscseG755GROfamdkXKp2VB3rkv7xXXgxCzH1NccFjpo00ja/
	 VqRJHqnwPvSpg5UxYuPUOSqmXLAPdOu8A86kDt+07btyuHK6MXk8CoOa0s9hI9HJWD
	 dDSH052XmKuRmI+laVXIV/WSrqg3dg7RPVXMdgyFKgQd6+DjwDZVe/OEDazhyTv1LX
	 vrMsBvsbhubKMSH0oLN+kAd2UQkl9wxjZTBUdXQZitVIsZGcOZIuhJJTTJyp6/G8W9
	 PZTOEs5mN3/EOYDeR2UD2nJBoogkc/R2IpNzqP/Xu1FqW+10TwIV4KDTgoW6BVYx2Z
	 FVY4b22jy1b+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90428D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518877358.10283.4038801317616648701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22577dd2da43436781bc721ad02f6657d3825e4eff08eefd5d5f32ec04dfe18
Date: Mon, 08 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765188773
