Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D3618DB1E
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760893194; cv=none; b=GQ+IYrLMVwoKvCwQYHNWtvus51FgxWCpMYbVWQiaLW3XA08hRH5SgPXWORzUUcOnmTqekaOseq8fpwHx/eQtu7szLUKMlTGesCQ7jWfH8FcalkIvnslkuQkOKUDBS0YUZJWQ8RQFSZqnpLIuFInMeOz6cxgNukgD2vguuDNaesM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760893194; c=relaxed/simple;
	bh=47B7fOWyy8Cj5qk/ee/vQg0UnvgNz2H70BmjCMgphxk=;
	h=To:Subject:From:Message-Id:Date; b=WUpcc9w+1zX+kPHs6ng6rzxskS9taGlfCWQQWREnvQYAEuH/wHecGKyzx5z0sOK9Od5orUyk3xoxLfSjqiZyYPrN0GAU+kEir6Qtw+MZHzGS4dR7pjSoKTgdDoECFaW1yDonf423oOR04/Y5Ldd97C9WjSBl60dkqR09w3yTM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrQtWPXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrQtWPXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760893193;
	bh=47B7fOWyy8Cj5qk/ee/vQg0UnvgNz2H70BmjCMgphxk=;
	h=To:Subject:From:Date:From;
	b=FrQtWPXy0Ot5AR8x65+hocuGVrUlLtbg9ksy3W4rOcGL0ThciPUZDszaNTQDmMi+c
	 CbZyUcEM044NYsFDEb1dPUSAjtPgeB9uaIJKWCJ/33/O6AKSXwOwWNaQp1sFukd4hK
	 qiRp6PI8BmspsEPusQcKCUyouK/YHhzeC7QF2ujjZHsPzggR06yRRZFzZLdWrBy84l
	 x1eTldjL/nANxzLaF8AiOGm8qB7Huwr/UzbTl2XQFABLBMUk38TGnWK0f3qYZ7oZ0I
	 Pba3HuttCO8owHrHd3+1OzYxnEU+USlORe5frZIosaJ5lWQ+ox0s3finKk0WeQUv30
	 0sktLld7rS/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EBCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089319358.15681.17724149772700070627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb78d673a81a4f11ec8dce7f6ba191b6f893f105fb543ab7ce3c5a114347399c
Date: Sun, 19 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760893193
