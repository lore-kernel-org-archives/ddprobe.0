Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF93270EDF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776480454; cv=none; b=j/evYPqNnjJuwe+403+/NWrfHG1r+Da746B/bAIiaSW41SJJM2M6JpFwMBu1hfWNkT8D5KNSAZjx5l0w5p+EZ2oc/A4PM+eYExHN77CARGitZQWIMubmcVrr9v3KkHhZ+q/4XHdV9OBYJfomtqKbQBs7D3drHPfhhw6u9tAty7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776480454; c=relaxed/simple;
	bh=25P06+SDFLeAdqkvudcii9Op6T86Wr5vo2rlFQioDhQ=;
	h=To:Subject:From:Message-Id:Date; b=HYoLXUWNWElNVq3Gjf2zC7TuDgFspxW9E3l2jOSe9FOOFCE8Hn+r61wmCFGhOoF8h1Zjj+/rjyaQbETJE2seWjkUQCei5ytNJkoCyHt5tzL5OshfKQPys4PN/6Pp68imRDqaxWXINWHe+O4fePZYGlsfelewQeUz6IsL6ocdq0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8TqXAwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8TqXAwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16B8C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776480453;
	bh=25P06+SDFLeAdqkvudcii9Op6T86Wr5vo2rlFQioDhQ=;
	h=To:Subject:From:Date:From;
	b=Z8TqXAwiHGx1U+qwYNunkO/CSyrb9nAyUbINJbf8TEF4oS9hSdA3CBPO3k4qiiNp+
	 p+V0aWObpPgtsEaqJxtTtYf9fV826YCAThU4vropLVBedP9iZBworHUTRBq+FLuj8V
	 8DTXFQPQI5YPG5aa+28SNGkxjPJjmVPmtjeEym9zpKILxem00ItkMQsv6lNOj1hTFD
	 ohI+hjeHLL6BGOIatmDyGjCZGRD5cacLb8tr6i3SC+4diDLQKH6vYXH0A0s1Aa+CGP
	 JKQPaGCpWwhkYUvzihpzSEdKiBBiFvhpKgzvuNuHVvv4/q/CNCz4qpTzy4bp7c5wmJ
	 5ixtiXCXEWSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD34F99C72
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648045368.5590.16454953164706107119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1252c79a53343f59ae996cdd33f992028c7f60b26f7d88650d6ffce68c75760b
Date: Sat, 18 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776480453
