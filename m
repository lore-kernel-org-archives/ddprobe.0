Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457F01649BE
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716966863; cv=none; b=n90iYlTKJFW05FAF1o1OIZ/ne5ZbLdjpScptPTc4yH6S4unYLIJnFw/3a9SlTcOsFE9X3DW3hhyc7Nvw0cbPkF7fSyv3ZTZSSOmvttIfme1RW/m9otkIlD4nFm9G0sYW01ycFSUZ8KTaThp/ZsPbTM0JS30199/JsqMKjq91wMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716966863; c=relaxed/simple;
	bh=B6afGyhwy7fbHPRTLCdxp/I/zTEdmQjNE1z/WdNcbbA=;
	h=To:Subject:From:Message-Id:Date; b=fGowhsW2XqFDM1g1jtFHQGAywVS6S/IofVzhEVtlnzGq1KqkODLVBRI2zLXfoeKo3n/2L4SmBy3jZYD3nP3pmt8GAvqVAUz+5Xz3hE272TpG7cgsd7IqZURG1Cl93dRcj84LNbop50yrpEDiQ403QorQTQl9iwmCblcqPAZAh38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFcBBCYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFcBBCYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC14BC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716966862;
	bh=B6afGyhwy7fbHPRTLCdxp/I/zTEdmQjNE1z/WdNcbbA=;
	h=To:Subject:From:Date:From;
	b=aFcBBCYVBbHkkrlwzpLo0wpL1+7oUHo3UUp37FMYFHVv5jP1/Ck4N7ESrbZEXFB65
	 13dpiMJkFwtEqRqGfepCwR9bvSJlIXfQlzMwwzJVJm5Q0HZy2aiuzTEOII3lOFOBfH
	 UQwWoKYSso/1tXTGyrxAQd0vh7hIA7wWc1RhcMMXUmD4B9teHcatchSNNQ2YsOdKR1
	 8w3UQwkWnnMhgOfzk6OOf0MDv4IXRWl3cDD1DYisKDG96J9rdsE0oXaHG7LwSvWQ1X
	 8y7jVbkohVP5fQGwxixQyGg8jYUF8x8Wl6jgNTXSA32WNnekYBZoglorwK6d4rpQno
	 8TfDrPQTMzzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC373C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696686276.11631.11377893763346877074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30828902d021bd39e940b4e4bffaab8d11cc436876b96a6b0b5bfaac76c109b
Date: Wed, 29 May 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716966862
