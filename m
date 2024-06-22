Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609DF7FB
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719019943; cv=none; b=Nqyo3c4N1Dq93pVYGH9g+unnezi/WPNbmiCAzH/BChMmxk+uxiPXXJdTUrYy0UpRBMjWKGwwzRNVIuGcD+dQN9pTiW0uXNDuFS7OhX5Xlpv4n7xA8jKuvOWNLP9daGw+ErgDUSHRzKUMWBrLM9y4NVidNv4Rv+xZh+vZvYaHN8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719019943; c=relaxed/simple;
	bh=gpPhQXnK+OvkZJor/YVD9QDU0ltUGqFwcQCruPKJnWg=;
	h=To:Subject:From:Message-Id:Date; b=Sjvc9AVJUn2/uYzhSdtHhYFyeE1sI0QwO8GGemMGA/EOAX+wCf1xDB1H5Gk8pqgpJl9iuAPcw4cza6cHzHPxX89uEyF9vb6oj0XNDEcFeVIrAkzXwtzA+4mV+HhKpUUfCAAnM1Jhd71g7TnAy377k6sfHSahK3P0bDMzR9h0SMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRPNTciv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRPNTciv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C14C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719019942;
	bh=gpPhQXnK+OvkZJor/YVD9QDU0ltUGqFwcQCruPKJnWg=;
	h=To:Subject:From:Date:From;
	b=jRPNTcivp+0eW00adb/ru5JJCGAwZXixj7AUBHPIC5h0Hp2yIMa/v3DoKQYrX6U+G
	 qrl46k7QvceLrhRtwFV4wJkXYDvyl2gfpoVw50+s67xGBBVrFRUdNasxA/9prcXOMi
	 vrVwZspk2OqzOj9/WGq/dZmhaeB72Wuo/fCgMmSrsP4L8jSHX3/E3U9xIyH5ydoY5q
	 7Y4RB4q94Py0ertU2B6biBimGjBDQRbdMd3kehNe6Tb421kl34OtEhbmKJ8qMVWP4T
	 N8CMdqGpTUMtFHpWh3uDst7gaPq23RQXeu/sSiBMeA1uP+uR3Durw/HnFWFI4rOC7h
	 qaLhYgZFkbwyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C320AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901994276.4415.1101784049514725572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c919eec7cecf37462c2d21f9bae4bf7396542b1851740c5d31946113d4e925
Date: Sat, 22 Jun 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719019942
