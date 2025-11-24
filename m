Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C7D1DF75A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764016974; cv=none; b=mGH9H1bKIWaXJg7MVRI4c+uTuq48/r8FY+VSHZHDyZ4sti0bty5F2Edey3c+KlO1+Izim2PJ1cBdy5jaud2VBjnx2iCFbAbtZz/p4YAqcY4Hy5EK6KFJyykDOVp3zJwFDRFSiWZcbGrh/wu8B8ANuMjFLYCz4QROEXBjbEJ1Mp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764016974; c=relaxed/simple;
	bh=+2EmSJ63WYVLdl/8WZTugJqFEodifowps0yROFJ7ups=;
	h=To:Subject:From:Message-Id:Date; b=mSpQy71TPBbrwRgbjOT4bt614Ifmga0YIPkEF1Mcx/S6w95CTnKDNMxclqGeQebssxMNXbgT6Tar2YhypIt6uOZNJ8+OW4ZtTVnu5GgSzFb3jMBPfp32deoSChDJgAs2nwQWgOV03iVtp1z1UHW0Ids/uRCh5kDwhamcu+qUBMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adU3JKtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adU3JKtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764016973;
	bh=+2EmSJ63WYVLdl/8WZTugJqFEodifowps0yROFJ7ups=;
	h=To:Subject:From:Date:From;
	b=adU3JKtTTL5Hru/abCNAHWqtsuLxNGd9/QYJag/XMsuNWSK2votkkbozE8yoYQrn2
	 moXKhlG/3XEqUber9PvkcKuwSXOAllzKu3lg7aTMYnl6MLGfOgKM5lk7XilvxOTTZg
	 hRQM8BVnnwUMnzEnn7hsTJj4cirHWO7ccbeKgf1cWLEECTQrDs86NTNtNhXqb5bGs7
	 HqEsXr1fdCjDqcmBOY+FJaucQ60iNhUPYoXongHDHYkgwYnE+rmmh+YlXeYXkt1qdT
	 UgwXcOgRw1/LO3M4j+iH+pUsVQHRDx2TkYArKjf+KUUNA6x28Jiz7l9y9tRCitprLE
	 7bBk/yVuFJPsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92313CFD356
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401697358.20119.1219728948286193692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bcd8858b7c160ffe8710554b951eb6f11097b59ab5e3572672416bf0362c9a
Date: Mon, 24 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764016973
