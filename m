Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABD8189F20
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780845874; cv=none; b=rAdNt9njpidrJzOqqSjDCHtb6P2bi7JEojMrz4/Z+VaQfCgRfpSEK3nLmG+Tqy4JurhOzkjvxrJbJucedhiP86OYphM5nFLu2dS7doeNXXA4lVQ925U/EODV3kCYwxf85EJm+3VJ2A1Q0bfITpIfdF3YnmkBUnZ6PaybbrXempM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780845874; c=relaxed/simple;
	bh=Id3bKurE0gsdIh4N+be+iU7JwSR/d8lzpgWOCoMvAXk=;
	h=To:Subject:From:Message-Id:Date; b=sB9mo1HFPXXOR+Y+TSb6Phttc17zg2yJ1WkmaIT0hN1LFMxI82ou7hJrxp7oF9CPBB+088XnkdVKJc9gFLhQdtohO8lYWdss2JM6hiWxta8EF+R+XeQkVswxzY2cur0vhbIzOvXAn6gkW4q3q3CgOHERQfsqjtO2CpjuQ3jFnJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FySQrmYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FySQrmYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C783CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780845873;
	bh=Id3bKurE0gsdIh4N+be+iU7JwSR/d8lzpgWOCoMvAXk=;
	h=To:Subject:From:Date:From;
	b=FySQrmYQaKfHdI4ZpPJrTKso4D+rzH9xQpsPSB9TApfShPKbQqJl9G2A0kbsAjRF/
	 /iLieW4IRJz+VgATRENQ3xqDCNngAmmiaVOnpLIW5L5sCFW4pqNAJPhNbGoZH2ZH6O
	 EW3oNoxVhwTqMvSAxnXNEb6keZm1Qf/XP+9EmliPs8tAXlL2wkCz4ZtBLufGayoBuC
	 BcovtungGzUGmxfMaIRRCtPoeg40oXocU07aUDyTAnj59oPf8styiKXEZPWtw/h7Qs
	 B656+kF3VflJQRlx6+rJIhVYKgjKCOV6cwD0BeqmIzrxoLkT6Tp6xQwBXJBeAeUmXG
	 x3KBY8pDFbaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF534CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084587368.11970.3426142917099321531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a773e6148ed85de69ccc83b374bf7fef9325adff793c4074f5eb413d432fb75
Date: Sun, 07 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780845873
