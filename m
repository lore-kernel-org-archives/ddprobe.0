Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113AA17BA4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722558954; cv=none; b=Fs2fLYgsH5Vn8P1dGAMkI6K+YSIzXRUjXbloCPc3MHKSnWvY/r8wPDAy+unW7J8MwKItCR7X37TspKh0s8exPXtbXES3osl9ZeagaNoh20gA/617ghF+C038tYDGVmnMN6nwML8+Y1sRuIT6r+JmMZU64+X4xbS2XRujhFhU6s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722558954; c=relaxed/simple;
	bh=PsRVTIvXMyi+NKeo9uy6xWkj7/dlKUtZd5OqwwubVDk=;
	h=To:Subject:From:Message-Id:Date; b=n6RzB/jt8rcFI6yQd+EpgmUL3C0qPxL3jK/3ulRJNb881Wzifl1Q0KocCCObUmAih1lb+zes1igFuaB62qhSAdWcuuuK/6EqZoyJKnQewGseHoNe70XpY3Tn+P5AeGyjuvkuvo980tpqOKY8YhgncqRq7V6I1fVzVteKflcyCjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhMwP7jN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhMwP7jN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A755EC32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722558953;
	bh=PsRVTIvXMyi+NKeo9uy6xWkj7/dlKUtZd5OqwwubVDk=;
	h=To:Subject:From:Date:From;
	b=fhMwP7jNJY9cXs5YBoSwqK2ohF4wYkRKPkmzK6NCmGQlsuz66wdlgRO6zmzq8Bvza
	 4r0c4CjovXlkuCohPxxzmGXiMLx/B5gz+vzP3/yqlmu2o5P9GVJmHQUY6tc38AYNEa
	 9ZEy0msHjAAP0cbavVSICDc4j3sFdHCARwORh4RubtEBMrDzI+2laFIbCmJlt9DOsy
	 bMgLXEE01iFg/Ffd4p11nYm/LdaDQYlFho1I13G9VW93+zTEKwwmtKe4ijAF5storb
	 vS3syTij4TAhQm4PunnzSXPM6n+05Xnp6+mqUyoFwc+qZdL8IPUuJ6sKkncEfY12Mo
	 Bkt1jzulGjHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255895360.8561.14748194498902681088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd88ec8db04799c07566b36395854116346ce293071ad15ddd8bdda9baf0d3a
Date: Fri, 02 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722558953
