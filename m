Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D8E4657CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782834514; cv=none; b=X6PAvu1BQ+6XyxErx8/gJV203NpsaRQ1n6gej+H2imX5fbpOOL10QzjFfNQbk3oAGzoRQn8SAWKKlA/6iOekCpt9EqmfeWPAzN7JFArDF0cae8nZkOAWkuvnllhDkLEFlr2TqIf/BZW/curbZ5uM5zvxstah/R8Jg/e+Por7xmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782834514; c=relaxed/simple;
	bh=KUn0a6jbO2mwIVJ1/MIsAydVJuf3B62wx80DDzW0H1w=;
	h=To:Subject:From:Message-Id:Date; b=c7gSXQotShA476qRV52/61Ev+p1q+jCb5o2ghkvGGwnBrBACckcVyyXcSdv4A4Jp9/77FG+f+amhvuJyPkonop5DJ7mqcEdo5XL28drhavJ8piVI8T8IwcEZkhxwMURJ8vSmEe56f0sBOqkMcptwvALvcwTjxaw1y6MBEqPE00U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa6N9bW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa6N9bW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FCAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782834513;
	bh=KUn0a6jbO2mwIVJ1/MIsAydVJuf3B62wx80DDzW0H1w=;
	h=To:Subject:From:Date:From;
	b=Fa6N9bW8EMwIW4P01oYTNuP4SSHruisjSQTNsfcXLgh+x1XGqbNeIRlKXsYLhih5F
	 UCsc3lWSzav/kdMMgfWEaeZgNvKSqLN5mkArS2PQLAliz1wN5EDiUg/H+3Sdabfpcd
	 Tlr9rI/VnwuTvpsmM/ZaLSj4B1yVFeeN8hTiHr9rZUtxSUY4c4uKxkgJxLuAHZINW3
	 mPhw6WrbcPR7xjKnM1o4U/zuhzECd5fSQOFyiwuQMCY7TapgtjevOB3OEy1U466JEU
	 /84wL1sehZhjcts7l7X/bELjrlwNNsmCFrcQ+03HO/7N8Q8BsB3YDGLmAZ90y+e54x
	 Krp6jsSYBQOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC35C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283451369.19691.11574380486146016143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6dddb9522968cd9159d82d465f1e51fe53be45c0c271ed2a515c93d5cc2f7e
Date: Tue, 30 Jun 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782834513
