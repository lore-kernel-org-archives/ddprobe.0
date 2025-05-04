Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383B215C0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746398994; cv=none; b=Lw0kRJHknCw+/D4K5OB6Jzr6x3mMQGePwUE8D8TUnhwMCTEQ9t/SJTbroaIdC0bw8afyemShF2m/I9k5r0YBZFda4Se+6Qq1M57wnY3Ka4xVPVk0J9f4+QhCiz9oXsfbpzv9/XX4o1dMQw41Ea0aeUef5FaqyovirPEAHbiowxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746398994; c=relaxed/simple;
	bh=DSNIK2n/agqoRmZFPydqa6EM8xnHp1IyjU0kcNcZDbU=;
	h=To:Subject:From:Message-Id:Date; b=bisx9FL7EAfP5qzjzzFYeoWSfcI7ngWSfA6PwGfsFZEBJG1l2cvX+UCt5LgghgtThI7xSf1eTQ4aOQEGKQXdkM6M2hFqMLS7fhLTQTNkDP3UhRcohmdXMy1MJB1er/OzR+WBvk80PyqZrhUqibo6TWCrgx6N8KQmLdQaiWeexEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnaapSbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnaapSbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F25C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746398993;
	bh=DSNIK2n/agqoRmZFPydqa6EM8xnHp1IyjU0kcNcZDbU=;
	h=To:Subject:From:Date:From;
	b=nnaapSbsoCsNEJwZP+5IsvsHeaJWtlnifjSc7vFnM7ieCu7vnQmvXuawDEKPLFClG
	 ZlpnpxBGQPw2ST+44GrOg7QwWi0CIHRclJ/qaeplR5R+UWHbTtogONajK6sFnkWQoi
	 JfL9UmgQ1auCUSuL9wWD1ktdqXbYwUBOIDWApZ8Nli3efCSNhznjAaKhKnXeGiDNva
	 jEDDMWSFtJnrG49qpOhrQ3h5zXHTo2j5YKOUgGYGwlatxPQXj/gx0bBW4bTTvUPe95
	 amCq+m8v2Us/J1F89NYus6aQb7AxPk0xNYar8ZawBjksyrcTCbfFQRZ8PerCXrq84a
	 OHvsvfAkBo33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABAC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639899357.6018.1951900103243701227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29554006cbbbed6af683789981a567c9068e2c6d3f95b7a3dad58b9a82b12a42
Date: Sun, 04 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746398993
