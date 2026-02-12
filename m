Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F22F3608
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770901494; cv=none; b=WZIA2thYoeomQrjDFMBvmCbkkgfi4ziig1HuddN1u1XvvR08mjjXAnGhjpJhWsThuh4QLmOcQMAwLm1dcCuFoVXkLL1fnhAv89MSCnHSnrxuTIY3MPRWyk5w9BzF3MWXXjoUjgnjOCaPsEb1tMVR3n4Qd3YGpZKYnxkMmt8+ReA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770901494; c=relaxed/simple;
	bh=sB8iWtsAfCO9vkSBmvCP0M77/bIH09lymdKWRptH7aA=;
	h=To:Subject:From:Message-Id:Date; b=uub4+QqgAsdFtda+cUQV1H5wTOVyHwoo2fv8SGhPm+5ADUNEBNe/bGnhHkha5E9qQhn+JrE1Y/z6CC/bPcGysPN3duW1y5kTHalxr1wpU0ojTq1UwCvWKwqm/kxpxLJeXgMybsMhW2pBPHwKK1gHgvRfrH3SVm66KhX6eUOX9TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsICsoQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsICsoQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770901493;
	bh=sB8iWtsAfCO9vkSBmvCP0M77/bIH09lymdKWRptH7aA=;
	h=To:Subject:From:Date:From;
	b=XsICsoQhZsxjMI2a8c3eSlcPOd4ezvWOjzAuz0BD+Bu0uGLBifYpt39zbbEBYtIwx
	 UZVcrJYIqeZCwPPPsU5h5cK364KoqvG2/1QNy1tnghiykXY+GCUEgy9c7wDsFsb28x
	 o+cWtyh/UPZP312HLjRCXLlUTphBdfm3WvbyOOvYWEQ5Nv+XODeChoAs8exuDz3sWf
	 xLO+9ZkJXGcSkjYctjuHbgdjeztkBz85KKwN81+o1cSzzaOM2gv729cd9TYfcx4+qH
	 So1hD8qy63XKvbeAtpw1cprukIOU88FBix4CQcgSxPYg/gNObIhOY57hPNkoTei0gc
	 hJP+nXfmr8hZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702DEDF024
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090149360.6785.4340616077396291656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f6c48c34f675b938ead991c739229ba42d6b8b190d0604d17a6fb1eac4da14
Date: Thu, 12 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770901493
