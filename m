Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE56143F4B7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784565515; cv=none; b=NW+9an9zFdII7TkLV9LHugYfbk5gocpaNmSFUkoeM7ncyqU524uwZRJbG+oDQiD1cGJAziF0hhxOFT6lECqwYl2/G9pDvFNIvTkCVqwPfZATdg92eWAWCYySc1lPETI4x8KWWqd411CU31Xw0dTMD5z6lUKJQ6v0JrOK6CKwu4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784565515; c=relaxed/simple;
	bh=9bQGlFcFPgN34mEaZIasltNoG82Op6xRwMI/rdgrbR0=;
	h=To:Subject:From:Message-Id:Date; b=hNDJtchyBoT8+C7DKSGj7wWDxkOFWBkO8SpiWMJHfOftEt9oeDzSDs0ExxNcNhggtT0TvzRMS6HVPX7C1wswmYfupjDq7TJDNnYphR7ttmHK+5K1FOdjKWQkv62vuvV2eUSbnGFvvMM8x1N4FCP6Q7SeEHtqVF3Rfgsb+x2q6/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivKY34bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivKY34bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1349C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784565513;
	bh=9bQGlFcFPgN34mEaZIasltNoG82Op6xRwMI/rdgrbR0=;
	h=To:Subject:From:Date:From;
	b=ivKY34blgB+m7CXlLmJ27JbH/XhX9WIYvDs99t5Nm+jMKNPYRVTrN0Myn6sd5om0Y
	 Z8jfkgXPnxKgv5O4hwmg1LmFZmNklEaUcwySUogRVD0EHMo2pkht5kEhyL04rMUNBW
	 3GyZBoUZUjydtlDtMtueB1v6ZYzcPCx/Sm401fnorYr7kUpCs2oMuS3JwoYPrDlEnP
	 b5I/qbUm6wKeqjPV1o4IpHkws5hu+sAuSi6bXWy85fayWQsly4/+QB4H28YH0UNI+4
	 SZC0oRuuLScAUR6qz1X/bWE/R9j3q6EUWheZJlZTZmAeruLqyoGOIMzPM7mQcZj5j3
	 Uu6Ru5vQB/A6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD66C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456551368.9888.15931364054102473874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7beedbfe1eb28868ecac50ef9cbcbaf6270fb8627c1787ef9d082920909239f
Date: Mon, 20 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784565513
