Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5F14006
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720992623; cv=none; b=HXc+tuHmHiWfPCGK4dgQ0IwwKl0H6OGbJXAO50IDZGcnYWT9CBsv3aTeaauhmeqDwE04c4ZcypviZo5EGmU8+TVorOKRXGJbulKdmFRVEOg4ty1/dmbtdgL9VBTey8XixRoHkW34/zUM/otaSogpD5513GMBPrz4izy0ZXMyoM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720992623; c=relaxed/simple;
	bh=2lawoSQjOeI2dIb1Ze4TcbkJj/t8YeSWFo8Vtvr4COs=;
	h=To:Subject:From:Message-Id:Date; b=culG39P4E8MJMl0J7FFBhWKbGjREzGVAzbDON9dR2HoqIDyas5Iuw1ES6oztcLiMuqSheXrajEiLyuLIZF+YoSsNQOohKWTUpzwvr5QSWRnwmLpw/NDrTYudl84jSewyWh5fkfUh0UfDbzGWEnyisCbh2Foa6sXrN2EvGdjh3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwiE168u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwiE168u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CFDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720992622;
	bh=2lawoSQjOeI2dIb1Ze4TcbkJj/t8YeSWFo8Vtvr4COs=;
	h=To:Subject:From:Date:From;
	b=OwiE168uaGDA09+VzVjhiND1mGadihNr+QOc4e3UYm0ZmtWKNDAqgdCjUgY4j7nfU
	 B+EiLwFiGXEerUEdLPp+GWlXJuYPSbiOMiis68ezBqWX3PDqncBRsYUsZpYzOkCS3n
	 d7vJcOVeGgLXvsSVc5JinoENxokJqYK+U2zsHSohc04286H+OWLNYxClNTIJafDOWd
	 fuP/ETcjd1YwLj8NsNFuWE0Hp53fLUPSAAtYybSRFcZ2khkeNn/BZdSpvUvXyQkEGl
	 G7o8FltxVAYSoscAtTRRc6RwpQGN04d653vEs4fv3bMHYamK0MUORYQAJCRBLbCdbB
	 lDBW1Rnbm2nEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD212C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099262275.22421.14101369857174493481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6c33e29797b26af0c34c28628cef8e63d7ec23bf2f52543fd39008f1772075
Date: Sun, 14 Jul 2024 21:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720992622
