Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C827FB34
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770873894; cv=none; b=XzLOCAxC/cJ3r0d0YUCeFLTYmz80ROjay13vsM87E9xp3tW2EAPiOpx3K9pgpQbSl6B+Q6CX9/m42hTApbeMopDQ5+r4xRqYfDRIZ1WWcaaQauyq9DJ4eF06g3DM7eDMFtrh6+UKYQyLXqM+Wt67qdm7i02HNwm97v6sZ+WnCO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770873894; c=relaxed/simple;
	bh=Xc0w80nyEKqPArSkosm70Q2YOpdzPkso1Q/6eHkh7rw=;
	h=To:Subject:From:Message-Id:Date; b=hMzxQtEq7B8POnzNUVbbohPFr5fJ218Nl3Ax5uR237i0BJ0yjOgOq00pGZW+hrk44fkFIlnuTBJegXXiZNaILlXZMCNHtROabPbC8c+2ywlq4JC4MTCpmY9VLDIkrBK1JhUkjQO5tlJNZLbvIFWtgS3y56SmSRtabcKHeWcssSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpeSYl71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpeSYl71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72EBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770873893;
	bh=Xc0w80nyEKqPArSkosm70Q2YOpdzPkso1Q/6eHkh7rw=;
	h=To:Subject:From:Date:From;
	b=HpeSYl7167MCnlZX9JoAgEIgye/cTbnevJg0DyVkJm0NBlpVEkyMvTFRuwjsS9CfA
	 0tNK5dCTnd46hIM0qgX5Ym2Pn2RRmovhFzo71CRiz/SqkXVdc50o1pDCTFuwb7CCAY
	 gQP2oxp/9hx73NAoYsWpBPF7Gcc2SF3mobYsydodt7aVP1CCAoGY8KI0tCSDt3jwl+
	 j+6jI+jFTfHGeThGsdo61maDLpMh5nZhdXG6ei3lrGYYj2FFNelqQPC8kp9gIBvo9X
	 p5Pv1b+KcEgU1VlG+GI6zONj0FDm/F7C4mGSO7yG814pcBs6v9ERQq8FlZpLxtK3Zn
	 caYZG9/TWy9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB201EDF03F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087389365.17408.7547287875390203688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0722b5bb1861e4c10cfba5fce0ea40ec050c4a4c9056af05d4cc214b2677d1b
Date: Thu, 12 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770873893
