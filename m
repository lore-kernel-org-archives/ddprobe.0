Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC662C158D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771062294; cv=none; b=uqpBQDzUqH0GldAjpBXQD4ndRAp91qhMgUCYUwHPJJGfH6xwQyaUcVxvYrFYohiwPBGlqNbGY4+PIwaBJMabR68cB79H7UTZm6r6um+rPlbmSZs5lYkM9C4WIeYML+w6dMTfljfWqDYblIGQNtUH4BcQtFAzD1BwzCB606U3pvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771062294; c=relaxed/simple;
	bh=yEo+KA94GTqZK5bk5nMXN5vRhbUmO2+jCQfWXeJaSo8=;
	h=To:Subject:From:Message-Id:Date; b=Nz14yJG5DJ9542nP+RzfRlAcq4M0r1jt+eMviDc85eeUsMEANVx/2QCthAodkvl4e2RdQvqFZ2tpqaQx2S42mFGNcrw9n9XgMhTHvu5sC0uuPorQSc91rFuAFxORa30TaTAHsIUIbz+ZM4IOT459Jisf3HbWIA/rtegWBMnrw1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bD75v3Er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bD75v3Er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34E4C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771062293;
	bh=yEo+KA94GTqZK5bk5nMXN5vRhbUmO2+jCQfWXeJaSo8=;
	h=To:Subject:From:Date:From;
	b=bD75v3EraU2Yq/d53xoubXLf30GBmAof+iwG23mrkqtjhfjOAgyzDzyivXIGhSP3Q
	 bxsy+gPqskpBqDSmavcDnSqYQDTiiLLUPOPatBIydalWjGFpTu9J4TfpqYydOuXX6U
	 bS79bhjGzDtqjpSPOnzO26J2SGrV8Xa3v6QxwcmLWiV6jHRGxhrZnXBOQ+1osJTUiE
	 vs6zU99cciKDPnlKIhMIPkd8YeyLs6C5pnhQA6SdWyI0vWJX63MRgXW5Q5KrsGSv7A
	 xKbF6WSykHnt6CAsvs0rnyRRLYzYsDeUj8M9S+dwrVTrNJ2CoE7qhGMb1apV4Zd9WE
	 quBUJw4KUGr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E72EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106229364.4719.15240369816628945107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5805a383224dc8cd098465cd11b56c3dd49aa318fe9a1dd16683736a8863008d
Date: Sat, 14 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771062293
