Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F642BEFF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765925634; cv=none; b=hgnD7K6x6ziOYnErqwRw0bMY19xg+3zSW9woE06Bpr198VNFVq+GKlqtjZ75ZqojELWFJjw5X31i8b6U8tMocHGMuxy+uM2XBPncf5mxvhtTX0KAFm41BUIabtxbHYgfWWakDIpxKGqPBbrIVLNFc84288pkNpJcPgKVPgY2EAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765925634; c=relaxed/simple;
	bh=wLXFEVsZFlxH/0HNF7ogzlmw/jAQxskJOZp8uFwKGms=;
	h=To:Subject:From:Message-Id:Date; b=nS3I3LYExZm9vRNH4pMJgDB1Bq6bbf6VFlzs4Uo1RX+hTV1kUyA/oHatKzf30tnsggHL782SZti+Sjrn2zrFL8f+Fe98OHHwjlLJtpIamLU0Cu4AiTVFJ2IZoXhN1FePqyq9ZhJuwoujUA5Ye7JkaVfcYXlEncbO/uRg2uPi30Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4HtdwSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4HtdwSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B58C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765925633;
	bh=wLXFEVsZFlxH/0HNF7ogzlmw/jAQxskJOZp8uFwKGms=;
	h=To:Subject:From:Date:From;
	b=a4HtdwSKj0GS4jA2L6rIFYI9/7KwhN5u1zlske6f4T56JYX95f7alCIQ09tjKbENK
	 vBUPRjUMh2qj997y0fyQYtZvbd5vXPQWXQakHP+SVpB9nCNGEa+dwilTUUK//4xY7O
	 iKVA97AH3rL6eRhQoHjji98qJenZl6WLek36CRSrWq8aUFATk409SrGTi92YSCudvS
	 DcAwamZQbrCCc3jgwwcfqU9OhUJsOb1Du+i+MW8ultqkxZWeDj6oNC5FboN6RuCFsa
	 2xwCr8VQZhQQs2wX1gF+g2x96e7bH1jbbzLtOUQCW+6AFvsVok5V/GYwqQ9WdwbsFE
	 VR+IUU8+w7vIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480ED637DB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592563359.15190.13186293509383967382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe3f172ca1a8079f59e76289fc9771161b3aa1289f4316f1f21613597ee53f4
Date: Tue, 16 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765925633
