Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C4F189B84
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724917554; cv=none; b=gOnhpAHBe9DVYPk6esjk5ycm7tGC5BaF73BUa0rNeGRQU/bmqPI7nyAfYk5wLWmi85UJa8y3+TXaRQHb2uqY42EeNEteC7Rcv53fLvRK04YObNDT/fFoLc/+8Zk78OKHjE4Fl+N//gOti1kH+/kNzhXgmqmXAoWh/NfqXN1TZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724917554; c=relaxed/simple;
	bh=HrwRobdF0zpK5bugRR6bsKiIt4XpaN33nGQSTwCNoeE=;
	h=To:Subject:From:Message-Id:Date; b=dHw7KnwvTPGtSiCynmE7cLZ+fnpDEGuaTIsYCoLtnPJwf4RLjHUNmaHBWVBVV89SSwQ5gRQyxZhQ+tPrkClAnKuH2BIMjmL9LA0ZL0wBfjmLY388lPCp+GWzKzxzRbVCC2Ffp0O9Qq4U0h7hnjcm+B+fcbjHLGq4c8FGn/bQS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcqo5VNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcqo5VNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E6C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724917553;
	bh=HrwRobdF0zpK5bugRR6bsKiIt4XpaN33nGQSTwCNoeE=;
	h=To:Subject:From:Date:From;
	b=fcqo5VNKZOiwd9Ne+bUXIEXwd2zRGRAp5RSD/LLim05Mf3xHVmpWTTJSxRbNO2hEz
	 Qj4OpqHhbzGoPk5/DhLdP7787+2eNkskjLes0nAEvsmkucMxPNEdOLzHQHW0aOpwjj
	 fE1MmWiqkSGGrze3HfzIPTVOvkw40/j159sQ5UeYGNj0/KxPjyGhB64jA/Nq5jcVwI
	 WN9vGjXtUPq/mzZ8xDyQQjg+NJFUkW0xcWYBocmEqsaMjwqGk2D/Y0tIRjOJbYczMQ
	 DwxCbExjPYFdx6tifAJBcxilFOPwuq6T0PLMCTCS+BFh4Beut3VxRXjm6SgWSgfPlE
	 LFO3YZ27hky5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D60C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491755361.3998.1302169493175774554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa79fd03afcca14125d2ec4c348c9b61d2a4345ee0922c93a5340f2b54fbc0fe
Date: Thu, 29 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724917553
