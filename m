Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28630156F20
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770231236; cv=none; b=CKJJzJoZpuhNuS2+tQ5ZXhPOAm6tDV+B6YRGoTijbGz6YvYl0IjgPuP0XoVEp85GG/0K5n/4bCRgeOmSUybm9txpy5HpZfb90u++P3+qS3b/b7WJSHbbzVRW1ae/Xi73ZBk6K8C0y9PFhXhbPazVzUBSoTTR7qs49ymf/FyQqDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770231236; c=relaxed/simple;
	bh=+81IZzOFyLhwFkVQndrUp37gtgHB3hGlCnvWp0G/KAA=;
	h=To:Subject:From:Message-Id:Date; b=S+PUhr9XwSUiLe4zsPkha19t9+NQvJm1OF17asdrI2nz7jmRXJ458KEn12qdrFlsVdMv/W8y/iTduGz38EV+X8RMlQ+jjBSSbxt8ueUDxDrxA/yv5TAd8KwPTUsR8qQiZd85szkf7sxjNhnWvSAuHjNgVXJzT8XnAI4Wxpp67BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEXT+cZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEXT+cZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1438C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770231235;
	bh=+81IZzOFyLhwFkVQndrUp37gtgHB3hGlCnvWp0G/KAA=;
	h=To:Subject:From:Date:From;
	b=UEXT+cZph2Dn1rcZJ2aV0Kaf7vDUp8dKK9I/iEB2S6mwXjOnnyCEkA/Y1DAEU2g5U
	 HfvdtlqpmQOdMqz9xP6Ksm15EA6ZyHSkTRDVuuqboU7rRi6IKbzrZOw2mZwob37SJQ
	 EruR3A47JOp5Y+2ZbrhNdJcjpCDSt4TbfhZE/rugwl3+4UrmOvYCYZvI0e87uN/Ve/
	 6Zp0RD243ogG6DvHItSrO1HUM6xf+eAaPaxk5JRcEoM7dtz76lAAJjf4arggyI+i2Z
	 YREsfkSUl6Hxio7GVOS7BFSnO/LdKzF16wtOgFqswTKI8YoGDo9eie2tY8Ka/M/RCm
	 hTsPiPUITleGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D135EA7942
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023123363.22617.6526513764797879461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ec3581de2c9b7eab8d7efdaa73edb2b39bc80930e214096f42096d787e62b2
Date: Wed, 04 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770231233
