Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C814218A6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782744514; cv=none; b=eQn4ak0e+3lRkuDTY0DySFU+h0XQIrIimvXGeGcvkcmegza/e2gbbNbQjiB+H91lkfwBnL0WYPSQWox41mFq+3oCJsfq7gbzkd0qdspR2cXwBqvlFVaIXcNKy3EhLwxOiNhEWAF/+LBkA9REZ6dzdw/dl688smRHyh/Kq+ypCiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782744514; c=relaxed/simple;
	bh=HmD9b93FuvVnSLjpDjna0xD8UkVJXE16QGGKPiRUnLo=;
	h=To:Subject:From:Message-Id:Date; b=FmH6b5hMkVEeqXABR6u/jjFcLZMHOUV4EVDLibjcEv19IPEDrGZIShZJWboKdECfn6iDY40whkZfGZCDrzcXw14UPeZyw0Y+rrszI6Yzt2CrJiVee4i9PwwjhBTYNY+iIoY/BK/tZ0A3LeyHW2bG7oMLdNuCYCyyF/17FXY0/sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiaqA8I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiaqA8I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06483C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782744514;
	bh=HmD9b93FuvVnSLjpDjna0xD8UkVJXE16QGGKPiRUnLo=;
	h=To:Subject:From:Date:From;
	b=AiaqA8I68KdBCVEfUxs5UAeEgzqn2Mgp3HTKfdBPM3IClV2Y+Us597GAixVw3jav6
	 XEL5nJl67Kbz5pFu70PD40FYmAWP6mRnsBiyZPpMz1g+KktCzOpADGtjClFHL9qP/6
	 kIxtZB0Uh0N2JT9GYBX47JHr0jqeyq5i5Jtz+2PGSN93uOg7RkFq4DoZId4YpGc0M6
	 SKURtTRNFXWpRP5oIZ8H9JTBbxEaPpFoef/vpD2nVnynb3gx25IFxV8gA6qCLiJH3n
	 9YUtGmC0n77ji6cdpJex+1uC4x+UAcXfP756cMtc4sokZIOodouICuC30nlHtRK/26
	 nJ4N5+BR2Qmyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C84C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274451384.12140.1652982519580230674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ead2ac77804f6e954814c46b06972db980566452b26298b868adc1c9fbaee8
Date: Mon, 29 Jun 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782744513
