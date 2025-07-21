Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232261D54FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753095594; cv=none; b=A5UqquVQs/sOqTYatOyzB2zg6EIwzPtZWBKhLLSgAxFiM8Od2bJijhXTatjxQBRzr257nR1TowhUnCjeuDKmXBzagv9T7buQcSF0iHE5WEfmOOrJ/saZxqU5+lAjmD7MQ1Ps3ZbuEfb66hOnPufuN3s/yxAyj+MDYYXneI0cZec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753095594; c=relaxed/simple;
	bh=G9Jd/VqEFgFkAs7sSvCDxkUdAqiKlssQtKotUzmylzU=;
	h=To:Subject:From:Message-Id:Date; b=gT4d/MsJuU+WxXsmLp9fT+V85zjB3uMp42j4+BeV/22eSaO0P7jjZnErXiOg8ljPfo+OXW4VRUXOvrpqFn1fy1LHarAODud1q0cE37TTFDN9M9bw4fmKaGRBNyFrWLKjdp21I+HsAKbEbFe4hLaJzxg3TddE4Tjfzw0sMst6gHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBiFy3qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBiFy3qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D618C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753095593;
	bh=G9Jd/VqEFgFkAs7sSvCDxkUdAqiKlssQtKotUzmylzU=;
	h=To:Subject:From:Date:From;
	b=iBiFy3qjkZ4GkUkMo6NUFpWEBgk/oQfm0SmpQ0+KMSGbclarODKk2AJLJY+gMQS3b
	 HuFivGQXziN0hYI8HhveKQJRNb1VCEGpuKPBbnrZUtBbin7m9r+qsR/9f02P0kpfVa
	 hlurbTy2h/0B1e4OmgSoVy47S3iePsCGitP0VWEDys0GzgoKVGM7kQMq93Kpj2REjY
	 FvhDOS8JaldmFdXjc/4cOIMIRu5uBKjQoOE0mjQhtQP8eMai4Dog1mgWEyn0oYVCUw
	 acuTjZ5O6VJynfwwQVXXaIpcqyc9Yqc9RfQW+Yg1gNEOAvD1JaiJEeiJ520CD5aQHu
	 pxU7hDu8q0oJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E819C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309559357.23606.9277963375852627972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759ec67829dfd986bda2db90b56c633eafbf65caf5e4f82b4751b22d238e7391
Date: Mon, 21 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753095593
