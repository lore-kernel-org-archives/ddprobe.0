Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5B2F7445
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771485894; cv=none; b=edZ2xXFMdRWuuhDiJaZsRfW10zr7Fn3YLfC6dsWu0i07K4qlDn9FzXtZNL2e470tjjdEH5tyl0WUsaJcEvGEr6JY0J8vhpYOAwBQuM0Gy+yyqpv9rwUkEn0vWJWHT/xDvw60yPhUUIcjQjXqlHNtCvAv2XbD6DcQdZAC5OJJlI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771485894; c=relaxed/simple;
	bh=ewHkI7YLt7B4eHAbs6Io4MQrzEWS+9EpJ0aNbMRqJcU=;
	h=To:Subject:From:Message-Id:Date; b=bTGZxOmpBsiX0XmFNnxZrPXfupw+UeWQbvHI7QOHQrvYLXx/ERo1DnlYO7OvT0fTD2KmzH4bTZhBbCNfbpeQEFLEzp9icZPH8M2aW1UfQm+Eh2W90ZriVcgJZowHBT21No0ha5G/liNI/9Ej0ZadtPFMhUgI04+9/dDV7cTgVQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4HbgAZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4HbgAZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771485893;
	bh=ewHkI7YLt7B4eHAbs6Io4MQrzEWS+9EpJ0aNbMRqJcU=;
	h=To:Subject:From:Date:From;
	b=u4HbgAZluQhAfAw5A0NCmn4FrIfIkHgy4WJeveIUmG6y/35jJklNoO34BzmZBFLxj
	 jqRT9EaW1GH4qQIB6fJxqY9gyNgIbnLCqqVMfSSlsIASpPgb8TGxIsl9qsznxCRXXv
	 oyc9Lt2PCa4uBjXMFBVS8fsPW7MRPGaM2VJmsbuor8EXVks2o25l9+Fn/f5/TY0Fo3
	 G1yp9QDcwGh0yRhwOw1hgCKB1kP7PgqHZNauM2ptDZhiw6HKrecyFyrLJMmMk536Ay
	 0Pu0Z6D6+hLBOK0410lqkFV3JY5HxwU5TX1Ierf7CQdXJFYRNjLwH6JQyAygrGOST/
	 yrVbqRQQrjQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E44E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148589359.879.17138216561500504466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14c9cc699260a5b44697caee89471f44f03ff089c3ee11ec7ac4323336aed8f
Date: Thu, 19 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771485893
