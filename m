Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9504545090A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788901234; cv=none; b=OMQ4nnya7hG8wYZGJhNtARMQizcJdBsfm/3mLWKMY9E674Yl2T9f4B0RtohB9H5NJvEWfJFM49bLWGFEt947YvJQc7CraJ9lqDabEihva251Nke/saY5IrUxUt//7crxIe07NWRWueqeHyAalerJQ4XcFW4IP+PQuNicowiqdY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788901234; c=relaxed/simple;
	bh=n2xE9zYI7bl2QmubLg922yFUXlLW7OGWjsjwa1iI/gk=;
	h=To:Subject:From:Message-Id:Date; b=EEoCxzS7OkRjgKRG9f0bAiGezFaNT3Yp1Cy0DCeevI2tqFrGMh4M9+YhqvKES4f2XqGFLsZzuzBA9Wdzfc8br8TlmvUHDbIpyhovF4vmLLgUEiEzdEFxCizTHimh2gHQ6DBiKiNMPVLs0KFPJpfu6Hb1jb1yZdtMZ0Md4G0oSdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR8DvdMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR8DvdMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5257C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788901233;
	bh=n2xE9zYI7bl2QmubLg922yFUXlLW7OGWjsjwa1iI/gk=;
	h=To:Subject:From:Date:From;
	b=TR8DvdMmugddPTpuiD6t20sgddqnny1tBuIE3sVpJX7GDCc3geC1O+bMUActq3FbH
	 y8aFey/LtC9R9S5d1vDrLz2qXHWUwluUfltBTUhV1KXJA88QkyaOlInGIHLKrTFnl4
	 Me5tei4MJvQFoRvnh2G+BSBgDms9Ydg0YT9QPtDUtMnWNnmES1Uy5uvGFUKyb/1eSh
	 fsOWEtqgHuF56J+HtKCRMwzs01UylRfvvmIrfoFahrQTgIPn+NK7YcnDVsAObhg9Sh
	 TwBVG9Q4D0KaIV2J3pD/d7HLqw0xxdro0lrB9qaw62OEJWV4pOag715wHPMNaK07TZ
	 iesd3auqPOlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3891C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890123372.3933.18099607253322687301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29a1bf71d26a0b9b769eaf5043cdcc0e25d8df9469db07feba531d50885801c
Date: Tue, 08 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788901233
