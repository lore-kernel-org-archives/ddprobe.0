Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6292E229F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771388094; cv=none; b=SzPfC2w/bNc/XVbP7joTvZ/Qk/94RLtOv75HmtJ5nnjITuRGjQoOzquJG3+AiufMeaBVIBmyUrnJSQcN4SCF1jOBOsBVSP8+Ax6PSWu4ebjlNFOALCvmW3wsiqZjJADrAvD3pwSYDZR3s6TvIo/APnhEY9ZVhXo5MLt1ONuzm4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771388094; c=relaxed/simple;
	bh=1kukth61VSwTYuMoSwoJitH6lY+4zkZepdP3mf/6CQE=;
	h=To:Subject:From:Message-Id:Date; b=nc+2u79apvn5Ul6BT1xrDVsmYymUGqqQD7i45hccKnQTcf8aa0CUqTpYoqE7pOYS1NY2xNGo0kqWU5faysdTDlNZtm1uAq+yyfmM6aA8hV+UbwBq4xiQ6ELCdfbQhza0ysMI0rdjYO7Idk7O8vbBjxETcl/MZZdynHMzLahfGb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RljOsZ5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RljOsZ5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D13C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771388093;
	bh=1kukth61VSwTYuMoSwoJitH6lY+4zkZepdP3mf/6CQE=;
	h=To:Subject:From:Date:From;
	b=RljOsZ5ddKF+YqWMbImbrGVy4iwNLERFdb6Y/SQRfkopTNFaPaO18BARo1+EAS3rx
	 D2CLFHb56v69L736PDR3mLdxJf6zrSF8Ho18EizRcCdUu90T7cWXybrQQn1eM3jhqp
	 qgUmXDjLTD8JRHtJba8Tax+qIMuSQkfLWVWmFGbL3TrGqcF2tBvk+Gfa1owbpRI+tc
	 WzqwS/WuhgnbNqLsi3HOyVqDRim6GJukpWhaphkWmsHG8IkNc9N06DqEL9YPG5tSeT
	 3csTveBT//jCKHD3Em2hjhllZpz+ZFucpDSeDG1zXUJo3l/2dD/ibSPafRgG6IVZwY
	 mZDsFuSYe1hNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92311E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138809358.24244.10662262956014402963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09c2b5075180c2b2afe2590db9e0dc43040339dcedc74683380a2b773869cf2
Date: Wed, 18 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771388093
