Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3D303CAA
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755104994; cv=none; b=pGYdefbK3mr0/DwJMqDLoJPBElA5yqOF4zoXOZpvy0m1n2XByRreGrqUEyppvjUyiS+f8gc7zI3GgwGPUB2zlgVp1bwmgeZxgtwfj4k6zNYMo0K4oo6YqfvtoqxFNEw0NsGzWTJ8M8USnczbtvyCe6qR28qj74q7U0Bjq1+At98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755104994; c=relaxed/simple;
	bh=N6HfRDwWx+LdcVU1gjS9JQC3gQVMN/ubGHjbSLVBaSs=;
	h=To:Subject:From:Message-Id:Date; b=l1VXfmx/K+tdObrsk0B8ja3NX3Qvg21Ubh4qLZHeiKeTP/uYMWzQJKFBizImuipuvXj3ak0lzSQ7QvUOPsNsuV9lAIaqU+/Fu1GmNCAScBg45k7klsCg5PucuOe4bKIs5CT1ViL6p/FWrp/VI9DLVZfSCs1ry0lNzac5u0iUzNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTiGpcQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTiGpcQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F93AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755104993;
	bh=N6HfRDwWx+LdcVU1gjS9JQC3gQVMN/ubGHjbSLVBaSs=;
	h=To:Subject:From:Date:From;
	b=WTiGpcQ6W5FsiwPg0nybkGTcFBrkmOkfgkpNUuh60RC6SuzfnA9qMxI3UxaiBA3Cs
	 8enNP3LGYobzXlLkd1tS6J4WFlz/TtGkSdY/6ukTqohtyiIDCWbp6HryXvtsYNv9Vb
	 wrHD9gL9CzLGidgZHruwscGGew+T9j/HzWmRCLYblJXcFHV/gTAXXXj39sUPhhdkXP
	 RGFIwgmL9+hd6SlJl6pK/zwynK7ORo2u39v94YHHjJrLFQ4GnKQRAU8jL8qe0MprBb
	 cQcHRPhdl2Hmv5RCJDKfa63gDmyUMxZKQNsmpDptxXbi+/EWwac6L+sqG/AUKIKnj8
	 LnLaFo0uVY4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FDC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510499358.29538.7741722122729289165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0640bfb068f9660abe06ffdd4af9c7b7dbfaab1e5faf1940b0d0d913f24cfc9
Date: Wed, 13 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755104993
