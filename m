Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F47A29A1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756601994; cv=none; b=nJ3cfFWbfYuW5Ub2CEB66hrQJs23mCWdabPsjFInq4anizln7h512utA5Cz3iuy89FLGlC7el3DdSqNrQwQ1v+ywwR1yiozGEMFCXv3RlwQl8uguSntRUouVxOr9GoNPyBtGK0yQAv70U2swn+rdQOJhKpfNcIBBk7UQTZad+ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756601994; c=relaxed/simple;
	bh=/vJM720KyZE72KY0PPSaFEAGjZCTKxIFAafhzRSikN8=;
	h=To:Subject:From:Message-Id:Date; b=bJ34hEiwn3LTHgcaxMNNEA21Z+VTWXq7zF7JX8neswc+yUSj3lRQFagoFVzYiKyvmEwYEmNT+X50AfRgDdbbOdO5DRIkOnBeXHnmOgN/8VccGwvz0SpQFX4ad2PxW24oiWu1a6ozJ6tehlfoDcMYG1GMQElmJP5o9YIukJNa2/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKJ1JDd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKJ1JDd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2994C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756601993;
	bh=/vJM720KyZE72KY0PPSaFEAGjZCTKxIFAafhzRSikN8=;
	h=To:Subject:From:Date:From;
	b=UKJ1JDd98h3WQw75DctLIvgtsZwOw7vFw9bNnPTFNL0i2SPokEID5gaxLyuUNVqil
	 w/X8oMyldQnCen5WRUgiROD9A/sPx8Besjsxw0cFjRu+o5oR1CiKKNxas9EObR1hrD
	 1c5zoBB2FG/E4tdvBD//IHHLSnYx7ncpNe3e3QNJxul0/Cu2aNRgROAP9foeYUaqgJ
	 A/FGUKSUlLHHYQbVZq/hetPWK2LigEljGNOLa38R8aXRjXUThE68VXjZdVzCylxQFR
	 Wtd5kG4UqhwfOzdhaA9B3MTimiiLfVvwdUpjl0ZqGHUz4JY0dBXOsS/qTdvUi822Ix
	 tKjxhzqRoApWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A4CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660199357.13256.2857352442692003720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5794fefccdf8a93a30c19ccfc885aacf55c3fa075c4364363026e24abfa6bea
Date: Sun, 31 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756601993
