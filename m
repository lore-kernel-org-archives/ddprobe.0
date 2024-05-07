Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FDA79B8E
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715124143; cv=none; b=tlYXAyawDCNmdjhcvM43d+ZgWj+Or2gbNauWjZC3Un6+o9QCvtAniUOJbrkwJzNsab4wKpbWbKN4WQ/qe2VTlplzCgjOcG4hOQEYCo62aX28/ZUFooXD5hC0Ld9GWpqIs4SlVfHoIaNhaKJY8YMsGknIvvHzePV8x4YI7YaalGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715124143; c=relaxed/simple;
	bh=bch4s+lNf5flAHOvSMuri+qurEVGZbkC7B4izv33VVM=;
	h=To:Subject:From:Message-Id:Date; b=MnDxzW4KF4NNvD/enUprXOIxi2qZrOCEYKZSYRaGSb3VlknnS+X//LzjY8chMQLwMhKu/OMrd/PUqlD+itT2l+XS9+c1Z+oEoNcX5TLHv9q6De4NLmkfqRkMtHV39WTQGxkTeFZRgnp4qC/04aWIHqcfYANg+szNIPBmwo5My4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOyH9od/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOyH9od/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EB5C4AF17
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715124142;
	bh=bch4s+lNf5flAHOvSMuri+qurEVGZbkC7B4izv33VVM=;
	h=To:Subject:From:Date:From;
	b=jOyH9od/Ld9oqGDtPQb7/a/bVfZ6bpHCJw/kKlhrZ1gEsjl1yhV2CVugOR7/iD69r
	 X7tN2sTLRU0iIa0ZlN62Bfp4aR7skEbdiO91J/+MCJ1GyKz2OQsrzupW9wzak6mcW+
	 tCnfXxI1hCCYDipFPTcDEbHbVRLjW/bEBynzjbrXzPGxsBNypje6t+s4a6D+STMOTk
	 v8aNE4iwlWZPyIV891Ktz3Ri8S71oWROJN1RPiTJiAwukrDZAwD08rh8TCMJzHM8S0
	 puyV9ec4XiaDx1khWzTdViHz6U8cjZDfTN0vMkRtkIjxR/gZuMIQHTsUMDncq+WMNs
	 cWIZwOj9Q0VDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2353C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171512414277.15368.5290215767021818054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5538ebc897fe686ee2fc2f6339f45209ddd6ac1914c3f619f71ceee248366489
Date: Tue, 07 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715124142
