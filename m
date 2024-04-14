Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E593286BD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713089963; cv=none; b=RO3jKmdl8DB34Xu0ZSFsFBqfv4OO+4VVModWmMrj8xDkwcdHfoxDIQrEy4dU/mk2jPBn+HH6iQuUXKjTm4dr3C4BSbVsXFSo9yZH6UakcF8xSX7M9gACqxxb2ZYjF0FX9dN33mD3Jsfh9c7Irn6rd1MeygRYNVnuysPN6smJd2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713089963; c=relaxed/simple;
	bh=+ogOV8T7HF/wsFy4lOsSSzLs8Iicvje/7C9V3ZQ8PHE=;
	h=To:Subject:From:Message-Id:Date; b=b/8uMrrgO6fID8Yx8MumU3nK4jei0UETVUsW+vy2HCiS+nbZX/iMcGfXPLL2KLSpwE6f+J7XKpSUOJWUpA6TnaRExYcTN8oLcinsvg9GQDGABkWgmt2AGjuE1WuaghggzaLjFxHXvoymkQ6amyaKvcisdMZvU/nS9x3OS4GfnjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6T67X8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6T67X8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC97C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713089962;
	bh=+ogOV8T7HF/wsFy4lOsSSzLs8Iicvje/7C9V3ZQ8PHE=;
	h=To:Subject:From:Date:From;
	b=Q6T67X8DTPKS25D2TierbtiIP/Sr8OJjTmAMy1+O15AJX9gT7/DZEEAHJv9aZbyaw
	 3YCo55cafQY2F0AMtjHV0vBUU//wpbJo0hUkD1BWoEnPMxHErKqQ/uZ9Xf1OkJ5sgw
	 H15OY4Vw4QsGfLhbjGPAyWnqM72WNNkYsf/+TSOYPYLsspICGOtDI7QXO+20PsKTbo
	 OCXNy7a93tiqy8fj2jfLdRYYCNK5u2MurpBwyM8pdbv+TTEZEUlrAV1YmNMEq3zS0H
	 trDvBwVVFzW/32HPOaheHHkBSa1Rpxqc3uBadcH2NAh5Mojn4olRER1W9vEh6QQIAI
	 ybthmDLoaVaPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94F6C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308996275.4425.5710639846369324546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0765f94397eb08c84eb1aa91c01a3c94f3618dc8525f4df1e677dec1f9a6ac
Date: Sun, 14 Apr 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713089962
