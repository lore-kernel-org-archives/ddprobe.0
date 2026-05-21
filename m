Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4500733A9CB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779351634; cv=none; b=uH/9qpIq0u2X6eu/3yyDB0RLLh+xbfPbXBg3+GLFHX0jHxOueFGm4awqsaNFe3FMRMSu/gp/VUSneObs/bASa6GsLAzdXlJPp3FKQnkFoe1pZXsap0j3z5YAC07Lj7KzzQ5wZ6IM8uWH0UeEjDGO8wR+LxIH0os03MZSYnAfER0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779351634; c=relaxed/simple;
	bh=yFAEkG0N7E8XzajgYSDChWKIBOgIWFZtcpJCfL84ZEg=;
	h=To:Subject:From:Message-Id:Date; b=q4e0FOD+IDU+kSywwJ3ktthOmgtMmbrjyuYhA08ncGyc6M1UsijLO1TqSfqTTDHq5/vnkrJlwf9AZ/q6wWUrXtGaBDs95Ix2dIytBMBE4soBncx5QGPa7PozpFo5woM1PRPBhDxP2BVEhapPrbq4tfMNPpsM9L/vyGyW4cJzFIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASSVKO2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASSVKO2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D20C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779351633;
	bh=yFAEkG0N7E8XzajgYSDChWKIBOgIWFZtcpJCfL84ZEg=;
	h=To:Subject:From:Date:From;
	b=ASSVKO2iY6p+5rDduAwvJwKhWNtTo4sx1aYtmJlb74s715/1m9HoWItcbryUhZIOg
	 La3pJwduIDLO3PQwcq8slKQhI0lie6G3nUhBVAsfmxjkJuuRuyjqWHdZqnD76h5P0e
	 P+vYpZN05xsLiC1/4hiZUGrQC1e/ZeBos2RX0GcAXMC4eFQXCLI29yisl96dXith59
	 qD+mturB7h4b6UeX1NwjB0DegKmsO4Y6pbsw3bDWwfj6RaumrIZeyTaoA3jTZVDCD/
	 VH48cWWFK9QJWN/TZxXIdCMex2bKdxTl2nXKegWdoT8ox3gVNfYkBJLfu1hotJ0OjA
	 yGU56GzDJR2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B226BCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935163371.14596.7917684849127880891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14d6d36df8dd295582c2cefadf13d604969ad26cfdb3fc99a8e0acc6f0a3fc2
Date: Thu, 21 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779351633
