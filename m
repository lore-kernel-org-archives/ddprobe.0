Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8028F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724567754; cv=none; b=YFPwtbw1cD3+0pqOsjqgJ31xCimpgcL0rGkkeoPnbMvzViWOgY1bQpVO0d0O2sxboy6n9ssreI4E36e36SbD6MFzcCvnOLbgChHAudf0ZgePIoRgZ8IAj/vVe9JH2tM96r9dM8YPxJOezxS1vJnuUWwg1CWLT1x7Z0W4/foDsO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724567754; c=relaxed/simple;
	bh=flU43WlxRYsCM30ZIbJdjhir47EjQoN7kVyxbApnt7M=;
	h=To:Subject:From:Message-Id:Date; b=Dnd1uPzKYd+XiiJzCkUuBchyz0TqyagBSfG9soHNtG7rtGrRTffA1Lyxr9mvqOOMw7ctYYhRft9V0A6xupNWHP3+Vg6HFHEQSDWGgLqIXI0+0tzqu0bBDnpSLES3OH4ji/6+kDYIETJamTCnvTFADP+UUTVNqq628cPyPvVS7bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjBghkLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjBghkLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDF8C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724567753;
	bh=flU43WlxRYsCM30ZIbJdjhir47EjQoN7kVyxbApnt7M=;
	h=To:Subject:From:Date:From;
	b=XjBghkLux/a1vs1qCNZp7G5N01spnKpMP/LxelYdaxgKccsTkUp+8HFCAb57h4Xs9
	 u6/lk6a+FremQM+TxfPVDzG/KvGxD456e6zpY7FNqNmOx+JYJ/2HjodWeKqc+Cl9b3
	 RjUV+qP3ufLZlwS+YgbZVOYCAxROBlMIHeBhdccLM63LAqpWitCo3vzFSkJ7vww26m
	 53qLwaFfE5ezVCEfZLW2Yw8+F1JzVh7223EUlRTD4MX+WR1zniZFNKqpvErLBtN8iU
	 trjgRy/ORi+rSqt4YydyzoZRJ2ktW1zDHrDX4yTRB2bNVFpLLSukGOEshLUvU5avl6
	 FuZBC3QoTyATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD18C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456775359.27777.8694787302941281111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4743d53e82cd503360cb0ee7f32606afe0b868d0c824aaa7b21f83a992b030
Date: Sun, 25 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724567753
