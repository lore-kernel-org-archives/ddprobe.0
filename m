Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4332EC54A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769601234; cv=none; b=MOn/DniMZry2+qIvRn+gMGlyq4a29xGUkRD9lcfPAYDuISAuQsTIh6SSSVDcp9vJZr+My8hzOMm7bPseBJoWAAHNX/YUVSuurM0ajhlpyTx5KivJqNhHrzyel3Iv95ziMGzV7Or4j7RGMyGoy6JjF1RXy+U6jxwWXIue8DhnkV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769601234; c=relaxed/simple;
	bh=bx8lkXxpg+KI1IclbS91HZSnNXStSY37xO7pzzuVcSk=;
	h=To:Subject:From:Message-Id:Date; b=V97LpQhGHhtSsOG+jxe0TKokvDlNy6tQWZYrevPDGjoL3QrUEcq3xoM/lIJpfD/lzcjVb8p2WEYUcpeZFzsPSm8FTn9FszqYgC4UT0zHCbyhZT8ougAErkjV3Tv11WGsHzUyQAyVXly3TjsmVXFn4QxaN9Z8SI3zC0Un2QthE6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcLwVGZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcLwVGZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB3CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769601233;
	bh=bx8lkXxpg+KI1IclbS91HZSnNXStSY37xO7pzzuVcSk=;
	h=To:Subject:From:Date:From;
	b=lcLwVGZ2CLqfTczMcJe/3qztH+zph5i7AyMRWJ9KWmO77YicqCEPWGo0zWlUVKeQ8
	 jjvUNpWxZgielzQWfRMs8hv4oGaKYiFqbTOCvNCQOaLXVOROpUJZsrpYxImkjloIMU
	 YnKRiGpljc+2hS4F79VurT9BhOIlWqv3fKqVNQBAOzo2bYHgedqrJC1Qx3aPalhhpW
	 DKgtcyXW9JhxFzNSjVmiousB46gLo4gKuKaCJdWPf8dml+ICW72B/Ew7aBelZKt0F4
	 04245Y3UTO94oHmtk338x9qLx//ihNUm3N2YFwm5+d7NyAfrGjHpRoOUBGYs1B2H95
	 Jv+ZhCFReTCGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F704D25B44
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960123357.26134.2409444811558552780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ae5cc9525c3fd6117135793f116e0fb7f788b14e851b91cc543aa24aa6cc28
Date: Wed, 28 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769601233
