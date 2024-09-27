Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E591B5EB0
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727477154; cv=none; b=e2GqngZ/T1T27eYH/qrurTh+vmcdaPl/KRrVrNukfbZlNh34cy6/goSI/QXdDW66wOkQiIinuEYbyVr7XUOmY2EblR2eegm4cv0hr1CQIgSa8fg0RZBZ1zJr1uAZGHABP7nGNKgQjJNGv+YaTtXkUR2Wpe/j9ZBxAyioDT8l39Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727477154; c=relaxed/simple;
	bh=kXK0KIxADJ3f8FV/c1OptN4vIofJrK2yK/72SQFEhx8=;
	h=To:Subject:From:Message-Id:Date; b=ejcKz3KJBsYE4wAu3pEnF/QGt2ai5UHhfF2TqJdaZYm8NsDrev2q5gEsDNzNW3o2ty3LGiYuw0EhoszJxbsKX3iPfDTmN+DOJBFDi+1BoAm9nfRyxD7zRVSmOECdi9hPnOXB9qIPStkLI43/+SapEGH55FkhPMZ4J7L6jCNN4iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGxmIGMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGxmIGMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B1C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727477153;
	bh=kXK0KIxADJ3f8FV/c1OptN4vIofJrK2yK/72SQFEhx8=;
	h=To:Subject:From:Date:From;
	b=NGxmIGMimAFGZ8/XqgTedDnw6aUEyw+oJU+tCzki98PYcsLLpnJI5qLbqfvGEAnY4
	 AGQ9TgQXr5NaN5v9J3flc0fDNrwh6uyjg2Mv4avAF1SssMZ9Y3zjJP/VDoqCUA+o5X
	 5WO4zCqhSSCmEE++AmlY42jj1O67Vr60F2iGL0Y0YHNxx6J4sUFwirCmcxE9stja+Y
	 tmkVfLJ6s5p0t9oQgTm7cxHcfaq3eWSN9ODarZJqhvTHocD51TJYe/iPdzN4kYAwlT
	 HCH3wyAVuA1MzBh76OrppK3e1FIt7lS8fwInM2xx0mjzlV0RJVfaXyMMngbJ8P8Oe8
	 anLZO5Gg9Bgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCCF6488
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747715359.31955.5284759117191039530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cb0052441e2828c5dd41077117eb8dcc7fcb1b3e466a51a41685b83bd5ba88
Date: Fri, 27 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727477153
