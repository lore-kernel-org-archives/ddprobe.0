Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AE5189B91
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737365754; cv=none; b=nk+LB06SeXcwHR2s93/jgstUcbxMHR1sx543JrLY8e0Xv9SpeCxhDAiquYzFpRarVDRAEIl6UyVwnEEuElfs/i2hvE4ayD/0LjgROXz4iQ2rUJxKoUxQXK4NsXVxRzP7xoQjaQS+0K2GqVAUr9Sh9oLoRq3gE9MClX2sRBJZBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737365754; c=relaxed/simple;
	bh=/bYKQJ3FK+OmCEaMCxvCJZIufG6T2HiiVethxMiO75w=;
	h=To:Subject:From:Message-Id:Date; b=Ztqgsn+hNvjVXae3VdiRaKiYKJc1qt00v3VLBSARAzXSOYniixYDCulll99X350zBRmtMFCFHiCOgJ3ri33m0m8NEmyj+FIWO+iLLRugQ3/BzNipfvnLor0i2DDhoo5ZJuUh079Ul7QSEirhUVf5WCuwL3sICNTAkhMvfITIiow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1d7m5xT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1d7m5xT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7815C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737365753;
	bh=/bYKQJ3FK+OmCEaMCxvCJZIufG6T2HiiVethxMiO75w=;
	h=To:Subject:From:Date:From;
	b=r1d7m5xTYFjK7iQuRxKE80+Ffe2Hf4b18E0kxkZB5OyBxGIDsOwamPyBek1WmG/Oa
	 FS878CkE0JnAyDiEA8aBLuQDPQsgEnvEG23GikhNGTbUdyU6glt6G+oqM1hYPFNdfI
	 xQnj2u1khSKfkf0vgL7bq3Qk+okZd4r7iZJd2T1VWDVNy7hhRJSH3gvPlPno/Ann6V
	 cWB5tRaWJDHrRXLn3I1b7LWdiqkdF+xtmp8rmdryTHK7rIBNqb3RGnoyrK3XBdPMIP
	 em5m2JO+Qmu6Dq7Y6NMqpOsizS8NFuGcU7MP6eJ4w4nplUr531cziddobe4xPOWvzB
	 fdvBlMFBQgwSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC0C02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736575359.25720.18178977944596204607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bc3ca7856e5fc75925d9007b6e6368dfa1be24f693c44cd7776d37d0989089
Date: Mon, 20 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737365753
