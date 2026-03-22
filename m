Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BF735DA4F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774193094; cv=none; b=dgpWVHJabDGqJkRNqU/WKJ6p1u9qOQAsEDRqhcf7OzEvtudkiKS3hEjjWrvc/WvYPeczht5opXr1g+5S7YfoO9VNtr5kVIQYJCAtfMSQX5kIODVpmyVbbth5tdnaoghcFQ/Xw9J9W5HmnzPlal7MyX1SJ7PzSUOnuND2Jho+tX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774193094; c=relaxed/simple;
	bh=3H//DRvavOd1yO3zucs56N5l/Rkr6f/YYuJPRd4gtbI=;
	h=To:Subject:From:Message-Id:Date; b=j/dBhz+hst8SC+btNtfoRWRchAfn0XcgU85Up0BTChg7wnlC7R8m6k50DitW1OvFkVFYKBb90CcETKbtK0zTRTdagMgBKPVt3cybMVKM8nUj9x85xB0UF50H8OiSeh29ZYqUfy6bq6QyIYPYsKjxKekR3FN2TM765N/Pp4bdPdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1m8ZV4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1m8ZV4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB19DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774193093;
	bh=3H//DRvavOd1yO3zucs56N5l/Rkr6f/YYuJPRd4gtbI=;
	h=To:Subject:From:Date:From;
	b=p1m8ZV4u3cvBdiuHTvF+80UFREZ12sbCxtq0w8Ei+RUcX8Y7YXhNqcnmpjkPUblSN
	 ToV5qDT9pMWeZia03QNSzGjU7hHDFtYzowssXndpGq988LelgAG85iQbhsDVK5GeMo
	 GDkuaTrp2ZVs9I0F87TDN/GcjvL1nnBJSNU0Vw8DSef5fZFpoe+0TRNmWJFp03308/
	 lVZPXS0Or5ADLVRNh/MggOLWQ0nBmfoU4O2gywMuCHunmCowMRrWPKf1DAeWbjw1Vk
	 gsE3YzTs3JesRfqb6cU38QwyI0o0oaXwDQ1uv/iQgkWxWw/LKrd09MMD0kFnzuTvDz
	 yzN7r+jX7HUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E73FC72CA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419309358.30831.12384837624273302040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42165587094d87334d96d467c5f34514fbe2a7c5c432ffa5a58e690a0429fe36
Date: Sun, 22 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774193093
