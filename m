Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271652A1BB
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753334394; cv=none; b=snaD8+23AiCKo4gUzT/phXAK1yE3RGKc6etOIrormSjcOIzTwQFL2ccfw5U0pWuEBcDFr5wsdEdTyTt1FqqeeK6uF8vFgDUQossnC5KUXSy5rS7CTNfGu0KNhIgyQ/+4LRC3v+0LX0goliyhB5b4PTv1FCYZfUqPsnFZC9bl8OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753334394; c=relaxed/simple;
	bh=YiU29AaRFaKvH5TUupU/sVAA4WdL1mhSX4lnAROOT5o=;
	h=To:Subject:From:Message-Id:Date; b=Vt5Ei+gK9D2rvZAORzOV3poY5C9NB/8/7S4ldhhXbQ8knCiFdt0Avml4Na8qJ+42iMIiAuWHN2hb3FSrBk1m3aXYfXhTXFm7XIyAca/Gs31wYMvkydVgoX7uRNHkKcKrOZn610nUSFbebIcP9uqnkEqbVmmvAs2idEDC1ahUWJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4rrrg2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4rrrg2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEBDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753334393;
	bh=YiU29AaRFaKvH5TUupU/sVAA4WdL1mhSX4lnAROOT5o=;
	h=To:Subject:From:Date:From;
	b=I4rrrg2qjygoor/QzZzuPJniaUlANz9RucUcUfCFLfiDLrloDLQlpRoLaGXmbK/HN
	 9jOUoLCx/afVZkoivE8G6ItQHFuFHxKNlZUa0T9FEF7Lrn7BaNq8YFISyDR2fK+vwX
	 gQvxB+1GHafSOrV/SxleBzBsEWrAAvO8XYAVXrRbgs0R798s63UZ0/TARgOXqtBpNO
	 DP+QcmPp4DBYyp/+nKWLZouGwL1nNQLqryCi2EnCLM8uthVUjzymkzGHpuQnjwhwIs
	 OTDl0gP2VFiFGTTbZONi81xvn/I9Z6Nh+ke3SM2JyPn2xsQspEXwNrDo/COpprrqp/
	 PaLUcf85fWXvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E393C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333439357.12440.2094770745029587617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cd0187b7d38559b2c3112aa815998e91ff58891e0b59e5c324102dd4b715c6
Date: Thu, 24 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753334393
