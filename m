Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3583EE1EE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779367834; cv=none; b=BrYlRXL0FJu6L+FduNQil2VQQtq4LNyYmjwiDO2rV8XxioHNdculFEzoQZZIep0pKpCNufON4FVWfWXNQABgfYxqQ1cA2+MiUMXMxBDmA4irnvnpsImYhj0+MLaXF7AJzQMfmj8BgRC6MttaXWScdMEBEM2tZ0oErv/n4ntLpDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779367834; c=relaxed/simple;
	bh=HT0BEYuhzt4Y8XXEiPh5G/FOOwG/av32jbevK3UFpX4=;
	h=To:Subject:From:Message-Id:Date; b=XTZiyBecBPHuh41nuutzUuN+XtqOaYiO7F0HTLaUrY8TUrcNbGrQJKdk5y0AhDZ8OJT+slcbJBq0wUFZUMk5OGVI7HL0neP5y/nc8WZ8PuqjgBlIY6JyTpZ5XSK6JNAHfBLuLDN9cHQ2knVIa3wABaswLBa4c5qrbVtaEV5t7V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5yAID2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5yAID2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA1BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779367833;
	bh=HT0BEYuhzt4Y8XXEiPh5G/FOOwG/av32jbevK3UFpX4=;
	h=To:Subject:From:Date:From;
	b=d5yAID2XtNqk85a1d2F4ilJcmCKYuINMgYcQUOa0fQhsski5YED7Ap2zZ89bS0pxG
	 YRah9bwe9RWePXnYT+0na6OauH8cfkCZZxHwMVebNdoOwS/I2ZSSH+4hEUBiom5ePD
	 T4b6/UQtP2w9OQmRAvzOKnkVQg63NewEmvNcGTzJarhLF/c9TeLUW7HPlxVW9gGe2n
	 xi3E7p8urVnqKVg5rLC1Rg0R7P9o3/TidAzbCLYd2wmE4L8jzefPCtP03QWclqRWyr
	 Ffia24cjPQUUx/PBV586maUbo1L7k5rPgIPtyFoOpTtBo07L2x+XG8rIOwc0nc9lZJ
	 1ZE7l+iQaQpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F32CD5BB3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936783379.8262.5855745555237698503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db8b1c667a855da3d498b4e4f648258071ffa903cddde28ad7700cfe5616f6e
Date: Thu, 21 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779367833
