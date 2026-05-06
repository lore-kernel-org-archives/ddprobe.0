Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897003F1675
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778061459; cv=none; b=cBhjXjCBUCCqj7lzMtv1er8iIas2hxRxlovpHyTv9y/6q/OyrztNvnUb09L421HQ3SQ6CoQFDR+wMnKrJze0a0FewY+klvgYHrXpdpl7GcZiEP0CRPJGSrTMuS/gffn7f62nnrrIrEh3palLuEhfVE9DUxstT9oZJzLogNCOcWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778061459; c=relaxed/simple;
	bh=fmnFfuLcZYI0tCcswvsUJEa+o/R4q6LHf09VBNhqN8I=;
	h=To:Subject:From:Message-Id:Date; b=rTqdbNbFC4bLcdc+8DsLKij0vqKWkh655yXmKjNewbpgRx77mQh9KYgWYOuCJo7rH5qpk63bnrqZTBdg9aCmM4Ofg45aQpo/m8Ju0ddZhiRHyogW9fIWl+qImRed9tb/UWXlcT2LcoKl6ZHqJi4fcbIyIxKY8nINrAdtq5ZQ/Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZdH3D9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZdH3D9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F72C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778061453;
	bh=fmnFfuLcZYI0tCcswvsUJEa+o/R4q6LHf09VBNhqN8I=;
	h=To:Subject:From:Date:From;
	b=pZdH3D9FmPDtODKnDnqKo+R/xeM8Yp9fAgok5K+2LTpTtsslh+SJUoGpp36/QK3tb
	 0aXb7iuieL8S9L8fM5UFAsKYrp1arx98DZnnKY0smC3ANBZs7dv4oMcpYGinR2NwhP
	 UW7s6Pe5yvKbHke/wgehyLn3mddlQ6zye4KHQNvfOAV5ZzTew0G4To1idzt0iQPnST
	 TjInTrmE+rMF0K7X1iTzlUtyh9/TlLRvr4sieccPb4A8jbtIFHebQJeLjU/OSnN+CE
	 tKS+KbTnhfgfZK2TLfdZgFwof9E2clyFu4bFS/9P6cgU+bZf+OH1kNsCbuzLGgqiGe
	 HY5f/rtuxZfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24CCD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806145368.27641.16959543000513461144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e98b3dc1d721fb13e2476598eca32ad8e35c875413c94c315541f3ac410532d
Date: Wed, 06 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778061453
