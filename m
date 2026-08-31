Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33E930AAA9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788137434; cv=none; b=qNH2sc5uvq0u06rRB38oAtc71xRuiUzYVNWEtzssZ42r7a6gL32nFrN00lZyzHmjEPKlKGOoxXtWp+HfUIW+Mj96N8YGI7dpIQq9Q4ayZRwwdNXl5cUYqDFWcPAj7E9DvRTfBWDJGfrPPzQ3F5k20ew+v0xf2cBk/j6ofvLs3BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788137434; c=relaxed/simple;
	bh=3oPoc45f9Yjt+2ujuo3aLppmoJwavrg+A8Ko9FcbY/0=;
	h=To:Subject:From:Message-Id:Date; b=LrxTatRO1b9rdAVltYIiNbyI5k/e4ufW0ptaLCwcVGcKe7fronP6GI1nIY8yjJ+2cs+6qCYRRhArFtHMRhD95ZiTkat66Zh1NrMnLdjBOfT1aSNY5KMFh8UKFn+H9OGnO1V4vKwAhZHDHi7NQSurO4dZhZGkAXt3s0cbTW9j32w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2D3u3Kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2D3u3Kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4B1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788137433;
	bh=3oPoc45f9Yjt+2ujuo3aLppmoJwavrg+A8Ko9FcbY/0=;
	h=To:Subject:From:Date:From;
	b=r2D3u3Kw5lrom2nmvF/nq7fI/ArN3BcUlp/eOexjoSNcx5njW01HKpTPEaO6cWMmZ
	 Q0ey+3osDAl3mMgzizr6Znsy0Pc9r7R9xaAO4jLhWXorusKVgwQ9vxL825CJcdlsJI
	 k/LgVvFVvjkMUvY9UHh/amBLQflt+pdn0wPmm2eTlRJJkdRZNqyJoNIESRrEmSM3GY
	 pLii27acFsybalHT2XzfT24bvMdruSZq7HHK+OkU9peDl3qCRNs6wLnSf4rgbpbOs9
	 5IqxvaV003C3WSR75ziC0By9nAJ/NSxP49OLh3bqSV/h5HC7luadx7dhuOpFBN8mJI
	 RoMEeVIKOXVjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA669C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813743368.8561.13277833837096972734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c6ab3dccaa8dec39124b0fa64706591cf6f4f8d8ad15598e674e8516bde00c
Date: Mon, 31 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788137433
