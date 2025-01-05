Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B71849C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736085354; cv=none; b=iR1dqDHAWbF04mWG9v9v6xAYPjxkD1msIJAqcGwKuaaZ8VKbzXev2oKHKRZ39xiG+q/qxONelOnliZDg466WbH3SNdvi9s373XanjX5SiKFOly6I+65IVWzwVw2AfnuoXbBJSmbi+oLbOXXctLCu2+u81HG895YR/2IsViLnhuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736085354; c=relaxed/simple;
	bh=huJVy2h/nZyV4mXqLxAfq8gMIsstCVgqqVf8e7+Ge1I=;
	h=To:Subject:From:Message-Id:Date; b=VBWZoFbHxSpqlUQ7I3RdwGkjTzRCQ9QuPZ2T8pdqBSmEqo24hUQwN7Z6iqslsaOiQD1azAv9gopAvKijxwgA6WMpAbntfJr+qJpWnVlybqQM0e81daTfK+bFDZm81ynfkqDoGbCkei1bvKy96KlsOkLFRQcGGWCMxWduRQ99Jfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2qZG67F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2qZG67F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF281C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736085353;
	bh=huJVy2h/nZyV4mXqLxAfq8gMIsstCVgqqVf8e7+Ge1I=;
	h=To:Subject:From:Date:From;
	b=e2qZG67FeergVGKY1AFVI0dtFqDJPLJldenR7mQrFAhRrQwjHjVHEUtKwlGqH2SMh
	 C3OqS3/rxVQY9KzdBFPQ2NE12sRolxRc1i7KktGP7+neKI1xRa+wlGM1iF6bStMo3a
	 crUMC4bC1ufvO9XvEOZx76cwKLZzyS5iXeyK32p9dUgrX3Nj5xsQFewNbEC6W6DvnX
	 A6kA7Ayf0gcZv812PYtfe1UEOI5iP90cVOz6EKILNsJHjNUNowl2tLkVxotG/1xIIr
	 emzKYN52uQ2IaHtyb8P0ukLa46NT3wuoJ5051dVKSE1IdTCUgjyiXcyszBBZlEg4vY
	 cHhxTH+BLPFAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9703AE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608535359.3477.11316141475086354939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d1be1ff547691e45527ffe93eba9f59b5b42ad71a300f028230cc006aa838b
Date: Sun, 05 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736085353
