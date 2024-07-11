Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0845D518
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720687643; cv=none; b=WIFtHvbxWslw+NSG6iiVr/B40AQjxBdeXeuH3HB+wbhr73HDxYCEydpoum2KMk0RnSAvlCLSZQJSWn7atJ9xDteHrO81OyIfhtn0DrytE1y04Mbija8TY5XSHyhnu/9Q0Uv5B8IonU2aFvyf1OdieDwXDu/0vAdNSX36UinBx5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720687643; c=relaxed/simple;
	bh=D7OBS2/BjbA91ejnagxq02MwS5mLmb5iEIl7gH3gLfs=;
	h=To:Subject:From:Message-Id:Date; b=cY/WMoGT3giKzmrCLRWTUuYmmMdeSCdrME5yAb6FyMjfZPAnRF5G6GtnCRW92UuMZ/jAXuri3VnxefK6PG+umqadyAzPzN/j0tS62vwOzLy2Ita1Iri42zJvjJjdR1DW1EOPRGGfQWkV7zvquc5Ni45BOlhmiugvNS/3vsiMeCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQR8GGA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQR8GGA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 167ECC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720687643;
	bh=D7OBS2/BjbA91ejnagxq02MwS5mLmb5iEIl7gH3gLfs=;
	h=To:Subject:From:Date:From;
	b=bQR8GGA3mjXtyK2hln85xj+0KGBNYv/oelBXngxp16Gap3qRVYH+zd58V53wILUj8
	 FjzAhCnzNisg/GaVB+JnF7eeoV3OU11C67a+laBnXDZyR/fVmUsGpLySXSVHHWr0YB
	 Md0Mdf7xyKIxaxSUgMiiLo/ZBskpvDaZnRNBji/iCGQE1PIR0fmVMUC6lehYvqKUcM
	 zAK2Cg8XXdscRRSloqunf7eS0rEzL5FOs8jUxY6Y4/eVBhUiKB+9ez6OKSwVRznno1
	 BIkZgISZnFY6q83WxQJQAfOEXB4rBEOHTayUSY+vFTehntvmWTRQSgUkXIWvwtc/87
	 EG+YNZ86LS2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2155C3DA47
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068764291.12604.11738495266181545909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70a1f4c829601599a45462b00bebaa065b3fb346652e0dbd7d608d7283d3f5c
Date: Thu, 11 Jul 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720687642
