Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D651AA1E0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747180196; cv=none; b=MzqwgwpPDs5N9vhLZq2usbIRG/gFLz6psahUBXeQZzWuiGCYxT1TfqMXfGw1p0hsPcnveG3c+xSi5ma5ggCdGoHHjXB0acQTjfrfjXb1n2jFu5FJJIl6V1zrTjfqLc7IV8s5gpTyxETvgBMBcYs/ET5IcrVdffXghezNAt5a82I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747180196; c=relaxed/simple;
	bh=U6AKY7ExcZf1cVjljRrbAbCaC03oMVOe/jh4kcHYSj8=;
	h=To:Subject:From:Message-Id:Date; b=Wh9c0aorGipi+yBctHrEdDa7UXDzDmyMOA8H5VhWnQmz+breYQdR4dbWJ66iN+N1oNSwbkhdkq1JE1vWbGQUvCCJkbiN5/JWT1YMEjnymWfHGmsCuGqraSjLWE7bz28b8IbjAaSG8ezeVBwrx91NVRP17nQ5VOrMl3ExKz/2qk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrTowRN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrTowRN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ABC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747180193;
	bh=U6AKY7ExcZf1cVjljRrbAbCaC03oMVOe/jh4kcHYSj8=;
	h=To:Subject:From:Date:From;
	b=OrTowRN7ebVFdaZvZqBtkvgCgNFBaIc2lZ8fOvlDSEuVAVwRV2GYnWYE2q062hbKL
	 c7gnER5+pUhk25K63FxNOy+SxM/kFvsYiAUuVEnKz2M/Ml1gwwUgF5N4X5bMOnM5sa
	 QS2tuxcHvmjeRIb0Y2klo3MLuHN5VZAsMmEZMStCrq9ZzAt5uBIfqUxTNLMYYh0JJH
	 Q8wLsV0woXRhn8SJDvCrbNx/gUOJcozuzGUb7jsfBJ5oD1yPdRvbXQUrKYj32v0RRx
	 myzvrUeRQ9qvB6yZ9zWULbemjzqlLaRIW1XXOHRa5igXDw4VCzeb45o1W9YU17+Eli
	 pQomxlfiQNL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186EC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718019357.25487.9234948124969711765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9508ec6acdf3e7cb0bedd903b41b7e6bb8b2d14ac179de70ad86cd9f512d8a58
Date: Tue, 13 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747180193
