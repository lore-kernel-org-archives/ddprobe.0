Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9AF325706
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782326254; cv=none; b=AECDMAnhbBCwZyn+eRpa9Oz1CO3UoeL5lD42SRTb+5+t7z+AJCF1df1g2FgC6lCOa0wX7aZ+DN3kR9hh9IzZbR2N3szhjfsWT8PWmUOd3vlXSGPaUFTbbS+aBAjA93v6C/MyahLb+wFRIBn33a/o0yK9VVGU0CmVvxBN1+lQuNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782326254; c=relaxed/simple;
	bh=mOR8QpdfIKh6VboNHq0ltnrpTPp8uwqXoqF0w/sG2Ao=;
	h=To:Subject:From:Message-Id:Date; b=fVOp2/5y05bRis9tVs+Tpqcfwv4ccDwO4zxfJ1hkJ/SjmE35CyZJXXmLuQwFIhtVrT8dfM/BwKMflnmf7N50JLSP4ALVtWIF3Adk3GdVxSpd3wKAs96Ccvk/L3+F94EhBx6jqx94CJBC9cckNi8rQAW9ZtUs9yQHgrDQUfIKVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/g8AGep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/g8AGep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29A0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782326253;
	bh=mOR8QpdfIKh6VboNHq0ltnrpTPp8uwqXoqF0w/sG2Ao=;
	h=To:Subject:From:Date:From;
	b=b/g8AGepI8HmjiT/MsS2DjiceCVqdgax6Ufomamq4bo/5fqyaYh+dFV75E7UDy3qk
	 603hfN3u/PkkF6KsUGTfxY8CcknuSvBDct7JJD4F9jZ4qFZzeUEgnJdrBJ8T4iL9Ln
	 zfelBSE99rxXKTEd6OwM0l32NX9wuyP+VBy8aaa0fas+IneMhbT0ZQrvlFlrdmBzA2
	 IQxyapo5m0QCQe/RrMMia6mT/8sHuZUMN3O1I8G1AH1WCxR4EH2L7crJGAr93Aza8X
	 0BtLriotLuKeJHmGdKKUo/+oqLUp9TouRyRMKFjOMALZxuKSmCsXaoVBOTdhWjx5O/
	 org/zpBuRgFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1ACCDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232625376.18594.5970937324646559042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028fe65174c61455bc9993bb2c08a96b456708a552e187cc57604e008ed34dc3
Date: Wed, 24 Jun 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782326253
