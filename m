Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F30215852F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744680594; cv=none; b=qybNwZXOFq1UAGADItvG/OGSEbH+gTzNFvLtDxVGBM93slSkCKf6EqLliC+ApVzW67By/qfcxnZxhANAlR/hpVvtINz04VtpMVZcJjfDEHkj9teujCSXcpyvuGXgx0FMWKJXeyEyjfQw25G+mhZ6A6vUBgHH3W6gJlhb/FoaFT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744680594; c=relaxed/simple;
	bh=1WvmV8ecrwklbp4DH085AdzJ5HG7b8D8wpElYnJpNZ0=;
	h=To:Subject:From:Message-Id:Date; b=YmZurtT8MIEHyZ+Oc6atrjqJPIpThTRim3DLXzI+0FJQdyV0TbPTYJahlvQWSSq5m9SJTaJfDdVK2NlDJFttcvcBassmbMbmIQd+JNGannc3IShpH1zTZa7hyPlJsq0SqepHu6eK5DQsCqO2zRauJ8kCi5dKSl676rbnjowgWYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtpBP1SV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtpBP1SV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6259C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744680593;
	bh=1WvmV8ecrwklbp4DH085AdzJ5HG7b8D8wpElYnJpNZ0=;
	h=To:Subject:From:Date:From;
	b=GtpBP1SVqxM3vB63/iCbk3RIemES+EwsJKcAk9Ce9t+baaIcQv0Ewhy3n+sc9GQqc
	 xzYcgLSF0OPJDkvAXC7Iq6c8ropl4zm3DkdBQe4BKpq8OufAG9OPwpirpaPIQ1t0bu
	 4WElPZMUHbNvYdS236jaPBuWMlJRgklAzldiBJK13OboiA82Ei6K10zglAaCD3HRjc
	 hVjCgs6DGu5S3rLam8qvq31reUeNcQXqGqReaV5raR/vR7DUmVusF3ZxPDeK4Jp/7v
	 9fgneaDmUkMRJvb0QZ+2aDS5sffy65ScS436+zgT2YYdS6o9/lQKkyJ9rlGlcz/+Yv
	 iZua6mPOl04xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A5AC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468059360.27888.16294530424484174526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648a42af0cf53cf79ebabf6e90d86a78325b55c524b6db2d18f880c4944be624
Date: Tue, 15 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744680593
