Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F762C190
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742612394; cv=none; b=JMPkeeCpxPuq525CWhMH+ihfiTm/VGb4F1X9t1mIRPoUV9GqPnO/3XnETZwUC0yJpU5HlssdE57b8A6amPpOWvcoZ/5gommfwW16/k4CisOi4bU3uhsgF209UaUu3Nn0YX0sIgmTKd/tOJv4lnYwhdjPyY1lp8XtGB2CyvqL6R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742612394; c=relaxed/simple;
	bh=jMWtiyf/XfJe+ZQAdn/gzrvOIhDPQ0kqrg6Yjn6dA3M=;
	h=To:Subject:From:Message-Id:Date; b=qcaUbdUiQcODCdNcHt7CFT1XVDWC6cDWrLr7Iuz3Wkwly5Y0AI3A8cxI+VCbLn/u8sVDOdrXxj2pXqAkpQszmrZUf8ewUWOLqFIaMFAPSya91yUSFlmfjb8C911rUlMQez0dgtRiS/pxNUrhiJmQ6OOll3wvD/yQayUpGWy7E34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUydI9Hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUydI9Hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D26C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742612393;
	bh=jMWtiyf/XfJe+ZQAdn/gzrvOIhDPQ0kqrg6Yjn6dA3M=;
	h=To:Subject:From:Date:From;
	b=DUydI9HgvcmWaYZqcd6gJq/PGKrkk27iu3dqg9U5pgn5N70c/FGbaXls0KnAVRQvN
	 qXDOt3xow+ztUm4KNmefufGaFAzBu6UVQOnARBSZOkPZZaNcO1JbsJvHAt+ALqqAHu
	 5oa1JGtsk23jv2s7QEJ2LOcYYO4MeywsHPh3crtRipIH0EUgI9csjDY4Bfm0nkVmDO
	 gP4jNiaq5D1+uKzAOrtDxaAVmRGQ6gH2U+N9pN2RmCDjIzhzfzwCnTd3a0FG2BoVVe
	 azM2RusD9wnvnW6ab+il+5I942W8xhMSD5T/s5PgWoKB2/b7PoWRUK1uxl+fE8JLVo
	 nkgQe0prgifyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D2AC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261239365.5980.17644919467453009687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be3bcf10455e92a793ddc5853ce2ec117c77ef9bd7412e2f6d98f4a9e5ca122
Date: Sat, 22 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742612393
