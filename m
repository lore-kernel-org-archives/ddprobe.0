Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E1621CFE0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788927634; cv=none; b=Ld4DNY14xLyemCJNPs9GygqqROZAodNpmRM6uAzg5aympyzXwqOuSMkhVBcNxV1yLr8k41YrhC5s4gllSCSh92XaqG+cpOIci5bdKF+zocvsJabjnNj9a+H+tgXDhpbPQnZqOuzBuBIWu2xEjTCDB26wh5/hpDwuFa8TEJ9g/gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788927634; c=relaxed/simple;
	bh=FcHNclMIdl1gIxs57AS6tbdKD2egk+h38/u0WazDjL0=;
	h=To:Subject:From:Message-Id:Date; b=Nd0FrihDu7rY8k9wN//COZ9K3QUM8l1ZzjqnFFZX66NevwLvhq9gK+pvZz+1xnaZUw8g3XiX4DbG/okpbQ/nztakBSxvnXCSsAZhPLNMyCh3X65tgU1DvqBOs1haGd+DaKl5Etk+gCAQ4Du8x5NW+5V/Zssc29PTUrOSQnVztwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WObQPKVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WObQPKVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27B2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788927633;
	bh=FcHNclMIdl1gIxs57AS6tbdKD2egk+h38/u0WazDjL0=;
	h=To:Subject:From:Date:From;
	b=WObQPKVdFoVs+1i1AJVGpocY9Kf8RHr/HEQv9QEqcLYRTxWo7h3CfUmkfly1MIo+F
	 bXt6jnf55KkMWz9pSzJqFaHMlTZ1q2h53hFgH8m9gCxEWXgxQF/Ax22Nery/QcvUeg
	 Qy/aCKez84RMwWb56pJuQRMJPJ91J33nkeR0Ms+vN3DZlMDSCzFP0k00HDRoodmfdg
	 X32v1MQ4c0rPyRnJZKQvwslzWSAhXW5Qkcmqe317CCn9xcwFxJGfq9b5ao6+pZUVgy
	 ltDdVQ83FkADctwR/0AuD6ZdI8/euXziQVGZPaOeR1Oki8Uw4cZbkPGynSJw/2hSfv
	 xzG/bcbwIyGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF7EC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892763369.1440.3943353672675717252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc3ef40c4a409ec70afbc546b020e070a67de294e890389d44d7c3e7dafa1da
Date: Wed, 09 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788927633
