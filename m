Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC5C364959
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786992634; cv=none; b=tXwCrZjVOscVH+075v39lZqsZAA7X8Stl6twJHrJXmORQdei6P/KPEsvoLMrUK62VHxgwYNntGo7/+dGZTFjG23PktDLzSTmL32lwQDBtR62oa5lJEapUPZpWRMOuxhislvMZ46p+o2SFu5ueIBKZ8Z3QVtmqOCR/PqYktcfRYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786992634; c=relaxed/simple;
	bh=OYYOllbZLzvrkihqHOpK8G/ErUgdQixzR7pbioej3ok=;
	h=To:Subject:From:Message-Id:Date; b=MTV/1bYAzvsgTj6StHABpBHCgz0BwZ8DE0sCoOG5Fa8HndwxqD6x1ePw7nNbirQuT9HXa60S2mW1Zh0fB3/+vvZXCM7kNPEo/93IQMV7yOsNgLOhlscb0XuqP1Kt/CfeU1jVcTAngRWDCnvFnlAY2AVIBkhVrFwvKjcE2zBuByo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8ygHoPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8ygHoPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB22BC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786992634;
	bh=OYYOllbZLzvrkihqHOpK8G/ErUgdQixzR7pbioej3ok=;
	h=To:Subject:From:Date:From;
	b=q8ygHoPhVc8ZRfH6Vl/0F1XfCjDs5UshedWOEwQCaEu3/qd9MkVUb+cTxNCmujjBy
	 E7CHB6PmqOHx3q8RMJ8zldI+RF/7T4a1GwTUpbQSZ269Sd0i79bgdupGM6QyAyh2Eu
	 UjLhmve4svkXJXIb0QFiOSMMny0p9c5gszbEOWYhkyMWnUW1EUHLQVBS0tzK1Hp/uz
	 cSEzTzA1SE8xm+3Uiebe0C/0wvJcLcyLaLihk9t95UpAUgfA7Jt3E09y4nqIdM2Dc/
	 evVYt+pq3IXjKNmcmbTeoitMqoeU9f5uwytMfxO+JNJhfnPeCGn+uapixDCoW+NKM1
	 VBSQKB9ZI30zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD036C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699263370.27497.272759442515107122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1121ae02ccb16fee8ae82cbd7105ec22a073320e39de869e1f53ca7dc45b381a
Date: Mon, 17 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786992633
