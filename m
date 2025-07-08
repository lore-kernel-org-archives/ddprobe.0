Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853C253F1B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752014395; cv=none; b=Io+rVc2xdB4FSfj/60c6QxjYzObhfoXxd2uNIzPtHKMgVcWm9yelnhk6YgtpSbRtwsp2vYwI+L4Q9yOTsUI+LF97DQBx3fjgjdhhNlgF8dFGy3Ux/65wyTENDEbR5qlS6NjJozF2Fqe3IMCQRuDKvavfDRHJjF3RazXQRBG5FXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752014395; c=relaxed/simple;
	bh=v445fDiwEstKtgI2LkGnw51GH8Ba+UwVa1zEpNd1218=;
	h=To:Subject:From:Message-Id:Date; b=ftJD39OWZ4iLNz9+uqoGrPtjj40vDLzOz4wu0PYv31A6hWo7Cf3ijZL4ZCca2HXzQ5MIi7B0XU7VUNia5/kpRboxXSDZZmzOSdxj9igdGdzcFNkelFAMBQVgD/yTCMJzqFU6e6oHedKE9ej0RZ+KymJZw/wrwpL3RdXc6gRj5gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbJ/MOxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbJ/MOxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0507C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752014393;
	bh=v445fDiwEstKtgI2LkGnw51GH8Ba+UwVa1zEpNd1218=;
	h=To:Subject:From:Date:From;
	b=sbJ/MOxkMnia9JmaWiRNpZ4Fub6s1igCtTE57qaCZqOxAon+EOrM0ViX3OYA+G36D
	 2PyTQ9WbabVXuX3xFudbrHzDycrmewZwWNC2eGyeJHD4knePHcdreU9ITJYgHOq+px
	 YdmV8mxNXA9ThKMhNOZUP4dQeE+/0ydfirbKlc0EYqfQ2ZS4sgnyEFxcppifjtnQH1
	 Z5NUW4G8L2kynFSTdbO9fh74elS+H86Elt6UT+ZbkdeW3lmCv8UJKnyyJXhwLMYUx1
	 5sAkX3mceLJ8XSYT/WkoEBflIJhUU7/O6MzlVHoOEDqNUfTfXwrDJJsQPswYkiuvD3
	 zvSUFHiLwscoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C5C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201439357.10961.1521590982569390009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c69bb8e4ea7c46048dcc26a070d38c9cde3502618d2bef09725b40a3be274c
Date: Tue, 08 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752014393
