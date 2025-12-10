Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085C82BDC14
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765407174; cv=none; b=gPEQ81WLNq6TkwjT8XhdccBon10lemOtnajy9TyGBwpoOMBcYtiurJsikCnlF3sGwSaHM8PY8n6crcvxfhnicZI5ATi/3BvuxYTQgtm7T0a7OVVBSwVLc19ZM7CRmnQQcUotRmaOK0vwzJgOi+qcIvy4iLFlEqEebDins8EpF48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765407174; c=relaxed/simple;
	bh=P/I+0u4Hyk723F+1vXZVdDyEzxP56g1AENpZypWrSX8=;
	h=To:Subject:From:Message-Id:Date; b=YOfK4IMDs9IQp65oiWw/PQ8eCEPGTzSSFU/6xtc0RmAHf83LUafKxG1BN1aGayxoGsbyBc7+W50xjJPDpJptphXAkbgdtwW2D1eGla7kwcanaQBnyyzkV2KFpjHpzr3a17UP8asQqsB9gMWfGMUlG2jdvcIggywqBb4Ydxh14C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COr2vdhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COr2vdhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B7AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765407173;
	bh=P/I+0u4Hyk723F+1vXZVdDyEzxP56g1AENpZypWrSX8=;
	h=To:Subject:From:Date:From;
	b=COr2vdhJLiLz6iyCxMgiKkwQbeUlqN35cCghcSnWHl3nAzFUSP9DZ2Tm7agUB9c/4
	 F4B6XwB5Oz9dGtJVa2hFiF6V530z+0lhG3hCcEUalRETAnY8iilkTK7aXgaIgkg0ZF
	 RpX3tAfdce1LNzsmcfIUXR2a0896coYCQEY316UEjsvNsKCyDPmeK/lSJHKIwzSM3d
	 NnF3WUsHbRxsfWT3ouXbyCXmrpFxBYJLGSZ2+fPpy7f1JGa3gWPq3Tb1CKqrAelUZf
	 N4w1twqbW3jItWgoLMgxr6o07jDvDHDuNiuHuWqT4Q9c5wcJKheLyjE/I/HAzpBS49
	 0Xxyfw7px+wDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D61D3E781
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540717358.10128.16171855882486760945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77410fcbfd8d9fcff642ad0d8ededeaf3b6fadf21c2813833fb457f5c40dc972
Date: Wed, 10 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765407173
