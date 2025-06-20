Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E530E2036F3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750399194; cv=none; b=rBKo0PSP/Ri1ZOv02ql3TO5pffea7J2nNNcX19QbFzjkXjxj1RPgzIr4LCuHgQXLnU5FuW4LdSceQeNhHSsVdLxB53ljw/p/VLx0xl17hOED2e+tuwNphTE0/N7Ju58az4T3bzOGl5nYMAbBZm3EAF3PPEdyv9z/DbUY3NMhMZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750399194; c=relaxed/simple;
	bh=xxOFB3vQyyaO3BpdmR8+QsOv34Stq6lgvSDumTpAhys=;
	h=To:Subject:From:Message-Id:Date; b=TdADWhL6TEf8mMNT+PTHytTxJSEwiHbOI6NoqZReISnscEAarZP3WQP1VeBhmBXRgXDh9SbdlCgD+mTm4ZMtlq7VHXhqkDdeDkH8Lr4HrRuhXo5ZctWVHubLZP+b/Pes98Oz5Z+YQEcTGIyhjySn88f63mWBu9sySq7NJHcRljQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWi0JDAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWi0JDAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EAAC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750399193;
	bh=xxOFB3vQyyaO3BpdmR8+QsOv34Stq6lgvSDumTpAhys=;
	h=To:Subject:From:Date:From;
	b=iWi0JDAz7lHcW4hYDvMX8ZZLAthgXysH9NPAdO28CvSNbCuKSeEXRP+vRcG7mJ1gJ
	 sWqArd2Lo8bg3trLzOqTz+UPr9dx9hRLsHEBUhawrThmvRxPQxsCTDOj4yXGKqC41h
	 3nWYXW/2LSjzVRTonym8NKIUCL5QmPCsHtnrxB1S4nanBvtFAx/BzaLxeh5psBaCkQ
	 goaufRwj+UOlCmFcWR6qdSq7qQNjn6XWJVfB5rQTgT3JN+hy07ix1pr72Gu1tw0eLm
	 2coa1oVw8o5tHD+oXbOB1Q0P7TVGlSorRgon8RyWzMQepFdPlFi9BqCD1GNMwxKkq5
	 k5rHIoxQdsw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90702C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039919358.16761.5333360052730560714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e29f1405294d6ddcafe677a59cf096facbc266a9df57e728908f3b7f59e7d9
Date: Fri, 20 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750399193
