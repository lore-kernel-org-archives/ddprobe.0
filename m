Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194B225EF82
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751751594; cv=none; b=qiAI33kOr/11hky3PFIMQ5NFBY/3dLya5vxUmZ3J0fLiDLShiU7txfGk9mVAelQNeUqCjJ/6MGrdoDcPfbD9PrbJFqNR3zX693t6U92D2DOFqYD3q/zDUibw0P7BAkq6kfEbiKLKPMVVrnXHqC77ucpBh28VZ2tuw7+82vISGsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751751594; c=relaxed/simple;
	bh=Af9wwjHJnaA33ECW/WhrwjJS+GpawzxlBYKfWi09yJc=;
	h=To:Subject:From:Message-Id:Date; b=o12UTf3D/irMnnlq5iZSlTsjVnH1tOvVZT84AhLNMHhX19ZiPuWOxEFmAnaU3QjB6Y35e3vhJQeVv2eHfAWDwvFOZaJOs90w0rA0vBQTHHpy2ctb3jXNcn5vINJnRKTYQnUBepm0vzOH8XllkybezzI+Q3u5a/mSzg3nuhmKX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqrbGQZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqrbGQZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ABBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751751593;
	bh=Af9wwjHJnaA33ECW/WhrwjJS+GpawzxlBYKfWi09yJc=;
	h=To:Subject:From:Date:From;
	b=JqrbGQZMHoLP/liYKJGga5XJ81Zy54zYkUnc2Ff4hrDcK2TJVzDQFGGvSt439L/1S
	 EEu8QIV08CwItQ169AZW5VXYJqtaGDlmRCOvWU0A1W6dRQ6yQs15NPZRSaK3+fJN2u
	 hIXASKJVw6y09XIQvT0W7QWF9aqjEil6lxT5uuykQo44aT27n77bEwP7zolIoZ116W
	 lhrtPufccQ0FlE0EkWkaswXLa7OBTqQacV0Vb5dZO/X58MQ5mUf7QSKTtux0PsQORD
	 UBAwbqwdQ+XQP+cKrRi4QIm5qiWWSwtRQZkBxJoZBBvwFOJWigTxYzzd9xZD+1qATJ
	 IDbKVgbDSzBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E944C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175159357.466.11687218951018933753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee5a9a3b153f464eb31488ae67f7814b5c29d74e24cfbadb99c2b588c6f7f03
Date: Sat, 05 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751751593
