Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B9C2EC55A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764864773; cv=none; b=XkecZ5jHuz2rP4jY/cdgOrjeXG75bIClUyO50LHP3vgjqCyuEIYk+lSW/gZVvnP8esDua/wxVGdhc+dojKkuwz6AwY9/CW29IyeGLtg3HzQIzfAFS7k8LJ1VMnRvHHjbiDQMkYyx5+YJmLogc/pvDp2zVksID91EMK8DkutnHBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764864773; c=relaxed/simple;
	bh=teqFU0zcS7DmV2OUuc/zPJieSAohxghCuEr3HmeT0og=;
	h=To:Subject:From:Message-Id:Date; b=D1wL+5YbSw4Hn+4LKNJ3u5rnbrZd37G0k2XU62jlbaFMWWKPKUT+cMogob9vIRjb9jI9IBF1ECj0M9NI0sEeqj4ORDoeD5OPYr3oinkd3I4NySxQ21spSyBVmCRr8Mf+b9ppHxAe7DOtiKa5Z6ozYFDpXIln0y8URjMib9rNtQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfGfSMAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfGfSMAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764864773;
	bh=teqFU0zcS7DmV2OUuc/zPJieSAohxghCuEr3HmeT0og=;
	h=To:Subject:From:Date:From;
	b=EfGfSMAyfjO5ZrxK7YAgmx290+r2ty8Up1scln5tnnmnxmflS6Bvhr9wy0tmR066j
	 WdyITZfENdzgVmEiyBv3id7wCbi64LIBEqKT3UduysQMUqTpIlxX4+xH6n/BXvV7CO
	 q3mLR2w720JeJOQFLv/7rdsMhL5oLKog6GQQAUWG4uuRlM+pIChhyTWnlN7YppXwhL
	 s8mUteXOdKiQE5xSXP7Sfm821cAScrqWbCXbRI0GpbPMT9I6q7GifUMK5Ot7vWJ4ZN
	 MTwIpuhAa+Xt3z1JZESEwawjL5okP8cR+dhFlrlHwsISCwjsv77y24BggNwR8wIHqH
	 WjhrknOZjPCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637AD216A6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486477360.20976.15966557089756883388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4904c27752992c15b453f6c54b979a398d45159853c69de4841c23083f9479ef
Date: Thu, 04 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764864773
