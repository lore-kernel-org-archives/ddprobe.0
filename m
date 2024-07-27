Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D3F18EBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722115554; cv=none; b=YohlS8CCtNWNi329Alk+3JUxeZJeZDywv53XXbxJzYHGeZ7WyVL5XeGgfVxeHQPzqhBqqc11wrMGjdxVzyAh5NJkoVpsOEKhr5RUfG4Ko0ZREfUmuRmlSPQFbCT5LAuVM9abBCMol7n7iWb3ydUFjGz+EHIu+ZH/O1Mn+gqeHVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722115554; c=relaxed/simple;
	bh=gnSSt0inlxoKSt8hjTVC0kwAM/pHl7EWOPTAd+jV6Nw=;
	h=To:Subject:From:Message-Id:Date; b=UbH7H5ETMEvt4RrPjLqPBLpoFjfY+rod76P/G+GmLMIKhZGAUtkacchLGaW45r1q19css/1lUzLq79K4Q99p0xdCSfhhj1CmOydFQ5X6YBODcThT2P9c+zqHQ20LJnc3IQ9dR+1CSYzgY1KTiCiXCFolWqiJN8pLrJZKhc/bPf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx8gVnVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx8gVnVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EFFC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722115553;
	bh=gnSSt0inlxoKSt8hjTVC0kwAM/pHl7EWOPTAd+jV6Nw=;
	h=To:Subject:From:Date:From;
	b=Bx8gVnVban6yXK/+JkdwVCdNb9si1hqXifOb7v0ig688uEJn2mxUHxnBifmwz15N8
	 zqMeCD39/QthqdLPocGkrT9g1PFISI3lghLSefBEPOumyl8N67koifOcz7tmedUuVo
	 NpXXggaM8GDv9ptg/6eLby/3bEm/B7Urb8OT0IWOAqqUvaPbMcDn9gIFPkee8T3fbs
	 6pl5nF/RXeSGdI5Xzer8+hENd8fGIStMjQ9XbZMRgDT5HM6Fn6wwZ1lYDbZ6uwd7GU
	 OoXepTV2PsmSW3/MAZlUNAYOipqpF03EeB0xfzvtyhYH+OWD5FllbVavxiseemNnwS
	 4F6aspE2CwnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97118C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211555358.31516.7405413479229281844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb11068437de1a4a8af57fd264de73cf6887df681dc5b9baf8720f0ccd97620a
Date: Sat, 27 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722115553
