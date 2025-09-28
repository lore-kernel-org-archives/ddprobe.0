Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3AB34BA3B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759089594; cv=none; b=QT2SdCOWX4D7zP2cFFZmw366SXzlPGNZS8uhic7TaGo3JExaiX78dIjIHqxx+ftrAYn46qvvwTGTCm1BAPohDOME10i80xBjJi5X85XB2R1rFn0ZzUZD2tCVEFgG8vctT4qCYW+smMFEInlh5tMYfrlqppNRO/tdMDwH1mAKAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759089594; c=relaxed/simple;
	bh=rj506BsMGVXzUqU3QgEjQQsHILjNlIGNbWVcsxREEQM=;
	h=To:Subject:From:Message-Id:Date; b=SRg7h8A1vTfVQiVghFWNbIAqWYprDNa0hAWSNUOptSXnfkX3fpkd0lqcg1j3rfOUNkZZGFvETgNzE/hwau8AyOBDetACT1L6npo34tmq6bt9oBl7CtOdwoQ+ZGdT9RLd7Le3Y/lhykshsg8isIIXCcPMGuSSc1DD2dLznx9KxOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+VjD1uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+VjD1uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E353C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759089593;
	bh=rj506BsMGVXzUqU3QgEjQQsHILjNlIGNbWVcsxREEQM=;
	h=To:Subject:From:Date:From;
	b=M+VjD1uf0WCF2tEFzFA75JsNQzbwDPKvqo1ePXn0SC26Y7mBNDsvNhfGooXbrx2Dp
	 92y5yedeeXxr/O693vIOFvc+JJeG+q+8jVpZXUKhYKUq/dQH6F84tua1XmhimB30gZ
	 iTOCApcJpTbil2ZJQS410eijoM6iwVWg04+a0QQeYFfiI2b5P+rtib6o4x/W31ZaCm
	 XjF2IR5u59RNDTsx2ub8QU2TB8tQxxSSHXVaIcX4Uk+LGfbb+GUGlDhoXa3J+PGnM5
	 NrGw/qc9k+Zh34dh46WRVt4SzsMW4v9oeZRkMyIML1EsaxnYtzJ3xEeS/tIBm9D3gv
	 wc8pRt021EiIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908959357.8595.16565067100583985275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff42a8753ab7c2ce470e8329a7beb54e6010278602ed4d93063758c2feeda04
Date: Sun, 28 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759089593
