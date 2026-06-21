Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B92A22E3F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782074194; cv=none; b=B/yisfDnXZFAGR95yYVdlz8Tp5SmpF2LUqnmuqteRlO7d03pRAWhFBu6IK4dTtTPcnQofOeLTMV5mqJkAiuLezxoNRfge0pvR0ul9JoEf9ykn8TRqJYX6Gau7L3xAbgD1ixRf4Ykj/6f3RK8VnqyAPE47H8KINBfnDkTm9apZCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782074194; c=relaxed/simple;
	bh=UokGeuw7Q8+WH0fRJHu86ShO8Mf2lvqvwK2JN/+I3Ik=;
	h=To:Subject:From:Message-Id:Date; b=LXKxmprgWJIJs+SrCuVS0wbOCww4Nl+6Xms0A74Fc2ExK3iF4pE8agxysuW6TI0JwM1ROWS3XlbN4mU5MKIqXGihlAkR/qahGrGji2FU2kG6H/6lk0ANfYfsF58vPaGVDzS0eIQcjU/wMsQzyhkmIxkmniGbneQkWdZbdgxFPik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqsG/ZHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqsG/ZHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3298C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782074193;
	bh=UokGeuw7Q8+WH0fRJHu86ShO8Mf2lvqvwK2JN/+I3Ik=;
	h=To:Subject:From:Date:From;
	b=jqsG/ZHNUktS+uVlTHiDwy1ltRIUAr5cjsNiktNr0KqJUYuQgagUzj63jg2j6tBzb
	 JTEWdXGLzc12mBf5yeD0qQaE9/+qvA5v3D7tnoTmLap1ZPvtleGfCHk7Kamv2l8/sf
	 wyeExxgRRNMjUcIK8qHQg1kcE3hqbq658Yi04B3V+ECQXRraOyHsS6GexvfQoU8SPB
	 yCEB1LrxZT6Pa7uVWSuXv3GixTI3zu+t+PMqZ03Hy6d5BV9f7xjchP7cxjuNOYwXKv
	 KrpHyOnjJY91wGhyLXCE86PFdLNI/BYhuddff25TuSvTr75sQpMs9R9zbdz/qKC6Z+
	 B2QOJXlVruFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2669CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207419369.30916.8789194702425885132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a8cedf8109903f1aeffb6b40d9826758b12f135f54b5f1d4c015e4d62b68cf
Date: Sun, 21 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782074193
