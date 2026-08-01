Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5024C31F998
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785546634; cv=none; b=ULkPtKw4NmZd4ieIwzKU/FmylzUBc6CGb7Tqm60LW85eLqUSM8D0Ry+PS23zvJ3MXCF1tFD+78382JfcUi1mpidLWT2dOp3ltiB04ikmsxsa0C2k6Rzf3VUR4jz+wabmdUiszgM2fiFrSATfR8zqaBUkzfVlIFCNf8zzO4BwaN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785546634; c=relaxed/simple;
	bh=VE7aTEpTBYSr7w2j7xxelbJ7FBQ5VN9jwa8QkFpms6g=;
	h=To:Subject:From:Message-Id:Date; b=SlSrr/L5vOcVKi8T6rA3DN2CR+F2s5mwoq7Gm3AwBuXsB9+RlC4x5088X6aKPwLZTg+NrKC7b6dq9I2Etqfz6fSB3XETcaYEvpg0vITbIIBiqtN2jfqlY4v+1sGpSdbAz+d7vyFDMReORzQN/4i9Vat3RfeaRLPUhtg4htXmYBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGxhWu5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGxhWu5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A53C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785546633;
	bh=VE7aTEpTBYSr7w2j7xxelbJ7FBQ5VN9jwa8QkFpms6g=;
	h=To:Subject:From:Date:From;
	b=WGxhWu5xLWt/rrkl/4rGKKlHzPeNgGDJKaNByrMj33N//ewnlzzfzWnoGlyHifQ9o
	 nW6TItNt2LH8jZ60wn6aAYvPUOaFGFBBDP1LogNphpB/nIggk2e5Yv47l6WhEbfZ2P
	 e/MFpPe6hQ5XEC0uz5WBnA5GqcOqrsW5lg9s+QZNb4F2vKAg1rJHGuz5elxOXuurdK
	 BmugoftT2EQ76OYjmizQ1xNn9OVhwSCqJztoZHs+Y3OwnYs3UY5i/d8sayFfMUqXPI
	 bAwBY0unqYLgbo8p4OfhTjcmNyre4HizmwxZkX3Yfs+PpOFA4/xnR2tn6z4uch0bbx
	 3ZTcFCC0c403A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE8C55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554663368.25316.13009395112246499783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c724d6d3a5129aa76d93e4bf1dbb6bc22af271b21a12575c1e69ef5e015dea12
Date: Sat, 01 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785546633
