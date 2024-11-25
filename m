Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303D6178378
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732540554; cv=none; b=FEhgKzT7vHK1mfnvv+stOmiIaD6kG5NbbKoxl1EwUUnPK53wiiU0XzCap58HzUYfV9eF8MzQ+5eJxJK0QeeI7sVP7b2/1iy9EfReft/cgiFDN7PpUjbC2+Fksw9l7/QZBKWQRDWfmXcIYDkBET9Fls+v/R4wxg3ayS2o3OJhl5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732540554; c=relaxed/simple;
	bh=pImMUUuj8z7iXc86CLRu6l4fUj6bLRmeEntUYD3szqM=;
	h=To:Subject:From:Message-Id:Date; b=t4dTeTn7cRlulfjEBFA2anLQQkuIlvq2kIRCkB0rmO/vctU1HR9IsX+jQEVm3VDQt9mHYJHhfQnVtoedUc+MKKHeb6ahxMpp2O4x4hdPo8/geiJ+gBBUXDlcQn2ThjqrcaisFQBKQafWAXPEdkHoOpcPf7QmrizIbSDLINyJUXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXqZ8yWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXqZ8yWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA2AC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732540553;
	bh=pImMUUuj8z7iXc86CLRu6l4fUj6bLRmeEntUYD3szqM=;
	h=To:Subject:From:Date:From;
	b=aXqZ8yWbRciFzEQjFVhFyneuyp1QXP0ytjnaO3ITI2JnMOiyEKD7InIPAL+CPKR29
	 wIlnDCzS0i+5TYwCaABntEkQFgIb4yvt4jp2uEjhW7D6xRjprk78YXRgQFmUto53fU
	 OTLR3+kweFF4Q7hCqEEn0oNomBC4k8EMsd2cSAyATmJlHRg1dTujd3wzQTwDuBI5Mr
	 wcvBWihhuSsHCb6oVc7VpDcPEnoG8AW6TAkbYN6nOz9iRzHG+AspMEFCX7rP5/Hsm2
	 Z2W/lCboAvFLe9fRuZR8kwZuH2tBieZCgilsBUbvAuTfc3F1juTmVJbuzTN77rS1Y8
	 uhGMKPx66cy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412DD58D40
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254055359.6055.9752107177777083352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2ba0dc7001178aef886b7e0b9ca063a664bfdff81e244b2f3b90662ff8a3b3
Date: Mon, 25 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732540553
