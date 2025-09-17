Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC002F8BC0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758125394; cv=none; b=bdPPPK/OoaEoxB9ksIAPz7IPFhCe9iA+8753ajxssE9auFIvMje6ZgSIIueWQtYi55665fT3zhC5pR8yjnlQnPR8dLSnbs0i0sEqwOe6fFvozQ8dx1ULhrPQq6puJrl9bU1zKP5/OMhsMIuFDMx3QRhy+MktLyLKrA6zoqlzu6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758125394; c=relaxed/simple;
	bh=IFEToqm9+U75DFQADkxqSIu/U+ajEuDaG9SOJa0B7qU=;
	h=To:Subject:From:Message-Id:Date; b=Osy4y3j5fEpaa4T9t221YiJq5urgaYd6/nPswKjvVU6c1GBuPBLp3gEHInd9m2b3jAXk5+kZ1eTALq/D4rhlW5HPuZNltg9HCi+6rlx0x73Wgm1jmM8AJg5CcZGMS8scJOVND1s3IGLHrG7i9p4Hi+BSd5x/bAHJQCkKsPgbFCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdcdNH0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdcdNH0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758125393;
	bh=IFEToqm9+U75DFQADkxqSIu/U+ajEuDaG9SOJa0B7qU=;
	h=To:Subject:From:Date:From;
	b=tdcdNH0TUYNhuXjIiD7LnVOPsnF3K7fz4dh1vrh4H8oEZHBJgMYaptVyQnI9jH3a5
	 pZlNOakTKKh9JYua+lkpak+t7A6QpISKd92wdQBMYKeBO7kUn3AnQpnFJwJ48KH6wN
	 ImrkS/Xd6TansDdpPE5hCbEYQSuKnHyTS4ypDFOMA+KkFxiA44WJlkIClQsiGhKhFF
	 LrCosaBoueoJMalF/X9Wn6epc2i5nS25MCbFY1GEJq3EVaPb0wevF6/AM3Hc9dJBw2
	 CqnBzDpqjRspo7I4WQyj4IoL+FTo1mL+B9dhArkgSken2BX2HzKkuzEjyKBfZZqgb2
	 2sfUdLptdNx8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F739CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812539357.29648.8683117371465098230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65c0e89729ae3280d0de3aa392fa71343d9d415148fca104d4dc9fd4d03ae7c
Date: Wed, 17 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758125393
