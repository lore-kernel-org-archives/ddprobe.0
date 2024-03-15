Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A649DF51
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710481097; cv=none; b=J81itKbyY6X8bcPYQe3X7LMC+55WaM++I4ePjRcZA/I5yKWRyL82TptcRsHDqcbGnxlU1J0Hb5itPEnNlbKK8YJSF+aQvNSjMqKvhC4P9cOuK18BcQS6revFOgLYLGe7h9g89bdm4yUvar6Yf6VA0IgzYCQaNdy0++YiI5IrhUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710481097; c=relaxed/simple;
	bh=pa86HJYFhsNOar0mRmMKNdSIr1CD9W4PMxRIwf+0HE0=;
	h=To:Subject:From:Message-Id:Date; b=ELrS40KKfXl8L3wFuSFPE+IUNu6XdhBD04yfiTatcJAlEk0y9hOPf48DZGgpmCnXwnQF1QjM6E+xi5rlmnU2Dp5AW2PegxVNiRKzliu3mL6JoR4sKiwmjp9SqEiCdNj1FuHkft4G7toHHTQosB4V8jNUrxumByb0HP2nAqjfHqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqU6TCzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqU6TCzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8EDC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710481096;
	bh=pa86HJYFhsNOar0mRmMKNdSIr1CD9W4PMxRIwf+0HE0=;
	h=To:Subject:From:Date:From;
	b=HqU6TCzo84Fg1FdqxdgzLU84f7PSkQsQH0EMzE5nY9S/+Z4d0hODJxVE510D/PgTC
	 lRT9hsoao6C7kza1HRB/TCpqIN6MYSO21EJd1SXnqPBNHIK1N5/R9GGXAWNJE2Xb0n
	 LvchYT/ijPVxMJmW7Z88KR4+JBRXSIh+7NWC4yHy/wefWymr34f+u3BuCdKSupPY5G
	 5Jn5IN7iEkIKK4JkmFoamp0/KfI2sSXcH/5VdwskCrrLOuuhscQLOa+0u+DI1g8kPv
	 nvW8svz9RVkSzT+0PwJylYFUC9i20tS9bMWfk23KNyB1lNLAxU3tAZd7f9NcIJdgpU
	 lt4qNn8+F6NSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685AAC54E66
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171048109641.22238.17551650732224822680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2a130e02b63ed29768fa1ecbfd4d4e8bb5102933a4044d059b0f33c1e2b493
Date: Fri, 15 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710481096
