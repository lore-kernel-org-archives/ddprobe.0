Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AE62EEE83
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789854034; cv=none; b=g3v/9j16OVVFmrGsz9JUUzPvZ2JgWMNPoDmqe6mpERw1rD03T9d2YtKDld8/1nbPW/crS0yEqNceAVYZF71xLIbNwmqRrYIgUPwbSUaM73EifNmXMFxBpWz/b7EmpDXwN8TnRjTrIe8IgoQRe2GepYqxYJjn8LpkXifq+aE9FnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789854034; c=relaxed/simple;
	bh=SQtnd09yWg6xCBiB9YrtVEEXzGkyoXXBGm/CY53IzrI=;
	h=To:Subject:From:Message-Id:Date; b=hD0bYuK8ItA3pNXPztrrqABAz42w0ruENpJeSW2sEGbxvUfX1/uQrcmVuBl9CUAZ5krnpZJBLOmbTQhwE+RJf1SimpcBan3bPBkODBuzsHEpR+DuoPuIs1dq038R39ww3CaOc2QdCy3dV8q3wKxToeTwM+juWlxNaCamWqu/s6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoxPX0kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoxPX0kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28AFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789854033;
	bh=SQtnd09yWg6xCBiB9YrtVEEXzGkyoXXBGm/CY53IzrI=;
	h=To:Subject:From:Date:From;
	b=aoxPX0kF5Jg5gTie2DdBPtS2FtcORvvCnEhoCZXDfLroKpruUOiIAXLq8jg3/pVVB
	 hX6V3n97ce3eK2cKfSuhXwRCqFIxQ4uRfMW3cBgODPuqXnpG3LZkTB1bBpxS/Gu25a
	 mkMjBeJql6Y82ZJB2baiehaotQlCmaPUVQA8JmQuysnR0ZdqO19BiLG+gLtUbnG1S+
	 OqnZAT4p+oJX2kpklrAFf9YsvHsFs6uZV9fqtH8aY6p4AwugwdflcSwlI1ukXpa+vq
	 Tvpt++5fzIEX72ISkEiqjEdZ/FIwZ6Go3W8we9JLG+3CVhuNR5EmF+Pi5o8DadDdVk
	 BZfVqyK0mxiuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE66C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985403368.1865.8580833581065539357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f7b8a75fb84acd17ae2fbf2c4460e10e73c1e18de8503e7151a9a611be1f60
Date: Sat, 19 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789854033
