Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBA4433B3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775270734; cv=none; b=UcT2Qfkw+5k90Tw8po9gkj0hVdoEhWhl6mJA5UkLTpPgQbp+QzKFUw9cT422N3vhD4IxuAFGe5gtYhWJGYBxxBgs2usVplGhGh6Do7ehGEBSJJ/Cz6LOvVXseTRcwFAwHj1Qy9ocG/x9Kh/Uo0lRf7FlkGIZQ4XA0InMwvLxWwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775270734; c=relaxed/simple;
	bh=yNOAFi8yCef6OGIVmxzNq6nCiLrBNO4PkRWyjK+pWPY=;
	h=To:Subject:From:Message-Id:Date; b=uh/eqdsdLCqmOe9gahzSo14T4JwGassu7JDptiAcUWLPbYFHu7qgwdiTaDr7V/n/+ESnEsma3ExAzwURHRhnU29JMc7bTI893MBxv9j8nDnZGoz2XQu+xwYIz39umDcCgBLFikbIul48ggg5LBNRM1d3Ol2YXxwCUGXc8qqSlso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCsaFAx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCsaFAx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775270733;
	bh=yNOAFi8yCef6OGIVmxzNq6nCiLrBNO4PkRWyjK+pWPY=;
	h=To:Subject:From:Date:From;
	b=YCsaFAx+FlqUwfJSHD8U+JNWyu7GHxhHx/V8Qq0cmueNX4TIbioYVIdrqWnm9VkLh
	 mI7wntWXFJNwMV+ZY5qa7YKR+NOCMhjRvUyjw66oe7qf05v8VHXP2B/Tdze0jxnpWL
	 bbCCVmZPyXhE5jcbQCuK/RtijwyGQeDBG8Cl7wOm0D7kIh58YIeet5r76luQpDxdp+
	 +dYBXMyVg3JZGQa3HgQANyqB3kjhUr3KH9a2ESJkiGWkD1vv8Vhl/HkcvJF+c6GGJ1
	 /+Sa5FavXl5JdQ9pvKkIl0iCdikKynIx3NaJ4gTrNMLbcYDaGlFo7Cm6FykTJVT5wm
	 wtW4Rzy4/r9tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7373E88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527073368.12659.5741184432338367834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5141f097e32c973b7ab0426850e07e90a3a41de42c7d4bb9e63fbac273b1b6
Date: Sat, 04 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775270733
