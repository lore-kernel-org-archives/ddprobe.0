Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070AD19E839
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773258894; cv=none; b=Yoss9S6pKlc3M5nYzlhZK/MPPuuGONZMCZhWzPmxzSDdPsgljTbQhItn0JiyFMnma5SQ3og01y6mmEkt8hS57uHd+p3E/N9v/i/2VF1d2khTBRRRs1GwI8CY0a/0f7RLiNCqIMjoPW8yPccg89JDa5Ke4A7w5C5aEKAAbwvk83k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773258894; c=relaxed/simple;
	bh=yEgOoNljiQUb57PYfFCAAFfpwS263CDsscBcu6CSlRw=;
	h=To:Subject:From:Message-Id:Date; b=Q6n1WCcKeXW5WJQf3M4ZL3fSsl3bEwJlwD2rqAnHRZN3+YuQBMC49jt6YU6pYzM44hiFlbEVLiXxQfJ4uz59+R5n3d785LfcsrnWF4/iN1brb/wOQjC8clO4vpmImss4dhCyr0eOt9SxX9yejS46sAIiVX3FYhuqbVtg/pFMf5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bydP3H4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bydP3H4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9724C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773258893;
	bh=yEgOoNljiQUb57PYfFCAAFfpwS263CDsscBcu6CSlRw=;
	h=To:Subject:From:Date:From;
	b=bydP3H4gYSCJNddlmFW0MJKCpkZDDWr5eY4gvvfPg9NFdaZh7k3jAOdoO8om4p4Us
	 V3vBVCgBRMpaLz43ww1Ci50obhgCoM5G4pmXnU/VCyaJkvMUBpNS7IHE1MZf15/7PP
	 3hsvMACfPFB4uwXOYPHOULwiU/lEFDByq6OnE/6gUTMft/3r3O0pPo49/L4s5qLHvz
	 Nq7SL6MTI8WHzzxRTAE6woHayp9HtsdVESTPfXYIWUAkCvz0lx5lkMJHoxJl0LK9Pl
	 SnT5sTBNTc0aWYxWmMgCRCU9q/0LnNtpk60au8bO9Kj6Cb+FHcamDOv8sP0dIqCTz9
	 gFpa/0ZfYWJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC51125876
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325889359.7629.1137646107527210583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa8f0a91d10daf514bf81ed832dda4c66b5b57a5233575e871c16bd1b9a72ee
Date: Wed, 11 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773258893
