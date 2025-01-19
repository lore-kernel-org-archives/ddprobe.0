Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A00257D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737276954; cv=none; b=rgPXP7fXSmAXRftz2VPVS4QTKd+UNJ4aN6KKIHuG3p/1W8OWGkSyGHQqQWKqHaVjtisk0ousGAb6oPqrETvKxfsnErzif6h9ls2+16hcyeQ+oKirtYGHV5teWdpTdnI82MDkzmD30nCN8XaOt+/2R6LKFQ3cib9rO4IQOFo3IVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737276954; c=relaxed/simple;
	bh=esWIeqQORQqDu2j7HCJoc3zYxgqNj10pyNecavFkJ60=;
	h=To:Subject:From:Message-Id:Date; b=eEAx7PiphMI4blAwatbB25LEf4v/L49jkIYWPf9sheywVuCm2YW11c/qKNwcIk7oTmRQH7WZs5Glz4Mkszux19+Gfp+DnhllE8FneHi/iuU9gq6BU1NczRcXcU5OCmJ5A2owgWBgzVyFULuQQ4m2If/YCxeKiYsB98pyQH7yMFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkL1DHvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkL1DHvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34FCC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737276953;
	bh=esWIeqQORQqDu2j7HCJoc3zYxgqNj10pyNecavFkJ60=;
	h=To:Subject:From:Date:From;
	b=rkL1DHvdIadZc9HYFfODvBOO0+VlUjInJ4pVwna/kU0VXcgnLhQksjqaZDtQnK0rQ
	 SVvkPr9g7NSATohOLDcCrmI7/8hsLvYMSod+0OvjZ7NjmEK6jFE11hMj4UMbXC1J7c
	 dn8ctNSMvXg1o7ipu32VVr2+DIwj7yQRWPAErlpazSX9W3szGDLh+NgWJPDMfAEGDM
	 8Cf3SZXLCTfsxKWwUa3dntCUGnzNyFd/wkSyuU6gDgG/9xi1UT48PFcCWJ7yrg4bY0
	 aviLfQ0LZA8NEXkCfZXitRIDLuhgXuCswC3L2knMHLTqZAVwKMnOPTx9u3VheGkmT3
	 OGoj+imsjST9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B4C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727695358.26579.11034656919117813509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7b80e090f4f361f4430d7a74a3594a1973857232754fd70173b7116cf63ddb
Date: Sun, 19 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737276953
