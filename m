Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233D822259D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754302794; cv=none; b=XdwgzvAf9SbsmqS+9jofreUAwOat9Tk943aaZejrZ9RgF1LqDYzOt7NkED6r7N2PXjo+Dlga5UKdMu07fZ9MRrMCfVNiCmMS1Pd3HTeFnA4ZYfuGYYdy6RhCWAkiO6qfoCPnH9DCwDl3V8QOccEKtXPZm/wE0Hu7bj73nJ3t0AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754302794; c=relaxed/simple;
	bh=y9nlqsaRDsh5SQJrTqljaMb8Tnkd+jeetl4Y+kutrFY=;
	h=To:Subject:From:Message-Id:Date; b=PHrE9vLqsJGeKWXFUNKML7Tzy8YCEWVI0jQ5XYbb0WOFfL0Lov1do2NgeesPnPTqlhX+tMJC6t88skxvUcj1CnSyEH7x1mDcXP7g/efXm7PbKbYd/Hn/SGIveE/UdZDSPU5L/lIBS6HrlnNYZTXacLD+ZPZdh/yzc6gYSkRX5x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXZhzDQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXZhzDQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754302793;
	bh=y9nlqsaRDsh5SQJrTqljaMb8Tnkd+jeetl4Y+kutrFY=;
	h=To:Subject:From:Date:From;
	b=BXZhzDQ8AwjXXOnMavv9yrUzdkAMQQV7ieZB88H3ErjKQlnNNxDjvNnkrQ+e6o+bU
	 FbxuWjuHyWmNTGPW/9khB9+keA/xdy6sYasRu77cpu4cRiaNtWkuP85Q+eSdIWzKdu
	 V4Z4EXlq9cQdAwusqxexqATZEJYVrtaR58WB8whhYXkKWfLXxl1jXUZ07IEtICIDxK
	 DgZcdezIeqIX7h5xdnqPM0P4FdCMSuLlSHo+FSvEvK3lq2oRo6cPwqpxHwutEDBgFD
	 q9nqDzrP7N3eQ/cRQ441y5ip1SwjaHLErzTvKA03HBnAjU1FZqtqzdyvDYxY6eRghM
	 CozKuGUUeT/pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA06C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430279358.707.8673978757456872534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908aa97dd817a6d2a0e2caa96709221de6471a7ca86441f5708d7e9ff5116a05
Date: Mon, 04 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754302793
