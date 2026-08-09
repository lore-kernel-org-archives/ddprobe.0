Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6383F2EF67A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786308634; cv=none; b=R6pV4GksSQaZgYUJBwjxJL++adL5CoBdjEug4e6eH91uKZcPT3LndQHb9I4ETcD0uNYia4Ce2pY8FGDJlUjnnAcw+b/3bu30qYS/UjpP2ykK82ZNDYtbmDmjAUEAkbgYCgKUV/VnIqLjz/zVAbTvB8JsW3YMKbAFs9pXoLmVF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786308634; c=relaxed/simple;
	bh=jIahl+JghJDJeUS/jr0XRU7TkkDw9/rY3d0ezNlhsR8=;
	h=To:Subject:From:Message-Id:Date; b=djuyS1rwLlIDlvJzhgdxAQnebvblQM1ExZPOiel71lLZa1M1/3GoOq6L6Z5VWRKJZDrE1iTBcx9nNd9WMhQD86QCbOBeiBDGWb2B9v+PlCNgWF1oClGst5TOs2WUN3/4waEZPSbRo4PNIlkJD/NAzgYnYxeRTMh8RpYggT/d/QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk9Q1+s8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk9Q1+s8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9C9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786308633;
	bh=jIahl+JghJDJeUS/jr0XRU7TkkDw9/rY3d0ezNlhsR8=;
	h=To:Subject:From:Date:From;
	b=bk9Q1+s8HJ2sVTjJutMbyMIy8nIyBQizy2gMAxwhfrkziwSaco4JNVETBNbRJcfdd
	 7tHvitjU7CEsnXLmWYhbywb+yh/2qKbfuU4L7b/EuXzwvWLLnXNMDChLEbPv63va+z
	 lLhz/RzYuuyx19vVqlZBId2ANg6ZxqfVDLp+dtkmbCHlKoUMR0fUntFoUH2AfZ1cwY
	 OT+sPSr48le0zs+2GpT1yzxL7cv4hyS+pg6nt4iRQF2dUYgtKhre+SrFDXxNKrJ+uW
	 8qKECvkAk+6Sp1oCNAK/5Twahk7+aFQhFcipV+ADK1gyjF5Yw6c58DO0tysjHmrs9f
	 gkusy1a26ZdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C3C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630863371.14334.3811171439061873521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f099fc844495590a07048cfdcc32da805acea103fab592b1cce582bdac320f
Date: Sun, 09 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786308633
