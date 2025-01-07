Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA3D41C6A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736276154; cv=none; b=JIw8JqrYQ4OjSB/kJsOTnJYXN9XQobqT8gF6YKjkKgG4RqEzgER80wcDj7f+SI1z+80oI4JehEbjNsorcmTnvywWzUUlmO2wax8248LhSrl+/a/wsbZbzHc7RtBkm3LHBhkgqfPWwVaE8IrktsKH3ST2Liwhj6SFsFkDRe4Zvi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736276154; c=relaxed/simple;
	bh=A7V4gigwApDw0npyui2WcidGYI6QVFYWpP7Ut7N0FVQ=;
	h=To:Subject:From:Message-Id:Date; b=ji/eHx/baCIwkIdp74T+PeZ+Ftfc1YYjQZqPnNIP91HLYNZhaJtQpTH9nVjtzXE3cCqttjGGnNNZfLzX0/zRv1rReoRPYxH7Ckk9T3kCZtUvpSzx0cafTmuxuPtJbzISpWByJcpkFqsZJNO3msYucCwW9QD0DYXfcq9mLaZGnwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ7pKSVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ7pKSVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B68C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736276153;
	bh=A7V4gigwApDw0npyui2WcidGYI6QVFYWpP7Ut7N0FVQ=;
	h=To:Subject:From:Date:From;
	b=rQ7pKSVtlikbjYsqk5+LYSp4wSkbK19+vckAgyx+ZCYKVXBdT3uNpxszXokC8pIM4
	 RcYQHYDi7G3uesjLwnZHcK3Cm2VFsll/xN8woAo3QACGBnSWTkeY5gcC4L7eJWtr7n
	 EPe5FRkcYI+QFnHvqPR99/qDTVCqtrkVU+XkN+TjLWDwi2i9JTqvn5viIrQfqAQ6e8
	 chQl7h35awT2L+rN+pQADM7JiUvNbomw11pbWut0DjV9uo0Xi3TzQhFIxfb8A44fBZ
	 cMX5a4d4zqlHcBhFbA/49FQ4GzUEbGycW2RYfSCP8rK4tIvEJjxiCealu7CZjOGqTe
	 lLZ7nTXPogRPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A92E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627615359.16490.9624264889655086844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314f334d50a81a81e05fa70d9ccb7bfb791e53502210e5bf1fe8abdfe7cb702c
Date: Tue, 07 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736276153
