Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590E739184F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780307074; cv=none; b=QIhkfb3SIFlZyMSzRquFWOD1sZchMAavppP70oLFW4TKOrQqtYv7Kn6k/VRz0spSwZrWKD5dIq6kE1t7cpikNq8m5rOfwjNTwvrOTsdGcFcX2DUc9hBdX6qYP+TlsHQdvDNINNgA1nR5f+Ws2M9QqFVxplF1kho+LqIIH4ucd1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780307074; c=relaxed/simple;
	bh=0q7NfX9dsxiumQ7f29MdirVuE8FJ42rwj29FGqjks5Q=;
	h=To:Subject:From:Message-Id:Date; b=U6Uk67FeMeJgN6Ip76dnIQOWz8OlYU7junVQJNmgWPbtBfeaic+hvDqQRTPR0OE2LNl9B17v+cVdjTPYXP2n4qLL8O3kkil6i4m2hJPVpw7aex1+45sHAJLAmfs80JN8tW+Wdol8AmJEiq9e6RDhlggJF7euMLfcW85po79CQx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFGkpSkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFGkpSkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60C9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780307073;
	bh=0q7NfX9dsxiumQ7f29MdirVuE8FJ42rwj29FGqjks5Q=;
	h=To:Subject:From:Date:From;
	b=RFGkpSkIyB9n++wWQgiDKMIfj0uu4VaIzX24iszhCU80QPZIpuNYGjHbcNJW8iJ2I
	 X1x2hWW+QS4SVdfnl2Y906xcPKSTyFMlzUrJ4gXSFQNWpzqn5TLjRxip5HojR2M/JZ
	 4ROuWSWWuwY5PRZf05f/apBduVJrrGstp2AcrVUkAKZElP5imEFSomj2Ni0lAG7TtC
	 et9t6YPurBjSJVhspYvah36cfxkNpphKTD5fe16HtgjLA9JEfeKIkO7QT/c9iF1TtA
	 eH/oH8ORlLyqJoYpckzXB19ARbkCPYZBtH/9uwmN56jjWkWE6WjCr5p0P3wquNjGsx
	 N/Z5UYmv0y/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB799CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030707369.10300.13561141317953922959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b491307dee7f1aa7f696c5e06174e83b4e685ad74d2b9d0dab15b3c61a11774
Date: Mon, 01 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780307073
