Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC631361
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747332594; cv=none; b=LuRKpr1K9eIU8xaJXDsovddMmSeZmAzfeSuteiQKnKqvsp+qbdyhZwLNRHXCjOdWidWFqdmGFTnWpjshlUZfjKThPLg+XGVk9QGPs2D6zpONuJIjHgxSPqAbcKeyWETqyLetb1qb02DbDk3ImLWuwnZv8sJJVjE8dDmLSAE477c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747332594; c=relaxed/simple;
	bh=gRdUFahxHny/JpwkOiRqsMPlu8w08Is0/XnW4Nvyqj8=;
	h=To:Subject:From:Message-Id:Date; b=c6KL0N1RpmbXcWPgVfixTVEvV/mXglY0m2YsdHJdfsDK7aL+/uPy+B1fIe+Uef+YVsG8hATI5LTNIFFuNuci7jmQjYZYFqqN4C+bkJK1UzvqyBk5xmogvx5h6XmOtgJSsHdO9ZzydYneTmsTTaE5weHtfrScvnwyVha8LDzIUjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi1RRSjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi1RRSjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747332593;
	bh=gRdUFahxHny/JpwkOiRqsMPlu8w08Is0/XnW4Nvyqj8=;
	h=To:Subject:From:Date:From;
	b=qi1RRSjGYZra8wfsg52Oe5L85o9aDf5ZE66M2Hy+arfLwV+bKo2bYnn9UWOib4+Fk
	 KKTY/7eU5q7HVAP50HrBU/F2MYo5CeOew+0hSg0U6kXZpIfTs5hSzZkZtJEIA/wT0G
	 jbuLrQq5eIwyuIbhBjG6RzkAbllVweKMELBpBITJS1+rzDq37K67t2G1A7KQBptzlz
	 biYENwXXSt549GbSfWfkntyFP6o+/HJi9YvdC5HPU0iqLkfeijTRhr2QOQ5yomBKUx
	 3GRenQDvUbwqiv3mReu7INcbdl45SgxYdtmoWjdbtzzCPNeYolu+8G6J7t9vji2kyi
	 mND/EGzYfrIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F497C3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733259357.18121.9365399082887422726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e4f99e5895259587a2003ada3204a397825084344d5bced78ea91a56ac711f
Date: Thu, 15 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747332593
