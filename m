Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A2C3C17
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764576175; cv=none; b=rjI9/HfIBWokfkYQzocohZDKdqaAvby0Oevy8pTPpDjQhDkVyD4PlYpfO+AfOrFPhj3kqr+acCvyFHac+VI13mBEkSGJIHbZNWXUZ4xlTxF+KMlXtd3nKJmL4zs7C374RoyrT6hFPu43GF1GjIoi0PJ3lNMgfgOyMDtHl5tB6rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764576175; c=relaxed/simple;
	bh=KTg6lBRekzi/SpUEpmUs5MjGh6KL1xtRKUDAVev2EIc=;
	h=To:Subject:From:Message-Id:Date; b=JaViUsyO4ggm7XHzB41rnGM9Nqj/wysyw28ygtfvw93+a1QGxl/9L51+j47RlqTDFNy/qS60EVe1MxdgfWKwgtlp6aI2TPPJ7xByU8Eu7SZKbAxEkczC4T0+9lRM438Q5Azjas07jFJfmT6R9aLaDzTvfu9+EfXi8qYBrWp2oJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9t7aUxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9t7aUxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F07C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764576174;
	bh=KTg6lBRekzi/SpUEpmUs5MjGh6KL1xtRKUDAVev2EIc=;
	h=To:Subject:From:Date:From;
	b=f9t7aUxDEQ7W1eYyNv6vW01/HsH4yB90Gb3l/QhxW5J8Uhatl0LtOiPQu71EU1bkT
	 Qg7588XnAVoHc21ixFBPw8nWs8kYhEaXlh0aAFVUWDXktwUyV00ok+MLbgtfmyhGj4
	 8jKbqOSscTND7Jk7rrNB0kzjjja1SM0e+V0QHykN1xtvQUaMjvyrqODNs/epm4f8z/
	 E6F89VVy/ciy/rkgcgvtavu2O/Sgz9qhuS88JIGxJDHC2FrXdMbCHH41Vj+/WiV0JA
	 MOSOrRUo4QAdys8B3Ec18xms81voe7zG/w+QpENPCUMoFSK9PSMjWIBUEXR3Dud6+J
	 AlvnJVFRztoYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD7CD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457617361.21691.9342781332789288316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc8431148721bdcfff6814c04f650f77e67c2534c2797734b14ba875d4054f1
Date: Mon, 01 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764576173
