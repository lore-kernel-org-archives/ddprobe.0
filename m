Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0955813DBBC
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727220954; cv=none; b=pnQN4c7J3CLt36pFV8q3yPkh4Hdx0h4uE5zoem1jIMRG/bcV63lamu9Gd3rg4eRt4NKS0I5dQ5mq46fTuroOefEX5d6k+2kECA9EsNsNn+Zh9N3MYQzDygpSewrUjm6DRgXy+BLOBOJopf2VywA6cxRU6FMf/8cNYOsjlNNjcbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727220954; c=relaxed/simple;
	bh=Ka0WGRxDxayhZPW735dcaVgTpobYNwyFQaYR1T8mECs=;
	h=To:Subject:From:Message-Id:Date; b=iPXm2c445w0ibfWyyd+J3UK0EsgYKXxT5pTVypl4ymewW4Q6ydqgIKY0EEVh/afhMskon4ZC4klnBsR++/Mol8uHgdFDRyVXXzDNAFXjic15ceSDBR1DkiSqCLpJkT3hlB+KME1gypBAo7khY8dS9gD8BdlzenR/aYKdHFEaxP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyXqdc4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyXqdc4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727220953;
	bh=Ka0WGRxDxayhZPW735dcaVgTpobYNwyFQaYR1T8mECs=;
	h=To:Subject:From:Date:From;
	b=eyXqdc4y8MZNfLUKmEnSR9uTdB2otWEbuf3M8xDoYZ4duHLxFsy6ICVL+Cp+fRV5o
	 0z+sq2BSLY8r00zw8IPSr9PvaRYqH/+ixd7KVHNroVa4jFEfDZYEwXIN25K33MBYyn
	 E7UJZTmCmgy2JRxVptnbtrVkXgIVutotTUyaRU+x4fJVHVgNfVLhIPv0mhrH+nZcNh
	 PlSk+wjI8qrt5qlpTj046Ut+Lg6D1M+RdE3CGPVQKJdEY4j5Mmc//4E1l5tt9nrnnE
	 WPcTxG3LZL5EKLZw7fgMUWJf8sD7a//fvwwfdx4Qr1vCRjA1ikehXAo/kzZIJR4RBQ
	 CkqI3KQTYrBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946DECF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722095360.25751.7139863746348703772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aee1bb6eb6dcc7646afbbc922b1a8f211cfec7df87461bdda632a944add0473
Date: Tue, 24 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727220953
