Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B07306B08
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781015734; cv=none; b=mGWsp2ZU0SAZG4z/6mk+bwv+ph28hoU60Ecnho5hrikhyUZ4RDJ/dYKJMfuXj+fibzM94CmeJX0SXUbXQFq7wFD16F21y06ZpDzhnh2+V6uLFDIsasuBS6Iqc8k3hEsbphdwdIigbiJAZrUgzLBBDYZrHGOPuDg22AK3YBm9uEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781015734; c=relaxed/simple;
	bh=GqyDUqN5+TCmBAgUUKPN5TQomNqHyq2yC9lpBh6qt4s=;
	h=To:Subject:From:Message-Id:Date; b=AA4OjmuQ1x/uh7y4viP3XiLltUFlzN4D6h0rB6ApOTNIuZwxrUk6MxxU4F7spcbayxYB8ouPBydromiY8aWDNNsIUPt+MVvxiyMIWJck3CQWQjq/P7AQcdGx2S9OUP497pOKZy6lFri2funayJPofILc4rn4aJvRDitnCQ5FPKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POlsCf1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POlsCf1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30AFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781015733;
	bh=GqyDUqN5+TCmBAgUUKPN5TQomNqHyq2yC9lpBh6qt4s=;
	h=To:Subject:From:Date:From;
	b=POlsCf1Q7TzLNX/G1VkdD4oRFEbP2Q/DHAYop9PdtxRRlGPFmbbE3ghTVpy3JPj5V
	 VHU2dc7uyehyBd9N3dF8ZBgld2wNVYlSEDx5FHy4QQtfuo4dnW0Tv8SywzZUyk/2Mj
	 sFjuEOvePyB01pPdTnQ1xF/w6V9LbbnwJe4i5XLhBp89ss/2e+Dx+f/utZXTDQouWL
	 hbqohTMHpFdUprR+ds5SZBDTOi8ADkTVog1DyMZjdIU+nbWTelHvUvrTHYBjQ6HGxw
	 wro84mBXP7H9X0cv1Mc52lQ7kHFfhkP7fKJDYWSaSBd7UJpk/vmzQIae5Y4zg1+VaG
	 IZSUzzXNc+CWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F5BCD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101573377.20684.5484629768313838217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b76b320eca00e7b7fab425481099fb7ddc5a8343bb0eb9f7b0725ac13b5859d
Date: Tue, 09 Jun 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781015733
