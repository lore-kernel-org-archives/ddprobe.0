Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D861E5B89
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740899934; cv=none; b=CbNm7mSgfxL5M8s4gQP0Rc1EiYWmqw6EUFi5xaupUfq5itBBqohzcx/LA/kUY62+Bhm4BhfncIMDc6H2AImOPPvr/hc0IVmlM0Wv/FJEafm+a+GOuFG6G1LDXDTCs+Aw3CcAKt/m88R/ZJVVCsdaWMtor3W2uLsThtbXCRrT0ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740899934; c=relaxed/simple;
	bh=UykifNVIZ3fRn2BDDvLVmhWfkqS68LTMSmXrL4TBODU=;
	h=To:Subject:From:Message-Id:Date; b=KZljjValJSw3A5tSumM4ENFseO/z/AMugHn6i9AauM+bK8OxAndP76FDitFtarz9BKN/REyvPR/gbSP76BsZd1k5OZBdv2dUCy2ykFLCbK/+3Uy19Mo+u7rOVI/QpT11vKxyqwADbGasWRh8ihW96X/lsTgLQwNQ0V/mgeDiUB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ1DXKN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ1DXKN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF93C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740899933;
	bh=UykifNVIZ3fRn2BDDvLVmhWfkqS68LTMSmXrL4TBODU=;
	h=To:Subject:From:Date:From;
	b=NJ1DXKN0wLPooVe2QF0o0iHo7muYyhoqa7j1HPkGGHe7MY5dYxDNToiWl25qUALVn
	 fg9L9SPL8BBZOYzEypEpLaPOe+tmcNMatTEqUEaZc4WS9QwioY+eeg++/W55mUeql6
	 VH+VntyZzm+IVL+nQB8AnJiCXZcgWzrZL2wJ86so9aL2obgC2GrPehb0Y0tBuxL/e5
	 f9XsWty2hciBKdqNs5RUTW289N3LTMJic5x4dkyYq9/JL1dXd4uKjGk3jIyGaiLovw
	 nDBW3eYNiGUbNipxkyiro6fLirDj+KD9QRqgnVWp3JlUsJCP4Couz2UWRlhYpsJ2JB
	 Z7jUjp9b+i9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94584C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089993359.18114.3297350099311634146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c369ac17e4a323b72c45c5293e355952daf49c2a88897900802c8f9921b9d93
Date: Sun, 02 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740899933
