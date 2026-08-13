Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F2B446823
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786618234; cv=none; b=Li9DgadaDRuJr7b+nFoRXg6tDYCDxBPvkFB/knXKEZsksMfv1CqDNRiNzEKYtNmolyTltUdn5C5TGrommS08lxojevf4wr4a8aeDY2tjQv2c0KqDQgpulu3lOvguoTTZBJPQq0kEkJHJNupRELkIpU0MsfelwysiWpxlL7DoslY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786618234; c=relaxed/simple;
	bh=kVEZEZ+EGcZuFRXBqL7YpN7xWKy/fYTf7pXKqIl0VCU=;
	h=To:Subject:From:Message-Id:Date; b=jI1aQjckbKILmskY+VOE9ROBshsxAEz+S12mvXCwsWFrm31j605i7d8hXB0Ij8IhX7a3hTssZaZ4DMKFfTN+0/I8TA0qwXEXjKLSiCDwoI17YKgeHVhNXKwbKXnfccO2N6mgOANEIsyuCFJ2Q6GcenCvOIs3umlUlfBdO0fzc+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qn9qB5GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qn9qB5GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE8EC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786618233;
	bh=kVEZEZ+EGcZuFRXBqL7YpN7xWKy/fYTf7pXKqIl0VCU=;
	h=To:Subject:From:Date:From;
	b=qn9qB5GKqMu2p73p8a/3OMw5QXXIPe1JeZIpsrE6oEnMS+yuqMhLyDxp6oZHv9naG
	 PGkgQRyRCypOuHxSHH6cjjixCTm8MPoSCuqIc5vdJff0mVZz1IRCVgP+SBXBH1Jo4r
	 3JBfYX10NumzlTs4yrBeowDppsEbI3TK4WAwv1dK+RCnCo2pXBAq5J2DTnGZeczwYt
	 dZt2DuVVVtT2qcOwb3KxgMx6a6/SRyVbVN36WbSc7AjoLhSigjuFECN6/P6GkSC3mp
	 4RT1S1dLzfTPkz2j4+rHsgJ8VOmL3eVlSRP4anF9N+RI+0Z7PUR90tllL63KaZ9ka+
	 rYyf2qo3gro+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF8C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661823368.30480.1490736318837348091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8b84d087368944dd8dae3f0c7dc06225f0c3544e9b48ad9ed1db8d0af431b3
Date: Thu, 13 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786618233
