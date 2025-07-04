Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FFF1BEF7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751662794; cv=none; b=SvR3i73WFacng7rFC9gUQpIZYdG2KxtCnDbF+YunLkAGK4TGTOg2pHWd5Zb06wkfpkabhSQAekJerDdCFSi2yuBXT9ibs4m2IdKZmBt2qq9PhYskNaNbuqXIYfa6WUZSlaXSOj7z93EJJh736l9QqclJpCEZuNMnmUSuvaFVXbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751662794; c=relaxed/simple;
	bh=VAgZKe3IF07Z5vwqroBKMR120GcOcQ3pFyuIUMmc3ps=;
	h=To:Subject:From:Message-Id:Date; b=tBtKMitao4Vf+MTseBxbLVFvw7ZQGCbG/PafdHgFMBQ04TlJbwa5OkrcOMx9kD6pMc4iLwqv5pWcK4UwZC10ce+yS08JUEyT4wS7SLEh91B3ygTbMuUuZ4itFdHoAIn4nV77tgv1KrZLk9vSto9u7N6UqZiqDx1wweTpVzLvryI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQIoHk1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQIoHk1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751662793;
	bh=VAgZKe3IF07Z5vwqroBKMR120GcOcQ3pFyuIUMmc3ps=;
	h=To:Subject:From:Date:From;
	b=YQIoHk1wwqb1IcqiW/HbNA4do6e3aEVqnrHx3VXP92skHkN/u0WNitxTmVQ4jtq4v
	 sakH0cDrnbqxfuLs9Epfy1u3pGz4eRnIFT5UC1lMcyLBMCjf/TnLP/kxmNkzWvCZp+
	 ufK+2lvgTQ0FXPByCvx3wE/MxQ9R4WNulUms84rSLAlnLlb/fQcyP+LupxO5pP6INL
	 YIIf+ARYlk5joXbV+l1f8OCOnfKxPOD3KUsicjgMJsEXKlP/wkkT6W/2AYzo99rEu5
	 HYOkozN8RnKXR0MAgEjVr1V4/lvfgbcyrq1V3ZmhnUGrJYyUe/XNJ1Wv9fPcIgMweA
	 Ljigmg6sClH6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166279357.8148.17245767126646123987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ec2ac580db768616dfd7505356a21bf0f1a7bbcb8fd1d5dbc9bc7b09bf942b
Date: Fri, 04 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751662793
