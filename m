Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFF313C8E8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718264303; cv=none; b=YWWJNlxTw6k+dd0QCMTA1fVgIXquz3dwbbioA0wvZShRCuqYOYv5t1kyw3q3zFrPVGSrI6ZYhff3Thj0qFVpivW8hlD1w1rqdwl6wUxJcm4v4DgtfxCOnpgv6GJk1aI0X7PJ1zeWAIDaM+HjYfJ6HbZePeMp9/qoni+cK2eXmNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718264303; c=relaxed/simple;
	bh=oZ2JRm0zzk7XqD+eDMresRPDfYrBtX2u9tjOw0XqUIU=;
	h=To:Subject:From:Message-Id:Date; b=UbhRzFl1qoufhSqNf+cSCh4Q59KkKt8KkycHiphqx+WXnrqVyrM7Ey3h1ytgrftdJSlNZZSc4CoInIlPRKaPgGrfhKTbSbW2feaE4IY9dIC3uilrd2mb0e+zZ8Qo//xrzomYeutgSKv+mdFBgYtyqBZQHPB9UCDq0DjkHnx3cYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNyB+qDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNyB+qDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC09FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718264302;
	bh=oZ2JRm0zzk7XqD+eDMresRPDfYrBtX2u9tjOw0XqUIU=;
	h=To:Subject:From:Date:From;
	b=kNyB+qDdXHcvQ05mbm11aU/ikbgv1KugJdZChgjJe1Ce9MxAuR2SwWIXtiIDMngn5
	 bP7fBiegEa6s7+K8RtRNYrgPloGrdivwzEEDZbCBRiBEd7kH5EM8XYP9MflHoCXoDN
	 Zaccs+c71s6rHfp6fcifE5HsZnRxQAi+Y9rdLtB7XDUUjKf2yZB2eDw+eauBX6N7e7
	 uIxz+zeM/KT2xGs9luzVb0tDZTJHj1CjhThJtCfA15TZRtZO7tw2L5QqXOEzc4cxHV
	 whKymet/bdnu03wxmi0apJ7FFprt0Iop904np1BmwJ6CT1seSGh1jxOPX+Plcisq+u
	 jA+fmNBCUzg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2F9C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826430282.7618.565642646473481425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c449144ee2152aa4dfd6e5054782c31f6db43866b937799c965afd96abbb7dd
Date: Thu, 13 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718264302
