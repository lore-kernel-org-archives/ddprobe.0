Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8632C859
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719827663; cv=none; b=QGoJDH/PWAGjTahQFo+4bTTAhO60M5uoRpNla8Axdo+aiWeZEEiZ1x75Z/fOEwJoU6/QA4H620uJ3BeslaBXh0YUakk7m18600C8sq6oh5zOO2qqZY0aSHIFjaNpHmVleSgamGbJ+++yq5WwedEB36MpVikPqQn8l47Il0GqWSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719827663; c=relaxed/simple;
	bh=kCKADT4RBPuLmarAD2qds/CqECusa5lsriix6HR4DQI=;
	h=To:Subject:From:Message-Id:Date; b=PQGShugGjnGs2q3Ow/KfGEHLO9+2Zf3IRBTIqQQTPm/ZdHxd/B6wmyGNOKqxl3lQX1+vyJKoAGgabpgBheNUvsI4mxBqztthLLGdpBxPBqEM5qVYuI9HRuW2fT6lrT9BLv0YNrowMBSRbnMSHF/2DgSpXfilpIdmvlUP5KS9XDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQFOuAoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQFOuAoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03E9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719827662;
	bh=kCKADT4RBPuLmarAD2qds/CqECusa5lsriix6HR4DQI=;
	h=To:Subject:From:Date:From;
	b=aQFOuAoem4tQSt5LVBjWwajJlFwNGrmeqGjeIYcXsjhLBWRxm7nrQLxtqeRgGLR5s
	 K20aywCzOGdYOgCXdi6fb8SBtGsBPHMyo7gmCoyVvzqjwiD9HcsO3l+3SHgU8ocnWW
	 hx3K7QPGHzT1sFtBhPQ2XvYxI+BgtvIjO6P5Au2vcXr9f8+vVO+16QxNlDIuEj6vAi
	 nNfkPmmxFpoyx5yfyo6xBU4S4K3DpQov60aEhvq0XDQZc19DCGH7mMvpCIGU2QNq0Q
	 5oGmxEtjEyr7PH0WAOxl8UN3Jw47gqBryn/bXme/c2+xU6cON+3pIxVDN6z477M2NM
	 DFepDKKMlyRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D3FC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982766278.30963.14187185178132626652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9743db1cde602ffbeb6bd65c2352d180712d654bce9ec80ecf3048c3d84fc385
Date: Mon, 01 Jul 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719827662
