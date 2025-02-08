Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7155F1A2C11
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739004954; cv=none; b=eWST/1c32Z8518s0jPujLdBujuCJD6ksjoVIEIVEcQCRsx9ni7V+2vMpXGzdvJ+9xlGJQbswQR6zICc8XaeAzXHqVyrSr1a0Sj63t5jabFJhnYtcATeKc3I5bcL8VvgsuA2COx/tVEjeaSu135C/+pp43e/xoJyB1JtoGGUWR50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739004954; c=relaxed/simple;
	bh=YBRI/3ZbbLtILlSttDe6D8CuG3RO4t/74idLzHPwawI=;
	h=To:Subject:From:Message-Id:Date; b=hHbYCUmTiYykzu0h6VWfMHzGGZatgqdfYkOUF4Cnc3TGZRVx1l8oEvx7ibz1Xq8D0+v8bjxMUgX74OnimXm2ch94T+NnrpEoJtFofk/9clp0jeghFr4pmbpLj72TN4y159zb4+kNUbCKG0qK+2FY7/JnWNPpPYy3VFQ7+NXLmIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7bUMVBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7bUMVBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F3EC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739004953;
	bh=YBRI/3ZbbLtILlSttDe6D8CuG3RO4t/74idLzHPwawI=;
	h=To:Subject:From:Date:From;
	b=G7bUMVBIIX9gKsJ/G6qWWlqg0qiHu7pB/FCSj1vEygRjJ4JhOOz/4NAW8fj1O5fXt
	 5+Th2cuB5X2G7HDfu7gdYPvwPAiCWwgOyO+ueS4ZbeaU/oVg/AQfOlTk5aKarbz/cM
	 QxtOQPsgws7GdazecgMlc5xJTHWseBQA0XyVNZI2KuHhUxXC5XSZF0MZUpF8GOTSjz
	 fQZsKXTmog0MrMzBG41SusaSN7mUHOnRkma/1WNwaUcdMbHsqsD9C4MmI8krr4iFe6
	 rp9kCP0vhqu4h1xnjtZou+2lujoZghHhmSneofx3yhTaMZwy0gsAwP4p0MGZJNPL+Z
	 ux1FQo1TU6EKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7EEC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900495369.8514.6816923864334004254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58672625ef231604c7f44c48764b0ecad6dc2fc3dced9531201df2599e3a7914
Date: Sat, 08 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739004953
