Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BFB27E060
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764162774; cv=none; b=MnfWo3f5Qpjf9dKyZQZdQZs4s9+Oync4elaQ0R723iT7lIWAzAynsv4Zjh/3MiB0jJ8eXNOmNEK6QbLlxrXrJtOQ27OCTo03vVCib845qh8NYU5zOcp/2CGzXHQfZdh8WPaXgeC1kEDRAHvDh6R6K40O0eJlwpS0fsoQ2TOwQyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764162774; c=relaxed/simple;
	bh=z3Kmc5mY8fTGopsqkc2+t3ikIafIkUzZwXJmx9qQqOo=;
	h=To:Subject:From:Message-Id:Date; b=NMHjdzd23FInvSGCH8irYbmgpvf74ib/wrjLkncFEbS/9ZME/37E5fiHSFGhQLyrQb7xeDKNg1WEdBGVAUzX+Bz19kRJopJPGoej+elyMCs0/Dn2WVlneqWbNpOenjbLvhkgC6LiWVDURWcg9Jhtiw4oEurdxukjxp42Yk6If54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j13Lg0Na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j13Lg0Na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FCC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764162773;
	bh=z3Kmc5mY8fTGopsqkc2+t3ikIafIkUzZwXJmx9qQqOo=;
	h=To:Subject:From:Date:From;
	b=j13Lg0NaTljcjTaN/gGzTOHpoojB89M/lPwcRK0+C3kTVsR56ib9nI/SJ/U/fMFkC
	 w94uu5EUA/toOiuFcu3/2s9xwKvt6EiNbhD9iiVUjOTDoUrP+UMm+e/bMsm0heXeHg
	 P97GLh5Ot5U2Th1EYic2MTVfM3OKp+8TIvzpkwgD/ze6vkNnLraStF1fEsxvyt3Gtf
	 TQ/ik9vRGBmN3ouol8ePOOs9Ik4Aml7+RzasgkKf0G/PxgvZAbYxX8iM0LMe0CZ7yq
	 bSTjGgpkwYQQishArK+pUW2MWYz7OE2CSx+TIyNm7GqL1cgLRDSnDrX+aSDk5lQKvA
	 IjLt/owWWdxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5DD10F4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416277360.25180.2857473505054004918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49560868b851a21ce33f1bc39de6362a842349f4f7e39ba5d31f36d42f2b5247
Date: Wed, 26 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764162773
