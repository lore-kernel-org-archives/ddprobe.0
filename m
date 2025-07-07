Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E067D517
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751846994; cv=none; b=rBWaxf71KMyHFpVUdxCWBQCNuTBm2VzLgaSjAq1n9wRRX0fpA0UuK0TyREGFolv0iUDxh20SIpn32dSwO1Grzp8AWaCrpI8Y+urgdR48Pyx98LSByNrzpsdZD8sqPjuAZjXTHqMmSq3tQrztuvuJtbkhmdIjFiAmooQHLTIQnpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751846994; c=relaxed/simple;
	bh=Fe6imBQZpMbVLt99DgOgOD2c3DPIkMZMGgk8XpDh5wg=;
	h=To:Subject:From:Message-Id:Date; b=lHdUu/8giuO0wJ72voAu3pXaMcHgxL/1f/1Eja3JtlWfTX2HH+sEuyh4IGGFGlDK21k2Ho9GM+SqMCIZ/KLRRO3ZFYAmYNljlsYhHlFSOKvIwfPgj09uR56SczD/NztYliWpHzLQfn/mskOtjv5wn2WaFNo0HnbmYqSRCw+7M6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4ETV5SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4ETV5SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518BC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751846993;
	bh=Fe6imBQZpMbVLt99DgOgOD2c3DPIkMZMGgk8XpDh5wg=;
	h=To:Subject:From:Date:From;
	b=C4ETV5SYdmwLOXUTyGa0gYg5YkaqDD9z38blp1nKYMYXbRU+juKDVdbqlhn20v5hg
	 BIkIV6S7wjxOnMbyPgQSxaVEAeh6DQI6IPJxpi29VXNqtPdbCzYWUDP5EfXzYHpECt
	 exmCRrZEeW5buVtYV2963IkH4QVpgn3wQ+GRxCYF00yzmEGclU/AGDikjhHZuCf4i+
	 PjFo0YhClj1Oor7SCbIh2LShPJ3Ny5Jgd3evsj4c7BFIJL1l4DSOB9nF+nQK7WHwlJ
	 +kd8H1xpF/YZ7i33xBigOMW8hxHzgcqZYST1cyrj5ZL0yvOiePjoDqRRFPeo4Q31DB
	 OKYoxBHKyLvGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E6C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184699357.6561.7916022755578394942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff5a3ab218686a61c5297826bfd849d303f06f64f865708d405b6b415d3a813
Date: Mon, 07 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751846993
