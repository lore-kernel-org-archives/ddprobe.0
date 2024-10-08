Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300BB1FA257
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421554; cv=none; b=a2kEkoXcw6jwiuh+vrbI/lf6tnhWfuuvjRWmXLJ/sdYL/Q/hZu+IHUUFDRDMvkocl2v5qA3ELZ5KHNul6FBUxhQPzu6IEtYSPxh3XjH5vhkMxfWiXQn94bBNbatxEgt84r7etiQ8/pjrs6C/yIwFz1GE0mE1zrN45GgtKBifE38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421554; c=relaxed/simple;
	bh=Z2oZDrFOJ+MA5+ZWEZDuihwUiwWQiEqnC6AQ4pbntqU=;
	h=To:Subject:From:Message-Id:Date; b=Y+Udmk97AwjFXXVfNA+Cy3/+eZxdvWZTHvj7So+9wTQIFXX9MuLmEFkvimXN+JnG413PAS4Yels6Vnyhv5PnH6+moJevO0SnAUaLL80olJ9gpawthJisZy6lOUbS4BRxDeck+QSffY95PlszG7ZAFkGweGnp7nPG813z36eAF/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azHEzYZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azHEzYZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7FDC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728421553;
	bh=Z2oZDrFOJ+MA5+ZWEZDuihwUiwWQiEqnC6AQ4pbntqU=;
	h=To:Subject:From:Date:From;
	b=azHEzYZc0gKJTHRrAP8r13dWwfPO3jCsfgibWUY2WuxOMI0P/QdPFiyEAjIrjwHRS
	 LFZqT2gB+TEKjULeu35ZLhfmIx/z6CU0QQ6zHA4MTyeTrHc5W1KqBl0ldwxa2XixpG
	 cc8O9lJs8tBMxP4ESZTpdm8sgKb8dVsny4HbRbYs+zV7rgZcYgaM8eP65P6gXgamlC
	 PkwMwNneUF68mAfkaND7KF7YcTl9Q/FRd4ZTAywQBDo3TqF4ONq9yq9Hvg3ousiYI2
	 pUya7j7L/1XLqxJSsfTMPKsBz42GIE2auGA/6jLUnTbSxheM4ITA91UyqMaIDqZL9s
	 4yIKkTkwTq+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F09BCF0423
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842155364.13206.1615706120887621658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98530cfd2b6f78d343749fc51b775d53363032404c00329f8414efc2a26d4449
Date: Tue, 08 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728421553
