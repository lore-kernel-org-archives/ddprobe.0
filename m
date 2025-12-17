Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCC29B778
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765950834; cv=none; b=ijJdxIy8mZgkFH6Dmy3yFbuMHOz4zpG01CyYO1FXRvXYccbOp/FiVuLr13lV2AOvwF4JFLNsLoWBAmx+FSG2Tx4k/sg9rXDlxpK1Osnumw+lO8kKb6CcQjdBZXkHJbJ8jmpT9y+uW2RGjdZTt0KZL4dYXXxn4iPNPK1sxW/KOE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765950834; c=relaxed/simple;
	bh=g/11rSZdU0/mh0PTnyLoictZHE2grx+cakY4CiE2QWE=;
	h=To:Subject:From:Message-Id:Date; b=TaS2zz+In0uzbXcj03w3n6FArLx8uCVXCTb/ZZXSNUlFSE2pQ7WTIVAWMRY1EClBeJPK1FCuEle1F1zOLoJrKWlQzvqrezi0oUdk2QAkxDieIHcio9YdVBPqCoU9qdg0b6ywqPGHO8QJfRbZkws665zMAqiTyCYz6kO4ddPQ7yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIo1Uz3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIo1Uz3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB706C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765950833;
	bh=g/11rSZdU0/mh0PTnyLoictZHE2grx+cakY4CiE2QWE=;
	h=To:Subject:From:Date:From;
	b=nIo1Uz3XgsBce3YdhcnJI5CuhspmVcbTYmmxEkS63bZnf0WEfgG9mnzahOh0ve0FH
	 j5sWwdjAdcMLLyolZtfuT0vTgdvNjoEq0I8r+DB9GFh1b7EP/ZCEce5z3oaN13/31G
	 HaqKlV5jClkYz8UuhaA0Y/nxveCimCqbt0DhcaOgTnGlzuutSCTwTZjCs+uuk91HXw
	 vgVtbebksuZqElK+gBb0Kjo8b0C16Pe2HQ5Ly42oGrRGHT1lj6wV96f8khu6/2X+k4
	 wmrJ/cT+wJmTseJ2hGijvRKMCxIzmwtXYoq0NKjT++HWbU2qrUhYC64q4M924tFaW8
	 urVC5NiKPz2hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC26D64076
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595083363.9863.15500680042115440655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3d9eb00500d7f22d3a877bef2043fb408d9365234c991824576f586e373024
Date: Wed, 17 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765950833
