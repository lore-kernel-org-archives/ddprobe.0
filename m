Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B480322B7D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776941254; cv=none; b=NvpbCjYjRa8m8j8l/jme6iCmmY+jj9FwZ3IAhUf/qpwNJCqS6avj+1SoSpheIqO/FCxe3DEpZ/s5txpe6igRH/quBPpn0n0xuam2ZnQjVu/eIw3ll3wFU1UOoFz7Kf8kBoUsJF6a/v2iBiUAAhEnndGcJLm5Q02bz3wMaFrjED0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776941254; c=relaxed/simple;
	bh=jUY/t6zMiY1J+yO6x7mMoIwzYISAFRvKWdSFehM+woY=;
	h=To:Subject:From:Message-Id:Date; b=HhOksI50+ass2c7ik3FTCXw0mft5+uAhSgtHZONmbLI3q+c2ICrZu9UxSpY8kjjEy9ADbL/mvpGQvZwXISUXrVmEJcfTHkh/7SuRpfUYFqbnPSCNvn7/dD9AuJQWkvFlTBV0eWmhcGPifYNYQ/iZzICif4ErFJkUVutFKr3TB/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq/DCLdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq/DCLdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BE9C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776941253;
	bh=jUY/t6zMiY1J+yO6x7mMoIwzYISAFRvKWdSFehM+woY=;
	h=To:Subject:From:Date:From;
	b=mq/DCLdI3vDIhoFUxhg4PGS3MVuuNp2nef0Ql8aaMykGVXGVcUPq69xh/TProH47W
	 LM6DrNgNRtpPog8tYhsofSwwE3P5zFtqa1DWhC6YtL12CuPWpugRt53dPka82HlzZX
	 p2WImZL5Vq10WtklSvpRavuOJJcXWfIwjFhGWBWYkzeQZ/BwbFh+6Ft0/1tBAMnl3R
	 cmWxuDhLuaE/E6j89l/P/c1HsQ3YGJb35R6d5ASZ2xuDSrjiUaYLNzPpmMOb/jKfCo
	 jo5q9E1Kie+fn0OxjPrDnlfUc5foaTTwrffJksG0FQDo5szan3inpLr2roTkR0CAQO
	 QybY4TIzJ3IHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56EF99362
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694125368.7054.11883260246419592528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fa930d5f75c3516a3fa5bf8c75269ba18992ee3b80606d04dcddcc51b29b59
Date: Thu, 23 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776941253
