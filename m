Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0492E8B69
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988994; cv=none; b=Gg2Da7zI5Mbr8/2SeJVRziRipt18gpC//5DIiJm+lXOAMLQ999LxPfsPyr34qbygPDBNkx9TDNNOfWN8MCwpwN4RMdrfNAmRkE/bqBqryu6E5ialGmwuSIGOCBwsvLoQ1XXXJWyMqXSJZsfon1yZ8U+aSKnPkLigDWgQi1u9VZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988994; c=relaxed/simple;
	bh=AV9XnlK1F1xTiYs+3A9knt9RchUSiVS5+wzy0xMBnuA=;
	h=To:Subject:From:Message-Id:Date; b=UNIBeXlrncPv48LSFZW01rn7FmvAHtAFRnSyiVlSCNYRSY3BzDcJ5MV551x43xLRyknVhZicBYeVpb15LNjm/ecgnt+830xu2aCbiJ6cmhW1LS8ujUnuLQJ3mbHfL4w1A2wf38q0J72oxOKH5kzCtJFfR0Ii5ms/7cFOCSjYi7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlAXRWnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlAXRWnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A279FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756988993;
	bh=AV9XnlK1F1xTiYs+3A9knt9RchUSiVS5+wzy0xMBnuA=;
	h=To:Subject:From:Date:From;
	b=WlAXRWnqooi2+k9jTssfwx9goRfhGaxnr3OhuFhGuh4OZ1p4bHYgudYKZ/ZwoXkn+
	 wNRtKmgiz58H1fW6K2XmiHksUuy/kygK0awY7l5jwRDt/oT8Fy8jhKqasqSYlkL76Z
	 gdeXMktIWC4tNMVnpm2WlgFcpHC3hT3u/wi97hLS+T1/rJ9vmqKc6MzzxTcZP2AFnN
	 dW9zdNHSjDouNXYQTMZecQKOTT0EmeyVzG7xmQRYtyRQxh36qXGUTHB627ttQrXpCV
	 HD8vBWKnOfRFFt04Rre0be8I1zJcbP/guX5cfiH/zvEky/QqqkeY0iY7R0PoWsPcBl
	 fYcEoFLx89bHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90226CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698899358.27677.855088272270631013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077fa483f1971aa6294b9b4cf7ffdc7dbe2e676538d07d85d24d7130308fd180
Date: Thu, 04 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756988993
