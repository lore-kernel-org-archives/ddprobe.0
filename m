Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B193A875D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788732634; cv=none; b=IQwJPo9Bowi3ir3Gg6HIVwyStNhEhmqq9HDnyFUO3F9JCwVMW7Apjz/eEMz0vEfqR8ehn982iBxR5424LoPkbukd2gtF0vsh3N3WogbgaZwdjp44OFyG5nrzs0NlcGYwxuwzE9rBU8IFnZe0+/8+lSZ4BNr5AkBHsikC544+L6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788732634; c=relaxed/simple;
	bh=1XubYnqHkr1cUE1ihzZz0y2MnBFtVRJa8ONeyswnJPg=;
	h=To:Subject:From:Message-Id:Date; b=ILZP3ub8Oj+PyOr1LpkHdsAq5rjWQcpQ5vcSq5Z4Q9E/hKlLtbHg05HcwXus9yFDs9mKCZJEbMairCRC6gMueQ3YLx+5cH9qZQPio7kvBWZp9AO2HQCMU1tSxzknPOlO/IPbhhYefgGHKfZlXiq0QztT9DEeBAXLS8CKZujvt90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5XoCKbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5XoCKbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788732633;
	bh=1XubYnqHkr1cUE1ihzZz0y2MnBFtVRJa8ONeyswnJPg=;
	h=To:Subject:From:Date:From;
	b=s5XoCKbcmWs84pZE4VDZwGPQgmlk8SO7ES3A1C2MbNKln9rqA+/ngtE2b+hE3oztK
	 mYe1zLRvZB+91OiIZ6/I2l0TbRp9mvTQKNQdf4OlxQr1B3oLoew+TQwLfvXbHKkcox
	 BNG2fxvWA+GgEZ5AokrQLLRwwML1hEDCOtUljFE3/07Fb4iAoUvLJZeIp1jQbxMh0d
	 KDPlhzn3RR/L/luXNFhdxjIcMrll8RKIe7b0EW/4drTg+fIsb3RBfZprVGn+VSC1j/
	 PINs803epvxIk0/Zphh4GXqb+aora/aNcFXRTqYvyrnbTltc5TeTcmNWkn9eGnEqRp
	 VjIktH0+9ZzeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C65C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873263371.30387.15400526731562561306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01037464c7ac8dce7b0a2d4b525e2987be3efb5e563b7f766de4b9a4873358a3
Date: Sun, 06 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788732633
