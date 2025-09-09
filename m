Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CF2417F8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757419194; cv=none; b=uqiD4zxE2CVNRQcJWSyJdCSQErkIqcQlzj4FVYgUWuReTxub0uSFWG8fMYuwQVhKagLHQX+PuRwf1KFsi1Bz1g1eBJB7TnVYbHMG2WhuUm7eZGLMp0+HdyRZ7SdldvbHGRF/rOAuIGyXF6ZGoxVm+jABo4VEIogVLFUwinf8kso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757419194; c=relaxed/simple;
	bh=ofiGJI03y8OEt9cY+osf9srXj9Miqc43ut0ZEHq81tc=;
	h=To:Subject:From:Message-Id:Date; b=sKmDZZHBpEfC37fRwOx9kACi4RPejEBvtQMdm1d9TFKV87bYeqPnLIt5JwyXXhXo+UiT+iyMn0oXnwWYm00OwjTJLBXfuaqed+A0Z9heGC7r74FksHO9BS5AYfoRWDTjVAQ/tdAeUo9wUy/jGMkhSEN5Aomq01ME4zpL884jF+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf9aERW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf9aERW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C4C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757419193;
	bh=ofiGJI03y8OEt9cY+osf9srXj9Miqc43ut0ZEHq81tc=;
	h=To:Subject:From:Date:From;
	b=cf9aERW+n3/gv8uJXIzWVb5F8rlh3GEY9NcTT2dWvjCTS0txAiFoVQKG8YoXrsb7c
	 KJ/9HD/FxnM+7qGhuj3cvaAoP1k9JxtNL16saRwAO1e1pkusPHJpw6aXJrU9TDoYXW
	 jmCKvjU1Y/lFOSuBy8jiU8oaxO4z5H9J+ofwEjdi8b17BNt64MwImAqXDAT97L9GYL
	 bzdLS4QR5c9JBxdAwJGKYbhaETrG7ATBbP8jXE0QteFnc8MOaWk6RWKGmNkFy00gE0
	 YE4tuT9lZCZ2ZvDalU9eiiLaSMaaDG8owsE6w2G31CZDni94Wy8mhgeQuIUG6xd0Nn
	 QDpTYqUdBiQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11ACAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741919357.8474.17594359473839430409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a564f0d44e6ba8137a9272bec89cb7e01a294f198523df82497965863060f8fa
Date: Tue, 09 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757419193
