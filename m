Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973AD34C12B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775196934; cv=none; b=Yg7R3/yjh0k/qOcH86dN0MK0J9UFQdL4/aR0hfLwwhW1RyGVafuzzFBkknegJO0zDMtBFFDY/3X112IC/rf0fRcGJ2M+0OXK0+cKxRGp9EazPihl1MblR3X22CO0R2QBupq7HmjMyPkV7qbNJ8XUJs4xHK2NglNZC0OEyDgqH/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775196934; c=relaxed/simple;
	bh=tQ1QToE2Za44K9n6AxiRqRwG2jWMPcy2GFw2UyK+tmY=;
	h=To:Subject:From:Message-Id:Date; b=eJ+y7ZQh3bOzKYttKYFgAEHFo5yxMi2h7xVUjLoboHuYly8apLqI8Q/ndLlItY5q+By4/nuJWJQi4dyjwzFssy50PDk/zfoJy1KAfXzqULJzvKQriomzz3c0txeqGLf6eZMMyYSQRI1opv34EnMfhX9QGNf7DCUBVNx6i+hyZZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+a6UmoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+a6UmoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB76AC19424
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775196933;
	bh=tQ1QToE2Za44K9n6AxiRqRwG2jWMPcy2GFw2UyK+tmY=;
	h=To:Subject:From:Date:From;
	b=O+a6UmoZUhJo/hl9Rhojn9/c94H8Q9d+DTLAaYz27qUNDGAHzsQqzq5RSLtFdWYd1
	 Vhn+vxNfK3GltPFYPnsUBfrdAnwHsgVwmELNbOei+375FKZq71Bz2P4BLro3Pa2w+A
	 99bTu2c2nZIDNEpjSOSlYI0AqDD8jwGz7q/OBjtiKz2vrpWgwosDS3q2yz3OxXxmRc
	 kkvyUt+X2Y9mxiwR8EFEafA74GPtT/a2WmXyz0hDNSTFgIWQMUm4OHuID0Tv9n3DJx
	 jgZdppB9HG5s48QU8WtEO/SGTAv/wHInmy5/1WoCDwffk8SxyMHds2liktoCZ90JpK
	 lwH86eTkBQq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8ED730A3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519693369.32091.14008095757438300369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eea73c4cd8bc4dea5105538dd5c6c20b3cc854641585c21afeabb2a90ee0097
Date: Fri, 03 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775196933
