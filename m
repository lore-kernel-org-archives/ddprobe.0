Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C875D4EDCA2
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790772634; cv=none; b=NZfuVNIExTQ+5nTKXLseZci8N5dTxYEWUiP9O0NwcFpoaQ6eOBjiRXMkCAe347c6XGNsSjUj+Eq1R7z849G5xNbqHojdEmqBIZ7ebDT7zGdMH6vu8iszc/JFM9wx/atre4vX5ej2ZnnlORrbIxiMG5E2RvZBhEpJ1DZYw0JzWOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790772634; c=relaxed/simple;
	bh=oLkdbTtYcdFwErzzCP9EAsYPW7CnXVnDjCrJ6bCXswg=;
	h=To:Subject:From:Message-Id:Date; b=Nj/asctNixSKm8GxbYk/1uohBbddrYkItYelXB9qXy/207+rMrW79g57jdzjiWhd3hLAjZ1CL5maPsKFlfBpbz7bXlj8mGNKE0fwCwPRIQtYQZ62NTsBCROMg92tiyDC70WHaW56rwefXYbCsYNnPIpYmIqnSlBoYYoJmzz5E1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiA5qQFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiA5qQFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB77C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790772633;
	bh=oLkdbTtYcdFwErzzCP9EAsYPW7CnXVnDjCrJ6bCXswg=;
	h=To:Subject:From:Date:From;
	b=AiA5qQFttEqkh3K9FBJHFaz6384h0wKYtvaVU62N9OHYSrn9k+nrhaQftCieHtzaK
	 zkKh+6oxnYnHhclVYQFInc37nbdCxRQMcjNdpoZfBhqbGkHMD788izTm2eVrg2wAI+
	 AXM6vOp8Og3FzcWxUq9aVxZRT9zT6V+xHWrqDOZtjXUIzBbYqi/gWyVK/IAVhtNo37
	 ELKGql50X53h1bTn1efHYv9UgrWa7PZky0l+HCKC4yhPUkteekToqjwgPt4FHjZQnS
	 8jUllN89al4gUNLbczKIoIrWR72RT0yOxi82/G+owo6p7U3Ml9JoxLzRpgtUV22fV0
	 BWvF77dEdhMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D5CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077263368.12811.4979591640722471759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d49750eccea5bdb19869a4d7beef58b6bc8a1f5f9520ba37f5dbc8514f9214f
Date: Wed, 30 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790772633
