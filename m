Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2FD1F936
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779219034; cv=none; b=qTbAqIQhwZo1J6BQ5vMTZL6qK5orXYumAENIOk8Lwx+dSyHW/MQz7lmeWA1yZ/2o13ZQR6ASu9XlXuDxj3/QwMb0jkW6eJb0vICTskqr/Po3h0x3mCFSWusrlAbM6rKbGRSQVykPdNZIrSbgbYM6Ck76AIqLkVzrWHRqIoLN6rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779219034; c=relaxed/simple;
	bh=MZewyJIjirDPkeGkqkrrj9DJoe1mj1rqs+ZNHSp9DvU=;
	h=To:Subject:From:Message-Id:Date; b=NL6SQ7XWjEooqDlzjCrqsoh3mFD+3l3DY8SQA6WOUR7rsIJBjcsOmumaBAtLYPzjXo33u2s3os7VLipg8mytzVXLoFf0kKtz/mYL05XS8iYi1Th7wHjo88P6ya7M89tTA79N8T3mNifWljsvt93CJEtjNqJFfyHkHTA9/c71aRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqPEy0s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqPEy0s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8761C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779219033;
	bh=MZewyJIjirDPkeGkqkrrj9DJoe1mj1rqs+ZNHSp9DvU=;
	h=To:Subject:From:Date:From;
	b=YqPEy0s6YPZRZuKmLNpbNcxIpa4b2q6eDwXYxTvN7uwSxcBC4sUtL6AJwLJlm7mbj
	 o4f5lQMjQnHG1+5U5EtmJA5xR0gXhDDL6T9U8aetvTVK8Rv4AFV7y6CX/y2kEWYKeO
	 lett8IzbAfJCuK5xkCGrK8jZvGFWadW9PQOwnIlc9koKvn7+SKrLUUrRbCtwaf94n2
	 8dpMRRcpzNV8ApNAhFdAsn3cYU0f4Thi9GXqISPQ6qOOIFflE9/5aYesC6MeSkIqJk
	 jFl3S4BgXxg2+UUcv0gSrwzbg/lLEqZaZbq03iH/SW2TiKq3ex4v1MVekhjjKTKMuS
	 PFEFas0gFwogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA414CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921903368.4823.3242581522767389397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b26f26e89e77a25eb6ed923a7776384b4282d69531ddb9f40224ccffad152e
Date: Tue, 19 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779219033
