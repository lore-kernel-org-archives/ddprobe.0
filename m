Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA7435A3AD
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777903654; cv=none; b=XFuKtaQf2627PEFLZYcEnvraY60EcE51idXWXG5BAUa/LxgnMdc6xnlO4m2HnZUTu48vUrLy5h12fp0rO2iubXYhluKfP+nAPDHlbKrrwqGn005iNB2F7mTgywaNl48pgPI0loMocVIfRtzV1UV/UmgPu3UdRTohyrDi0WrZJy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777903654; c=relaxed/simple;
	bh=6pgBTqRFOu0DU5IJ2ZGw7cnJd9oBCR6nu3mVwbd8PAM=;
	h=To:Subject:From:Message-Id:Date; b=gkEAksFJ0I1JyBTUS0emHAxmEWeXwCzN6kDrpktnCKEi3r5olrPCwUGtGIIJjVe62MwIYsdh5T65VinxlTbmRaJMy5zUqZLk24pwzzp44VQSYzDs4ypw/3nMjHCd8f20WVTkCZrKjfdzmXSFVaO+da3bO1D67D5hFVtYbOfpkB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeSZC8I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeSZC8I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C17C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777903653;
	bh=6pgBTqRFOu0DU5IJ2ZGw7cnJd9oBCR6nu3mVwbd8PAM=;
	h=To:Subject:From:Date:From;
	b=HeSZC8I6I0SxSk0XMkFRDpPWtincFwyMUY7eWClXGzcDsgoZzxpqD4Q26XDlBo7A2
	 xrpH4fZQtfyG+tRsfVN9xHunNZPL6zBkV1ovQOoGFAXsyZWfVsz91eJ1LXR3YNH74O
	 +a/N5MPdFkToZkA7CPC9kX4+05XF6lmkb0ObdJpQARMkySq0srOlbB7Jmf+KUU7wYi
	 y84DzS5byYBrwlPvXOfYccKuWezCvXCjtdEbhGSJFtby7Ws6ZVc/Js90DTflVVA9vE
	 smR7slCSfNA1o7p8rhQWjSSe0R7ff/3rRSKsJ6uJY6VtJzLvYtjgfPOFo/0HdCO5v3
	 JiKTs0+T9RI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB1FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790365368.9715.6806395638656275712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42358603ae3c65da1694831be7f84a68ad8258174d0c76bad2b978beb8d81df
Date: Mon, 04 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777903653
