Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E38329E47
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777434453; cv=none; b=pgwOPyDlhc8wXsEV5JRP50gMJiwdJf5BAHWd/QIfXgCb00KtZzhjh3WiZmG1+/6w+c0kSeZG0HvLZfxrfc2T6ERbsXSRAJAqOVETrH+QZwfZrtvc9iHMc8yxExvNQ8mw4cPVn/4V2Qt+dNakqBbgz7O070Xgw2maalx80z0JPXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777434453; c=relaxed/simple;
	bh=ZurCFDMMWMg8barMJYLgJKjpNSIQJklEGbRiUKxuQmY=;
	h=To:Subject:From:Message-Id:Date; b=sHhZQPcSP3HWpX9zNl8jdPA76ce9sYMxZGrFr0QMoGxKoJbYJb6BU3GauI7Dzp5cfWOQEqJP6H8R9nluYKOumiYgZ7V7vYBWmIjhMd1aSxznCAn1/GsaHLPvDC+wzo8guUlzWb0qipbb2IORWMLLcUTOilrMDEpejlDPHwQnJHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToDdEu1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToDdEu1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB07BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777434453;
	bh=ZurCFDMMWMg8barMJYLgJKjpNSIQJklEGbRiUKxuQmY=;
	h=To:Subject:From:Date:From;
	b=ToDdEu1GOsSvHikYi+YmGuW1SjcBwsv0hoSht2+HztRpMIGi8dlLskNbiuAEoHQz2
	 ahp4UVfBmQBKqkNHyheBrZOi6t8F9vX5fnZuae3taDrd+mGl6gHIn7KqvTlDBbQEtM
	 IQyG/Tc+9XyyXUNIZ4WAosP9SLNiPqmm41HzluZT4F9GL7ko7OLwa6eK3ELrARXeiX
	 VZUNYw1107L/c8FdwrHZ5se5k3XvzNC/KCQZiu1g5QmAXOyPb2rDl14Ua1D9XmBrgx
	 AnLx+RCo378MgtoVyuk2bVVEiDTyNi34otR3LSQwF+xyLnuuVBVBbAJZWsQ4JMp7Fv
	 v3jMr4bS3oetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC99FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743445368.9452.15987347280946479809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6868101115186e3e0c4164b770b177f6d7a0a370cda067d63536ca5d882e43b1
Date: Wed, 29 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777434453
