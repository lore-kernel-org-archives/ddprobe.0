Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF7D30ACE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791048034; cv=none; b=bPUHgEGbbtAFwFLflbLaKib1VhdKMFKnSj3TxiO8uNvdF0iNtOCahDlS2cwP+zbK58e1lEgdzFTSgyUYIrnmmBb9owU4eyCuPeg+OKyxVR9fiGcBxnSKDIoKvo7X0tB4lAcKUBYtVMlUqlyEETQ68SJ0KltMOiR83Xl0KOshL4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791048034; c=relaxed/simple;
	bh=XHlC92JEu2+wE+LgNqPgLHCwt8eElAmetLpqKYR6F9s=;
	h=To:Subject:From:Message-Id:Date; b=MOwyK9F+P2dnTK/88+VVtLVXU/lr8OSJNRpj3hYFH7Bd98MhihsP5wyrHAS/uogKNWbFRJEXijPdPFY8izIooJcceAEqjCfsX3UQ4V4fXVxpn8TERtdFpYCiaY51FEdHUt0cKy8ECI2tX7ayd2qYmyrUh/iI/pjV/KF6GnHph+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUuPkWIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUuPkWIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEFDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791048033;
	bh=XHlC92JEu2+wE+LgNqPgLHCwt8eElAmetLpqKYR6F9s=;
	h=To:Subject:From:Date:From;
	b=pUuPkWIGbkjxndI1FzU0dPOWjmTi2jPCyWvxvCJ2JRtGFibkqZbxn5oh6NhAlaLeG
	 Mu2UU2OvXWM/jeOwRL5NStTVJJymRFw6Z53a8qN2bW0muSVJ4ImQlfLprKzht6W8mp
	 07aOHTAWsQQkkkq5TddIoy+c96oi0fNmiMtrytV4FOfQ64jxbZJVHhMYKswIDDqsHU
	 ENaPSrVUf3V/JUGXqjMXiCz/fiwUIxKUhI+LVWR5CeRnGBlB3k6OnwU4MiSJb/plHD
	 oAbCucNvriWWZDSCpqNNmfA+y/fNcsgzgdRchMNSU85/F8AuNp2pJLm3LWbWYtwF0J
	 xqedYiXjUxr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44F5CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104803370.13955.11548294544811084985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbc8815a722e9144ba7a7255ab3df21250debfbee0aa5abe171a3a712ea5914
Date: Sat, 03 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791048033
