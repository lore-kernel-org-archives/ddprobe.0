Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236241A841A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752009594; cv=none; b=aWk9PVnx1ltX2Wftucjoh0deH0f4kbsrlbQgtxXqfupBpLDMJnDj2PzK+ALcbkNpWGQoOJ/eXDjAY4K4iYS0baeWQjOWQWyspDaOgidDP5VYiZlioG8UDD5PbXzCxWx9AezuXruVro0frnciVfcP1EsbI1PKPwSlUTgcVgW3NRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752009594; c=relaxed/simple;
	bh=IdEejOHr8YHqPJ8hYhjZB8EggGcfH8s3XbPWbl+06Pg=;
	h=To:Subject:From:Message-Id:Date; b=oXZFlTgkQM9Ccgul8lPDU4wnm40IYmPGehaw3GgEEuWZ9R1V+xNByluIX7ESm/lZ76uSJD92LJ654NcH/W12XQV40OAXuWsYc1kmlEVJb0WCr7EvtnQJhvp4bMyUr18hLztYGYP6xsHm96Oxf6ihfhG3husI+YjvX1kTHQniTf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/swk5hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/swk5hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752009593;
	bh=IdEejOHr8YHqPJ8hYhjZB8EggGcfH8s3XbPWbl+06Pg=;
	h=To:Subject:From:Date:From;
	b=t/swk5hw+REIPr+bVFjCoYMkajBFrIHb76Y006u37ZgUmjjjkIyi1XuzvWsNBmBXm
	 xBBTDBSXKYLqQ1n+P3Zkz+fS6VMWfN+ZQwt3VktuhfGzr/Fh+dEkC43UjgfEbWZVNv
	 r6tTgLd3d6TwkfsNHaGqdufIYVZwR/zsCNZA4eLOomXE1uF5Aaq7cYFES07eQNhj97
	 Q5U6bwKwivOZ01h0FB1DRaBLKF+ExLbr4dqnh+E+OV7xyMRVYnPP1Ktp+W4PQ5uiBy
	 ZhwD5T5VLBGJQ063DgA1wTlh+W+W+/nr6S1Xb8XjZFf2/KNyisAH+uLA0bHOdJqcID
	 ETVWk+43C3NQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A0C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200959357.6770.173077567444119078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e0f8fbaf5cee07263304b014528cb81534b097856db22c4daedd40bc48e270
Date: Tue, 08 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752009593
