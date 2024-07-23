Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214C14C5BD
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721728554; cv=none; b=ppNvZpLB/smDZKb7sErH0bhVQlXbThBmX2I3Y+JnCgbs83tCXT/8wKyCabrLxoSrgHVJD2SQ6pbzvSMTtJP/iIgyLCOD1XdLkbvTZQdAGoXcbC1KKEk/ebH1qRdTjG6xOWXDTnJuK1sT/X7HSS+eQzXT9WYiMP8CTiTC2mcJIrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721728554; c=relaxed/simple;
	bh=xOTYYTbcaMhYJEc3aBbB9uxgU8fxbnVfAK5LDk/xHaQ=;
	h=To:Subject:From:Message-Id:Date; b=leqo6TD5HcF4VLRaZW9BfhlYEMrYPj4JRPO6pk+/xZiFC6kQRtLcuAovIc6DW2xJjqXXFCsTNK7cJQaC12cTFlFVWRKXds2SfrLdb5wGxZ9pYamejGtVBAg8lxRHxunLjsmTi/joWBTEfsFdGR6a8QQfSGr/FPKH1q4iy2gQJMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn88XhBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn88XhBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB57BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721728553;
	bh=xOTYYTbcaMhYJEc3aBbB9uxgU8fxbnVfAK5LDk/xHaQ=;
	h=To:Subject:From:Date:From;
	b=dn88XhBSfAEOuZxcg9hhZKLh47A2tdpw/062PCI5SzOU2eovmMfvun7BKEdkROnGc
	 DyOtiF8mqYF5W0PpistfUAvoQ66mQ4F6ivKnKlfrj0jebmhELzXY1TwGMJUUh1jeVh
	 0/BcuxzrdnsZAwoZc7cDZMqrbf5A/LVxY3SaAKSLvm0ljgTto4SiuKlGGVQGTERqXo
	 HX8l6fOtw3lmjQ7GQdKJ0GIWc6Kazs3qIkUY3JFaVnlQ7LO8BTBTLhJ6OBchUbX/Co
	 dx6ptqWkFWigeMWzftz54UTKgXhTbugMdYXa+Ncb/6v/zDM6uLx0fe7HZbktGUx66q
	 ttENKRFDHJiVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98129C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172855361.32444.12820137889982634362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8220c5c8ce30a1f6017127c36fe4088d60a8b0bfbc1ba9462083be6655556cc3
Date: Tue, 23 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721728553
