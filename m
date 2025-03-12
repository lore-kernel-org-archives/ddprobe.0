Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376859443
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741738734; cv=none; b=qZ1P6xRRrPIVznjL5mvSgjtiezfBMm/oOXVktIys1wV0YC9k7Fl7n/VpkUpO9q3ii/8AkEi3DuSi8ad19Lo0pTNyrIjkQQ9GvepeWQL8A8PIUH6+VWSIbOYdLXM4GtNdb/ucOzSqbeYiPKmZi7Rbh9D4m+MTu+l0HZhD2+G6t5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741738734; c=relaxed/simple;
	bh=gJg1cDCs8RcGLZAztwk059FpWFpSTrnhmz484n4u+bY=;
	h=To:Subject:From:Message-Id:Date; b=dky1nEGjGQn+10zHQeHQNrPE17RiiaiiTl6HDIELiyj8FUpcUdPRWbx2ITGMAbqVdKR08TKbiKBk3iurFjx3zv8szaf3FruIt14UwWYrT8PS71FNJlBlMbuh7bGkh8XI6NzdA2Ty19EYc/G8pvKG7+oldf70GA/0JT69Cg2fKio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVS+2ohT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVS+2ohT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8479C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741738733;
	bh=gJg1cDCs8RcGLZAztwk059FpWFpSTrnhmz484n4u+bY=;
	h=To:Subject:From:Date:From;
	b=CVS+2ohTejQbPGuznwohG/aRNUgRzuRFccZwPLkAyrqvjVeGW7H+L+bAK6kjdbj9B
	 hMEcf/vcdDIya/OQ4CjVoOeLUUwDKaAXM8KT4qoec3M1FUeGQr8p4BOj+HxfDJ7oP6
	 jKK/QfDo1V3BaHperVADOcuP5lSMgm+D7v5DU6zCyznMx+N8Oh9kHg9/bbBpYzzZDr
	 Tk/mOlv8L3ccazi7Ii0IHOzGAD2Y5y9FvFZ8E61xLu2wYGTP9ClqC8Te6qsoC3nHzk
	 UGvC2PFQeI8V7fSCkPUnoCa3ftN4y7zReSlE4gD5y23R2iVyzKRc72c6fklXCu/NnP
	 beFdD7ONvVHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C53C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173873360.19098.8802869348168766626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71b366417686825f8bf138fb65e63b1df5217deb217ec545a8e5583ddc867a8
Date: Wed, 12 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741738733
