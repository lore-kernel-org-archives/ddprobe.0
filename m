Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B311DE4E0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779897154; cv=none; b=JI5FONtBgMg6lelBQALzWVv0cdLxLq3PMw732CGJBI6YkltGzStv3WeoAx/Wqa5xXDwJvoF6585JhGS26Iwo3vLYBnYcazj7NKd0wgBPe3HWtLyEeO0q49A4Chghw0jCVstG1Gminuw/nAw1zYg5W5/iKFu/xhUIS6TYKIILi5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779897154; c=relaxed/simple;
	bh=WunIfRcAckqooxLhIJdgxgCa49bSU4O7rTj2R2eHxFQ=;
	h=To:Subject:From:Message-Id:Date; b=oZCwE1qGvg+eWTOdbtHfvgp7wdBvH3ag8aRF4gVtsSqw/IQC2pDbnmBsvPZEQMSULlvnbL/IaOCch8FM4P30EjfSxIeXWqqOC8zqqXmsLckl4njUyXdU+qd0DAUE9JgxBp7C39v5sFL5H/OsvOslb5t6XmAqDpkYhV2MM6miSOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t252wTXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t252wTXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C070EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779897153;
	bh=WunIfRcAckqooxLhIJdgxgCa49bSU4O7rTj2R2eHxFQ=;
	h=To:Subject:From:Date:From;
	b=t252wTXqJTPTHZ6hsJOK77ZqFvqmGiiJrZmxrLyOH/bSvnjVJK8pS3yyZTlt43p1k
	 4/N9PGqpktswWDXHz39zchHuhmZu6JLvfafqVk5TyfTjZB8AgBeQExFEVYijKkuBqW
	 zXoCq2kKIHkcVyoKO2lwNZzmZB4+G1lu3thlwSpVPNTJ0hiS8zVwi4B99T5np1h5BE
	 NEriMx2vOlFYTbfYspYeBW6Yn57rBOFDhXWe1XpQ+dWY43MbSqQtUsTULH0BYtj7Wh
	 U2zQR3pYon72/Ter9V7b72VByid0ncJTkhqtRfeEdN1iCb4QX54KhaCsQNsn8jygNE
	 n9pJNSi3Uu21A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FEECD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989715368.2390.16810055913887016845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e96d6b196f84cf61cc50db6b18864ebbc282e502a268a15c2825a64de8f5293
Date: Wed, 27 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779897153
