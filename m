Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7981E49D
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714984343; cv=none; b=NroPuNwqpM5nQvt9w63g3GeV9vKsT38uOP4E/UOonFKXfxZwkV5VN02Ev4tVlcNgw9Gl1bjubBbvaISWkk5X7GtoCKPU70GrVUtXkjCaxXbRGA7x4lnVvJ6hTNpbaPTLcZDg2ZZWARJSc6AVySSWcJejMrnBU8zs4tDsP09AS98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714984343; c=relaxed/simple;
	bh=wr9c3vlSgXR+FVpWcm6RZwXcfiabrOYIKhL4gtkAb60=;
	h=To:Subject:From:Message-Id:Date; b=QWTwqwjWGcui2ZjaxMvYJkG7usUeshT0/9YKAUkUrKdvPrHtnBbdYFK0crVQ2c29GylBTtI7G37pTtdMYXnOxqpogA7mFDWRcUzExhNKTxWDHp1KtMckfEhEl0mbyaNIFY3xk4cLMUb3eeG0Vdm/gpCJebW30EiRH7dI571L1KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4zU7YUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4zU7YUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA20C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714984342;
	bh=wr9c3vlSgXR+FVpWcm6RZwXcfiabrOYIKhL4gtkAb60=;
	h=To:Subject:From:Date:From;
	b=Y4zU7YUWYy4Io0dC0j1N/XjPHdti4+RWe3TbyVh/f9mbpGTH4zkIhuf397CiG1LEC
	 JsTTL3rFXK+RZwTEcOxqNbWhC6LJSK6edwO7IejyJdRX/5D1Aw7YBjopFrrOkZf9Iy
	 PVqtgrhRBRyRD6//XlZE9gKflXxH/BkfErOCEnN95E7J90UdfQKUOYOzU0zvMzkCRi
	 Vqwy6J9YT4kQ1ysx5sIgaNYY1W6SPg3qaRr0TNhlMUriV5ziEgI4A2EMC2vtbtySCY
	 K+BX2L/8T6t1CmDMCLphzmsETigdAaO6I8S1ykHP7IuOJJqsSI6SxBUe1Pld0c2+Ym
	 HFANpAq4yFfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8026C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498434280.23575.4444654050777452717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efa5532d8f93a7cbf3afcff5bb96b9a5336f847eed6f67aaaecc1212b9e42f3
Date: Mon, 06 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714984342
