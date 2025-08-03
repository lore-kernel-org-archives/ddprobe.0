Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469902747B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754263794; cv=none; b=B2RhtXqpTRsiSEN4y9nRBs5oonKFoQV1zD84odMyE/kQIsAHPPfhMShOZzfW9gDC7UxkorCfRQb/Z7tsqXwQOR+Y0vWT8vzeVW2Tdy/GQkaGVTYqmXV/JREbtxxDK2mJlgYMsmT6MWAnstfFklo+V7HzyRniphtnb7FbG8gzWJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754263794; c=relaxed/simple;
	bh=t4CMMs2cfByTAAuIXJFqQhoTT7Sk1xUvP1+dPy1yuuM=;
	h=To:Subject:From:Message-Id:Date; b=nMYxGbsdyvBHFYlvpNlwqATJt83CbXaGqhk6lJYdfeBQcu+cWCbTF1VWz3ZxRmSqZoD1btdYlp/qksXqSORQtTN3yZxEyl76kLZ6ER2cL+/tuJM/wrSbMlKBW3rp3P6sWDkjkIt72RR5QxhYB+hG/w6a+fRy/05KXMziBgyATRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTsyyftF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTsyyftF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5178C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754263793;
	bh=t4CMMs2cfByTAAuIXJFqQhoTT7Sk1xUvP1+dPy1yuuM=;
	h=To:Subject:From:Date:From;
	b=dTsyyftFlLOARVwqctjVD6JYhd/v9GYYOY3pqiruugtouF8DZFYGV4zaoKqesCU06
	 6/Q/9Ll+kgViCVaivPuHEcNgwLljSzXT9ULna7oSdHA9D0WyDTweGbT7hSeJ53rjYV
	 XXdzWwAw8GwmVXVGfrJfC/LZNFJgSDCQLP7649uWXvTi+UGDCyz4GNd/PYOfuMGb7k
	 IHhlZBEpjhDrLTtTJBbbtoLyjwPdPJkC0/4dz2Qg4DHosCXHSoh35uo/gscrhREDcj
	 qULFsFrD1AMk+aEtl0TaV1BDmQB6t3+u4QuExCc0U8GJaYI26vD3Vcbu11W4XOzwZ4
	 dQBOt796vob1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDEEC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426379360.1627.5743475880708424079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8bbb866aa720c4496901c4f791550845684a004f4317f047389db36484e671
Date: Sun, 03 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754263793
