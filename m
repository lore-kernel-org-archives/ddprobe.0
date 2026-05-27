Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20916368974
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779852754; cv=none; b=kVYsBla5phcgERMFd2x5n/MgSjHgyQAlBAgBznSnle0tAwYfJfB/fC3NI8tu+Dahoa6Zy8eevZDjAMh+vqos5nXkAGL8QBACYAuy6ntINbIqN7fMfGK7BrUzByszSY5lXsAkPBQpjqCZizaGOchfeqFofVY28UXf1sq/Yp23jpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779852754; c=relaxed/simple;
	bh=pz+HNQHIAx3jS8zssd+KEapQu9kfDs83TJOleaKfD+Q=;
	h=To:Subject:From:Message-Id:Date; b=G8c9/zQLqi0GHb6y+yJ/r6PcWXCCPZzw27uG00D0k4yPWQCbUg1us7e5/tSyenaCGMjqFJT5OoEY+MkVWwQiPs8rAK6oKk9kAqxWkZ4uMd0lx9WkFoGWIT5JRKLr7Smpews6ffXb74JSou4+og9LbD0EQt+tt0UtCJnrAFnjG0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBmqmdwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBmqmdwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5698C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779852753;
	bh=pz+HNQHIAx3jS8zssd+KEapQu9kfDs83TJOleaKfD+Q=;
	h=To:Subject:From:Date:From;
	b=eBmqmdwLWHGqMGcrDIjO+RQpsM486ItQ/KOJHa+b0nTAhnKCDgIQPGnfpWBe3kadI
	 1ngs3iG7XZ/mW3eQ7bJvFpfVlwbFSlmN83VrJPf1Li041qRvNKHRgRTnFcWUmuExFj
	 vBQbVxnWvSTRhQeBrBl6LvAN/npA9Tk0L6ke0aZHTvlLsIlGxiUt4+DyXMmRmQyIVz
	 LI85MpxPcRystakdqBslSQDgLgeDvsArr4W+1h8R/Ssd4wBwxDc6c1Kvi9Aiq2L2EI
	 2qNCemUdqfA03iAeMrXZ88EuUet1mcsfrgOndQ1gFcqzQl4aSGJP3DsEK+6HUKo6hr
	 imUxj93XFy5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1ABCD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985275368.19944.15494743076707853241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83c0a0bc766ac3ee9630cc1cce09772989d7461f25a3ff7072752e5b9c31095
Date: Wed, 27 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779852753
