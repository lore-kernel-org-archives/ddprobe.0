Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FC41F4C96
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782308254; cv=none; b=t1dvBjaKsp44WNbztZWKrZR1O0iqN1Zk5JiJUbNhncN72UXhKu+AVQSspUIAk0sAw9+1UoaQe9emzSEvkIx2L7iSEKPZSS7/Tx7XrM7YaK2E1JOG9hrybqITRLlfDgPjlzq+Xm8HBmgOdYrt7hZ5WPTX0gpTarPG3HzdXoEuVVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782308254; c=relaxed/simple;
	bh=sDoMhjJyjq9hjgzwaLqHANuK/SRS54dGaQWB62u7Q78=;
	h=To:Subject:From:Message-Id:Date; b=TP+5G/SFOZtZk0crTvHyT8QjMT0R5u0vT8fvoUr45Jy1bdWANeS/3/StK0kGSJp0ZY0QvRXtAcFxkDCKcMwU+PHsOG2svPvZawJuq/7uOfR9U+3CsDQ/jq0YsI27z/cVEuhzJS4m/EZplZPiIZ0l/8YdewPYon1DFz+It7KM+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlU5mAwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlU5mAwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87E5C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782308253;
	bh=sDoMhjJyjq9hjgzwaLqHANuK/SRS54dGaQWB62u7Q78=;
	h=To:Subject:From:Date:From;
	b=SlU5mAwfDJeictruj69nlADsK8EjSEEfHGDrYDbZYV5Aee1SCP1zd/6iBjHnc44TA
	 LC1mDUxmKHChXMluYVbMpFzxOR0V6DDxro13YBhXtNKXEOlTEdDEsx1izgFK/uPAh4
	 6G7+a8+kldWwRkxlyR0RGLn3KqVH0PV5AVj72U4Hsc/FnWBmCnhWS1HKmOy/4nDjRF
	 TpaFcGBndWNqCR/WSXuVBeWbE9GodKvk3KWNBj6/e1fnv7gvzxCA9uLnxYSwdTSx9d
	 hFYWbfpq42ptRmfq/8nHFHhxp/7eXqnhoSZ7O/qUDnilNaIK3ntHz45vA4bAF8rydz
	 fIgAztYZY+1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC372CDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230825375.20467.3538226946580040518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798fd07ba4739597d97c35e485ca4ecfd5f69c9dde972e61f019adc2114996e5
Date: Wed, 24 Jun 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782308253
