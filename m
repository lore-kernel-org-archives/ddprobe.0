Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4272724503C
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756519194; cv=none; b=WS0QsyYXh7PFtdfOp+MJqP3rtF3u94AODDgiXjWtEh4EVueBlt3SsMFfQ7P2lJjjDd08bWknNeH7nurzSeK+Iw16KL2Y1gGXthUxh4sW4NImmlpc3czNDh0lU+xNYTOWJwVeJa1kulXaa0m4VGOccgmUND6WbyxPUIGHS871qfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756519194; c=relaxed/simple;
	bh=98DIs8QqWmCoBYL0Sc3V0N2ZgQWemzo5tYiKeQBXypc=;
	h=To:Subject:From:Message-Id:Date; b=nZR5dhuyb/ONt7i3tUXnQOcqY7XQM3q7yZPpLlTDEF/nKf2HBl9Qo7xWbFmwZVaGff397tQjGYyPqSN0NYnXOXvq65ctmDXpmQUTWqyb/P5Xo9sTrOPCK0FSq/5Vgr1+zJM+RviCJ6/wubf05d2ShI2FfvtNNKhPOYCApOm10sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgFdi+Ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgFdi+Ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63A6C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756519193;
	bh=98DIs8QqWmCoBYL0Sc3V0N2ZgQWemzo5tYiKeQBXypc=;
	h=To:Subject:From:Date:From;
	b=OgFdi+Ja2tMVtNnYIEtFHou6bedsmUl89q1ZFMPdZAuDnV0XZRGcQwR+ktt9zqSC+
	 il6j+ymSeCiwbdbvEmIvVxYP1y8uC5o2qcxarGR4VglgL/8oDGllyrUgsNMbCL/ulk
	 GEPTh9rNAzQtyAo4dJsYBqVdXMM6oFngxuRI81lFFiEL9csQ/OQ2R0wWDWNwzdzw+j
	 IN1ygAFt1YBTc1Ru5qnUuwJgZjjy1SXfHTwz7U+k5KsS8H8TYZtO+4rpWcFXi75Y65
	 SAHtrhzGrGyunXPFhujfstNM+UVg8MAW4Dv5aJt/COD+ZVrXjFeq/UesvXqZpUtzvc
	 55x866UbhHSwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A0BCA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651919357.24713.5700759625583080592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b968abde93d69c29b93fed7316abdf580d1329548a45f660121fcae710557c7d
Date: Sat, 30 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756519193
