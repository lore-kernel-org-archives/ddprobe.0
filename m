Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CB2273D75
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769297634; cv=none; b=L5ikOZcuR8pleS7DtfMKjoLFRkJsyMq2J+VyLNuqGxaJqVnBh3MaMOHlmRMXzVeHdLiyM/ltXMlyPnZmSqKYgCEwlHmCItlMqqLqMq8/X3TuRwrtIkzvtpxcpCqLnvFaXUeT9n7lVYBEt8TLSxnH4JwjIwQT0ZwZEe3Ii8C7yxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769297634; c=relaxed/simple;
	bh=xvBCxgEAZJ6cAalKxVxJNi0pDpi3CTN8u31dx8xw81k=;
	h=To:Subject:From:Message-Id:Date; b=i3JyoH7OcWIy8EXcrk/5SkJiZzYPDeBcISQr1cHWXkit5eyi8m+4DW0XBCHfuc/4r/XmT/tDKqYtaYTyaOBWDbb0vnSigy5l92uX6lQq8MbHR34wWLuEVep+Qo4cnjlGJJqeVbAmyT1A25myVcP8o5W4+7A1sJ+SXTw/JifIr20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB0HugMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB0HugMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769297633;
	bh=xvBCxgEAZJ6cAalKxVxJNi0pDpi3CTN8u31dx8xw81k=;
	h=To:Subject:From:Date:From;
	b=LB0HugMVOYGjTJjTmnP539ZaL72SbGRdqFdz4chTso6ppKXQ0fRFxo8L95UsCokJT
	 96qF3S7SY27N0cuP000PTQplxWfNS4TwTcBZezH6Be1kIgQcPslJXjpWiRkAURMvyp
	 BOkuZW7+Bvxzu0+Wv3w/UPtiN+4hhWkcWHL/y9v07SKKxZ7mrWIF/yuKFN/zDM9Sce
	 spDAI96hfK6ip0kgZs56N96UcTc/+ByDW5KZfXOYW381FlI6j7iLkJewfOsEuygQE7
	 C4fssVkKLrHn40d6/wBP0lBqVEnApWE1JUohUit3YyORSKIMIpNvD2rFRJMMpWfoX+
	 OP0TnW0fwyFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B590D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929763357.2418.16297322695460818490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d192dc5947406618c7f89b9ad4acfe36e4d84ad543ca0c1e335d90fab587fe0a
Date: Sat, 24 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769297633
