Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DB1DF997
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736237754; cv=none; b=ere/cFJQu0vGgIq6v+dwUU9eFP7nJVLK/POzSmMmiDBojfH4n5+AYgJwVKWPTM7TVKCv8Ig47DIN7o74gbtxA0Z4NVM7v9pE0bstmW2ysZIdM2Y6LMJb13yaLC37XnVrebOAsKEZAF7lEXjQIwSo8zUulP068akKxXQajZ3rtsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736237754; c=relaxed/simple;
	bh=Yt1VVOyPlkddVsW7aqdpOaDlTIDh6NIqkG5v91yk+Pw=;
	h=To:Subject:From:Message-Id:Date; b=FNbQoQDIjrUM1HD5a2ZJqjYAMSqB9uhERaxNNs3p827rRSR28d/DUSbbJFSMmXy68iIagAQVj26q61f4uflnTEasP3r1u4d9pEjYM0hQGU1fkheHw0BKjpnD8Mv2IM5n/KI7Oo2y68Dr20yWAHDcdb2nEduuHhfL1SibQV1PgqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gG7gkfrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gG7gkfrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736237753;
	bh=Yt1VVOyPlkddVsW7aqdpOaDlTIDh6NIqkG5v91yk+Pw=;
	h=To:Subject:From:Date:From;
	b=gG7gkfrZqjQe2sFu8gGYps2yawRn7LJWmOfDtzgeZ1r74m+8hsWwhiD91JCkqpclp
	 sfLkkeNoWvvBfngo9TvSZ/NneV3/Y3LhvArX30MYa/gdLzo/rZCfgTtCNUXbrY4iWf
	 Lg8kSLh/MTl/bBi7+Q6XPgwRgP+6ekEQ84cMlVzTQXQFWRbGNDc6Av9mk1HuYoPozC
	 +AcRKYaPusx4dinmCCt7eRMohjLjjoaltWEPQSZ3SIIhIWfKwQI3kGp6EQUkSg3Kz5
	 FUSAWzquLDBv0hXUicm2opIuOFfLZQ2lwEJEclFO63qkg+K6mywZ3dKiztVOvaktba
	 rsgs+HdfB2yLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D1E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623775358.5061.3812130122242346664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b547ec3bc38394a72dc550bcc71a0cc766685be7fe0a3202852bcab09a7020
Date: Tue, 07 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736237753
