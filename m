Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408E027F164
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749217794; cv=none; b=pepAeTk2jEdwO+KjXo9RUnso7efWekWnSTh8A4abjmtltUqie+DuO3kID6AibTOa+LGvqu8LKBW17EdIwZzdgyN2zzZag3dtCnzJGAdaxXPL/h2q5lyg3On+5UfkFIRS9BswVc36yuPqnm4q/DiA8vHLdqyiJtClnaRzXfAZC60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749217794; c=relaxed/simple;
	bh=Uo2Lt0ieZkmJj27MYvzfUMT9SAUeTdex/OOXV+EbXuM=;
	h=To:Subject:From:Message-Id:Date; b=gJcAxWMU67ws0R/JsyEMAO4SkDLLDvzQgyFCApCba5yvixbP1lvCcQi/oHhyfe8USt4QIyvF8LSUPSwCuzF61CQWiE+YTl6gp6xniqjiLBpAk2fhvkvTDcyAeobDGQzrZmwD2ynEGQ4VXhsLFInwPjlsZxENfcDunKYm4e2vGjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVkRlcUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVkRlcUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41ECC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749217793;
	bh=Uo2Lt0ieZkmJj27MYvzfUMT9SAUeTdex/OOXV+EbXuM=;
	h=To:Subject:From:Date:From;
	b=QVkRlcUBrdnleKbfWW5LzD9wDPIa9aYFyiqRDmxtiX4bajsGgziBHAWQp3Gtw3EYn
	 yWrjTuqaKk03a8nhhODaFZy0jVuau+1VzYiViaCRq5hNqACfNOowv2IZb9zTghlPVf
	 RAuzhXBcugJwdAAXoDfYFOsYGmjAI7vDQwKU86aacCfwFMreBGy6GG0VUUYboxJ2tO
	 DJGwt9Hik/xwpjU84arYbTWjMDZlybKdrnOLCTSlcv3u8tId6zUO+t54WNzaJlMjVD
	 P+aVm+QbqfHxlNoLZ07cJvU0/YzpiyF509zDdGnDujQFreYqFmRWBQzZ6kd4eG6pLB
	 QIM7bqR6d0AkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C50C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921779359.5413.10268218912091371225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daa37e5e8b1c376cfeaaba3f5312b5f7538ef17f7346acfb9ffaec123717d47
Date: Fri, 06 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749217793
