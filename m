Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E75F39FD9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759390794; cv=none; b=WpsAzMIrZ3xWxQaiazE7+rxkNOgbsji4z1kNB/KFtf8UtIL7s1iY6OgBxBscWAviUfhPeYiWCl7yzEMtjgxpZ0N1ytIi3j4oOWQYI3bVCtjMB72jR+NeApcmrGhZ+kqKrI16GOZSDMBSsa3BXYpm5aJxGDl1g60MXlHGHrkPzxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759390794; c=relaxed/simple;
	bh=PKlksshUzOHXLv7GVPS1f3rUeyq219nLOT0kS2Fn19o=;
	h=To:Subject:From:Message-Id:Date; b=KMapnzEmK1CqMGHn0X6Z81jGRLJA87KR2AjQKyvtux9eDt/QzmZwtx0PCMI+v7pLnNW7zxsSregn0AuTDBwHbuz2pUe22NmugemyAFXmO43uU9L8hwdg24Il7Dg6KQtxM9fC4RcmKlI2+EfM9Yp7O5k5H5qpk1qjBb1ChegQUYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEzjDZVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEzjDZVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76D5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759390793;
	bh=PKlksshUzOHXLv7GVPS1f3rUeyq219nLOT0kS2Fn19o=;
	h=To:Subject:From:Date:From;
	b=gEzjDZVaFx+h/3LLC7RpZSV0LQAfHCT5xJYDeXQlW3ZFdBhdvMfKr/of0UgtDcbnL
	 1XPi8oxcBq4eN575Zq2TISUSnR0ttEHkZSYKs2CscnR+4ZsTyoDACAimyYyo4hTLGh
	 7gTfZxHznMx02IekvtdapLSAuJ+OlWV04GkerzjjiyK13YYaMFKtF556hyuHAwJ9Qu
	 Fw+yepbFfqUroTn0I/siZvDlD3SeO7dip9qvbVymPyJ63hwK/Sdfd7qCrrBq6fuIRC
	 2mzKOYrwWdB+t+ekwTDRgl5lrZqdRlsD0VnmlKv71RDNG6YcqJQLflVuTq8WnISTgV
	 ilR2JEHVvKU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4DCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939079359.12646.5557185579543812497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5628159fe8ebcc8366a77a870094e2e91f9a2384343c6154ade58c8e1d6559
Date: Thu, 02 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759390793
