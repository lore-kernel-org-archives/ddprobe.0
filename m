Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F39379C46
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782125794; cv=none; b=nns30+GWa5uvjI/Us2PSutZR49YTh2uOgftfJsVxhvyxcMckYvTysr5Sstidi6t8w2LnsHRhB9QQ7FgmV5HFla5xXJ+9ktA3uR/svYnZbmV4GKxdCAg+G1ge28MUuq9pIYM4GvO8jppjo2NLrrTUJf5crADam1zuymbq+YdOavs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782125794; c=relaxed/simple;
	bh=AxQ9mbeopyL8nLPz9LaRQMuf4puSS0aBTjBntsySP1s=;
	h=To:Subject:From:Message-Id:Date; b=bnNTYtQd1m71W+CntecVa4ranD25KALdNqggERuEciNIOqUy+UXG0Tagbca4N9979wfQ72wxuPMeu13Q7w2f8o8t6qdRXg9a9GxvY5D2ygPYuOfoeB+Ps9Jm31wmtRgoLV7DU9Xi/RvPU84+exXwLf/HrwrE9ezYlKTEkw9LEKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5X6uNNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5X6uNNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21185C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782125794;
	bh=AxQ9mbeopyL8nLPz9LaRQMuf4puSS0aBTjBntsySP1s=;
	h=To:Subject:From:Date:From;
	b=s5X6uNNBOJUYMwy3Pj6RIfcHcfIAKPpTkTst9Jt5wU00qe6wZ+YGzzMVPpg3Dq3uU
	 0J+nF9S8RfY6c30pMSllMn4YDKPGlqosMpquTpH0TOQGfodxREanbHJmzlDVY6zYBW
	 8thdjxBB28WFivqPRrDNHo8dO4G3wWHQlv6DpaJBOB1aw4LeR0yIdwfSzMerYy3g4r
	 PWJeAeBFUQkc8nnWjYcoycd1ON04vzaVLoSxgjl6w8fbGsS3Eew7jzxzLUzkLCx1ra
	 +1+7lcX0MKLIMa/SNPjUROEJ0xB+2iDd8twR2HugbdxpYoQvIzLgNPQqCpAfweJ8V2
	 4qSXvyN7RMgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF41FCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212579389.29370.11529030769782294453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6df8f7e3c6c4df9a18b9c8a3a65adfbcdd278e6bfb1d90bc277c99e63f008f
Date: Mon, 22 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782125793
