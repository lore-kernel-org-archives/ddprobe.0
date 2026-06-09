Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA043BF67E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780977274; cv=none; b=P0ovWiwdc/P9/ivm0LmyyyZdSg5C+2VWepn6IadrUSkOyHGfQQX+XYwfoNTjjvRf/+hAS/MzsybwFSkqfEzKFzO+2CZp1Ff79mAKXCvySfzpBq7zrXgYVdzcSxUxVtt87zDwR0pYJUQOLvp1eLg5BBjpyilpyq1SWNXGBEe8+uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780977274; c=relaxed/simple;
	bh=dKwBYw48oNF4UaiVP1oP1wQRH4cVJ6k27ZJA1r/dmO8=;
	h=To:Subject:From:Message-Id:Date; b=kq0yEo1F31hEAF9Mutt9eMp5mszA4NDuR+4n18ygG5nf+unjcJv9IOsm9bBwIPbucfDSjJ6+SuLC1ZffESTBC5vIKm8ltkDUFHKpqpFV0WqL3RvMfofGMUP2gyPjSA6Xyia2lBp9jn5vswgP04rkVk2dWRZ0pkNcSX90xEHmuJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9+IMqd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9+IMqd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA36C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780977273;
	bh=dKwBYw48oNF4UaiVP1oP1wQRH4cVJ6k27ZJA1r/dmO8=;
	h=To:Subject:From:Date:From;
	b=r9+IMqd8E6XE8mBBNu5nuWR3uU4bxFUrv0ofEuGfOj4cjIyeuhfxt1UL3J/DQ4bm4
	 Y3MiNmRsY+1mCiMhWAbFJHjGAhRyOpo7Q1/Ruu5dgEMCQivuq1UhoeWgaYHNS27NSF
	 41gDZ6RBVM/sngrBHJ4vVt3p8YONdOa42hFYXzsZUvwKS4yrXcOT64qqZSReHmNezz
	 +CWlUQC/kDFQhD6jWFVonh2rSBd1TjEM+R6mhD0LimK2e1WzxrfYTgusgUiAm5JOMo
	 keGUo3prwCo9ybeEY7chBkQJ9xjpz3yQ2IXejkiarlxSEVu6FudySoVvMoQferIhbq
	 y1RmcQGt4MRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DD2CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097727372.30505.2144474615015265840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35aa0e30ce83a5db27eeae09894baf71e224a9c723fcb664ebe9eb745e9f59d1
Date: Tue, 09 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780977273
