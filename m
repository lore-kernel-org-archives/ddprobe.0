Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1751E258CF7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758463194; cv=none; b=hYwZxPmT8QReRfe/jgp+4FggRvGqYKMz+xsab4bLUa5PTLeQ7JTaYzjCuGd3YGlzTNh5AW2ig5P/9Bhoyk7UsKI0A+HUsaQfol6uug6dFncdYm4XKmcVwEEk/AkqM5RhyrJ2jvHyaojGMZcRm9NdJtbjdIF9sETBckiqNzdKdyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758463194; c=relaxed/simple;
	bh=Mw3UdIG1mb9bhSynQoTb4VVFZGWGmWNryze5E5euWjQ=;
	h=To:Subject:From:Message-Id:Date; b=fL/tjbHmeFPYU7hgKVt8fixSEjcrkHyfCug+XHRGhrUJmA48R+CVrGssoEh1qollLhtjhWP4vJWsAB7ANXRAPSQ0oI06FLJVGAaL0sK6SWHKNiZGLo3FTU4nbvA+vz0MwZBbiIe7rOgW6lZ6zfRh/1povhVEcUemCnfMxJvMBzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcPzRt/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcPzRt/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F702C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758463193;
	bh=Mw3UdIG1mb9bhSynQoTb4VVFZGWGmWNryze5E5euWjQ=;
	h=To:Subject:From:Date:From;
	b=HcPzRt/JaTZMOidswiBc28qxFhN4aEwQgo6qGy7kUy+kW9klj6ve/kkHKMojhuSdO
	 ryLlNSCDM90Nr8NiGIh+orDRiBHghP8w3lWXxnsFX8hQQuS+xOjYiPlMy3uPpjkAum
	 eA4xNJkhz/5QGs54pPe0IAow7CrYN2Fyt/bFK+PXqQ6Obz6XaXWOCWT9J23odQ4OhV
	 R/deHF0Njmt5F9+hymWXVA33l1QCmkVdXJK7S9N3FdXb2IW4pMb3GlxFFJD+6lM2Gh
	 j6oTaauR/bdkvDKcI9Wrf0b4xhWwafLQ0r33zWCsJAYCQss9uHgLdFRipPhzmaUlQW
	 iknvCYQ8tJFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D2CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846319357.19799.14130518639407137272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be032627948f5a16c2af223b9b524aeaeffbf78e09f24a2e9ae90ad44f90ff15
Date: Sun, 21 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758463193
