Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8752F1FE6
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761223794; cv=none; b=VbM3MB5HxBVhx+0GYV3ck0o9Hbj6e1lxr9Rehk7MAG31iGpzaMyJ+avXCQarqomlq44qRPlDmxiqPpIMV+k6T0J0TU1DSIr6WAvbspEu0DBuRMAFQYl6XeIu64XCK2dr9b11zCgxJj5MxGXCd/DG1pW9XCxMnQO+Wpvuz+6jZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761223794; c=relaxed/simple;
	bh=UU6o1mdrprCIhKdaLCQ41PupbzzLkSgC6IyUWr0Ys+o=;
	h=To:Subject:From:Message-Id:Date; b=uactFkHd3s/5Ux+9nSpKTGTRMx/2ie1NNTJLuaVggqK2o96Zr6OiS78xqHq2AUUl9i6+J8E3AcY5Apj5J5NdqpgPZJ7/QYyxmtH18/7oQCGS5l7kxd5xEf0jTwyxPkxEOZBzIlPRjCgtUOcfj/hklEzIXG1OXtqGSmHydbVbSU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btRvjzby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btRvjzby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3311C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761223793;
	bh=UU6o1mdrprCIhKdaLCQ41PupbzzLkSgC6IyUWr0Ys+o=;
	h=To:Subject:From:Date:From;
	b=btRvjzby4/qKaqNPmHuzG5EOKZqjuHhMRWJ9p6qaVgrKvoforila38y49I5gNl8Oj
	 ZDfkS9PAF8llfkHk9SDsgDHI55U7EEbR1oA/Bp7Hi7qvUfePCg4yBCqZq1hAZ1jDL8
	 xA0LXLc+cVrxL/9FS2jo1N7hiV+NaOYYNhHtWu2opjr+lPP3/QhxqnRVJOnSkuU75m
	 57o0o40BjiAoQmXuADB3i31unZ5fMGZ/br55rPRRPhInKc0DXFW1OOcJJoctnLsxsF
	 JuskF2ILN+sMJg6Gpf+6UdoylgsaHJhXg7+ts+Y5mOOqMTPMn9VXomSSIYaq/e1wQL
	 zwTyCadft5bkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128ACCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122379358.5831.8615827250483965699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8725be65684205032237b7888a9c7ed0d9244c5fabca94e1abef675fa09b0627
Date: Thu, 23 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761223793
