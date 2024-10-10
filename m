Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD61FF7BC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728546354; cv=none; b=nsHPV9Fjuk+Sk8pSV2Ho/HIrh6QtftbzvF/4jVvdUgHA1fSvxhuETCKxJ/n3lYQnWAyTVvZMOJ7AwbFAnXwqknRsC9XgDZfe66RTEbJlwZ/uXtUvNlZBUAVVUnheTLlgSDE+iw7osmW9tjmALx5Dh1MM7z1gGlpYKrdx/ms4Doc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728546354; c=relaxed/simple;
	bh=/nzxxv6lby1GvbrdNc2ieV8o1JQlZLZjgE/NR2UJlLg=;
	h=To:Subject:From:Message-Id:Date; b=LQCjuoX5UXH1YnveMdeI8qCCc5drY19oIzuUdw0bBLcpF8wEpyp0oM7Ti9R3/WsdZgHgbCFD+RmnUuAaHorrxN3gmIAZi4KXLEksHubBy+uFtDc6j/IOOp+3hizBBNs3rBFm+P2r/vurXLbauunrVtBd1Uvs+bVc0Sl1G8g8TU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+fdXfb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+fdXfb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D131DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728546353;
	bh=/nzxxv6lby1GvbrdNc2ieV8o1JQlZLZjgE/NR2UJlLg=;
	h=To:Subject:From:Date:From;
	b=a+fdXfb+XkPdVauxyLmWWejZburBgDqRXzGn5VN/XUkcxXj/8RxjwKyVnuTeiqzde
	 4mqXHxUNcLulACvisSDGrIo+JwBwxz7b8qTOFbtDP9dw5LJsyS0EZiZC8kMTbbKi84
	 4R1aSHPv/moqXEm/tyeAQI/timN8pd21jW6uMx6swyVBTtUc3CbqNQILLnqveKzA6L
	 pygo2V9+vMuvM1+utcUZVS9CbmeawuFOXGfhfnwOmgXaqoCFNp9oUKQSNutI4CkrPq
	 F+LrTuRAVtdsMgbJMxdNr2VI/LST72Iu8lwoPJu4DUwnUka3amyupCSyrRu2Ni8WdR
	 lsRpAgfEj2ECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC897CF07BA
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172854635368.5711.10556909819531004044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd6495c6eecaecaa792298b4198e8c7fbe6c36596e49907c89c0ae21eaa4f41
Date: Thu, 10 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728546353
