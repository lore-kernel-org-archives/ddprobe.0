Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE01B2B9B7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754399393; cv=none; b=LX416Cm4tlDlO0dreu7qLf4MLFpTNo8EhVh/fC2YjrAkqtfaQS/77B+mPrMlevqZA5DwPWhOjlozc9zCAQlS02gb6It5EH6ZSgwExFJuKP6T1Hn+sVTPHMlMiWrCTNBtqQA6CT7jCQK11Glajn4gNV4sV47CMQB4ntqR6Lt9nBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754399393; c=relaxed/simple;
	bh=6Ro+meGERLbQcoX3ZUz/qtGfdkNBqeNBmL4a9+At1EI=;
	h=To:Subject:From:Message-Id:Date; b=LVfXmJyZwAAkmOs4XwLnT80Tk0lk7vNC7i82HPBLCden3ZewEDR54wW0lijw4zXhCvAkGTpMlGD8TfiF4ojZsNXyNJjxCEED7+XkQ+58mNW9aXUtEVBz2/FqX/2pRNJlhsdCztpFSzeqgAWLBGcWBeiG4luuvM6/rmqL5EDpPH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/SNqn52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/SNqn52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4372C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754399393;
	bh=6Ro+meGERLbQcoX3ZUz/qtGfdkNBqeNBmL4a9+At1EI=;
	h=To:Subject:From:Date:From;
	b=A/SNqn52VeyH5UAD1+QMXgT2CDKrwvAv4rYxpJ2eu+Omze93Z66HAhUJu4q4Z9p1g
	 OEHZDeGa1LaQPRjjO3ql+8msh/FLTT+XnHde5ba6JmAHjlkCPaQO393IYPqih2lIt3
	 m/h8DbZ8wEajaLxfLs8BMGewQo2xUIzuxVJmcykoO9mQNg745EUVsjlVeimHbvTve1
	 tajy5EzpIwM3tV7nqK6No+4NAC/T/tdAoX1+x1GhoHXm+1JHU04T8GVi35tfRvwQM4
	 nZs6dCk2Zc3+PC5XQYVH3gA5R1tvLPOIeG+3MgaiJU67qasetpNtxHdn2ECPqLMKwA
	 m2fQj4qcEfMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6EC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439939358.26728.12292421136224617797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da8ba9a1440f6cefe21740551a981054e70a6700daea32f878c741ca53af16c
Date: Tue, 05 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754399393
