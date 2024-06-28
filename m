Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B056E546
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719538463; cv=none; b=GMhiEiKvUWcv0nrHnwEI5PWZmeXvVCsTkWWznOK450oyoiWv/oyfOrSJ+1mZLIrWvFV58gRtfXxKo+LxtY5sHeYhDn446EDP7NrhiBeE6ObdT+BL2vgAna30n6Tw70jFoNMV4LDu76GbmQz7ujR5xqB0CQ5cSj2Gqadvvk4DT+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719538463; c=relaxed/simple;
	bh=J9ljwZqwmWAbAg2BXDgcVXqIAqXkC+b2YP0TP+1t0b0=;
	h=To:Subject:From:Message-Id:Date; b=YiEdukupj8bCM+thowInOEODSDbkKF/+JegKWucFAQisYOrENPgvdEgtQK1SRmxH4MQYZZCUWa0/I60NAbr136vSmf6/iLs8g0Xbftf8qv1ye2Qp/lh6V3plcyeE8l55Vgj0ufwiyv2WBpWvgj0oQlG5FvFZsKBbd27V6qDiIg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq0iBdg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq0iBdg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E68C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719538462;
	bh=J9ljwZqwmWAbAg2BXDgcVXqIAqXkC+b2YP0TP+1t0b0=;
	h=To:Subject:From:Date:From;
	b=Sq0iBdg3hfQW1OX0W911edJvoJ7HQ0gpW64uG05zDyv/kYLcsMuuJKwIh/46SL+Ec
	 mihvyYvgWK3x7Q8v4o77Fi0YKWGA60skbUwgc1lIi1yZzZf9bZASxcGTSrr0Usq7aN
	 iW+YGPEXOCPcP+YkwS/HGmI9vnCnFRua1lO8Gz/rqO/8CuTjW4+sirLWbccBdnU+P3
	 rZv+NlfaGc8jqGNZoowy301/F+zhGnS7pyjrNHG2BMjwoT4IgDRQER2iu2CW9nXLT/
	 4iGoKPjhc3rVd3KS8m5CODd0xYaqdKJlvoX7TBEo6wTAIR956g84u7tDkPuobxGSOl
	 1SOSzjmGXfotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6AAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953846276.3449.16792818674149216789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc01350123b00a8d7e71543212fe5b8c039227bcc631c3ece5dee4251678992
Date: Fri, 28 Jun 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719538462
