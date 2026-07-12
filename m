Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F200CA6F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783824514; cv=none; b=CzdhVbxaLOWS+O2PGq3v/TGPq8oBO4GKf6Jbu+jOaTuAo6EnSfItV9lIcaldcsNjGglaSl1KfQWF1wK5+GQ8Yhko7TTExwnPPDt9bjkke6wRnAg2+meHMvKl3EXPhim+/vjWE10fOLZWlWOFmWxYUtTop/pkn3MjRiXypbn0MGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783824514; c=relaxed/simple;
	bh=Y9Kv5Wj94bRBmjqSuCggifYnneugl/h+nIBV3Fpop7Y=;
	h=To:Subject:From:Message-Id:Date; b=NdZfrbSUwLqFMu5o+oQ7tpOb3c8IjhoHxbOk0xbBNa6Y6m79BEAI8VewwiN1nAM9Tox0IKIP8VuJU+WlhVltaR5aNiav4FQrRg3F9odlx0WAutzkBbZDS92nHH5pNjZ+U8sJU9I0OGZ6pir8gv9ugQ5syyJ2yWPX70UCvFYkgiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4pL/oMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4pL/oMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFD1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783824513;
	bh=Y9Kv5Wj94bRBmjqSuCggifYnneugl/h+nIBV3Fpop7Y=;
	h=To:Subject:From:Date:From;
	b=R4pL/oMjn7ivFiuoEAHoUhiO2SivciaeioiUkUuU9iMecZRbGS0otwRgCG2Lx1QV/
	 0PGZzIwpAjZ3ph694nlwCPA5z3P3k9AHrFxiIqNUXtj1BNdYsZJLZnbTpJ2suD7w2t
	 39xDjWjgNCfTg4O3zUUdJbjPTT9qJ0CwAORG4fXU/XUFS4wlMnDkcNO2jxOacaF0ik
	 Y9UADq3+iUv+DqUzcYjIl9T6penlQKhVCo5apZ4cLxosIfHThHBeihqwf08DchGWVw
	 ++NZ2gDAYA1KogTJk+kTp0w8sVZSe/PQPAoBeF7nZ1EC0BK3GxFaaY7euku8h8CLfP
	 WYLPRLhb+obtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED7C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382451368.18764.9055809732096810695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3358f564916f958ff69c7f087ebd85437e6ef5d707b08d87d04471b4347d9a11
Date: Sun, 12 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783824513
