Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47513D9DAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775835454; cv=none; b=kPAmuLEqSNHCNGVplSL6rZoyYUThwfox/rgBJAF7V5ftxwCJipj4K5ojLvD3++F18rMx3g4+iBqL3dAi8tvwFPQFpFzVMCjmEFezXRRyNWrUVjBPW+UrWjw1vY3nBacgIhde2YrFJM9WDHiLrg+K651svVaBIjAv9wniG5ahW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775835454; c=relaxed/simple;
	bh=TC1eajtW7/AdoHKJY2S6lb4krD9azksjDnHbTJa815g=;
	h=To:Subject:From:Message-Id:Date; b=enJa6VVKcrNqP4xO0kGwimZ1xMQcVva0pcBzEC6zhZIqWi530WWwYl+7L9asGs41Ftee3tprZwkfGu3yqRkbnRlrEBXwzEcLnVLmBWhwWE69HYGvEoz/QUQo1FNH9eKJxQQBv+OQZN9Sd5CGy7ySH7UJAcDwhOpwnGzYhLtrUsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9uU/wBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9uU/wBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC9BC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775835453;
	bh=TC1eajtW7/AdoHKJY2S6lb4krD9azksjDnHbTJa815g=;
	h=To:Subject:From:Date:From;
	b=N9uU/wBM/TOIcSZoiJFPm7oFhaarw23P9sr7l9vkMNBjdLz/x4I1VngF2Yfu26m06
	 73Yw9ihdcIrpB2Qrn5FH2teR204fsiaZDl5JA52rhNRx1TDTpqJdur6ac76Y7+p2++
	 n65+b/LAsUBirqHUxZEd6AV6jAsqBc61WlaZVoALxnt7M/UrQzRkWiqK0yelIgQBO0
	 Vpa+8J6kTOHgOFQtLa9dMZ1ObyWP8EYbcKtfQL3Qih7uMBvzXHZk78d109FRPeLHVc
	 FBx4hR25zuUeJES8zI6HLy2bQjzqejZyEnRbIDn0TueGYWg8nBeROx9KhEAKEoxHoG
	 9DfLCchk3A2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF27F459EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583545368.6954.12619106653594190705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bab682fa9e92d2f1b1ef3a4eb250d02ea10847e9d76088b554a3b621266d33
Date: Fri, 10 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775835453
