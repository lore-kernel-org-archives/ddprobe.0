Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C273274FD0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776585454; cv=none; b=f4MYwqg2p9svvpgU+0VaqTRIuXDojGF+0tfn5ibxhPpQsf1UZjn3HF+uPzqOC/Z5FYkH6uBjSwqlP0TVyorxOuX1ABXVVFsk+mj5V0GxqbxFcXz9I+jMtDMryZY9cynZlJH0lFX6M8OfUDaZLnHRFfs2coCoEl5Mw9MLfLWwf7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776585454; c=relaxed/simple;
	bh=t3f3+EEO4vv9hZS+PeGNeZbSHCP3zaYp2EwItHB3jPM=;
	h=To:Subject:From:Message-Id:Date; b=sVIOolck3Ppo3kEdEGmy+i5du3r4OMbYq53u0A4CZifFodRjxFMkCsUwKWAejSAb22t41iHhE0l8waZDAFPXa9YsiPk9Mi+3Y0vYVBGyc2M2qZA8sKwVvAM+/eRtG4tbjXcBFDjfKxrYeyKXHokDVqcl239q6BcrSFFODNdIQ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjkagN26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjkagN26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7C8C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776585453;
	bh=t3f3+EEO4vv9hZS+PeGNeZbSHCP3zaYp2EwItHB3jPM=;
	h=To:Subject:From:Date:From;
	b=MjkagN26BLsM/f4TiNgIGrTYSX8LlvetM8ZmBo/+Yka34byGhHsr03JbIQaNL4w2+
	 M3Np0/ira+sp3pHyh69940xiMxShZXQ0SphoqOHTE8AlGTH8p87HqZita49/GMFcbd
	 APLkH7Y9X8iXcUTdePa9VgTnbpAJKQw9OqANkCeGIGp1ZeLyl1XzHMYjcTJ2LKcCL/
	 qp4+gTYzccnpeoRvG+0BbaqqRuzAhPsbqfhrOh2Nh7Sk9iBZe+o79qmxmns8u9YvPK
	 P7dxpJ3r4PzBZSuu/gYabl08uUj+VzP63RY/eXX/o8m96wF3q7UPvK65j9kaszpEoL
	 WY4h1VE0x08WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC633EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658545368.13078.7027540170050061788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095470c1df8c9ad7add030447233183684dcaabed62e2d93445f784f65687636
Date: Sun, 19 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776585453
