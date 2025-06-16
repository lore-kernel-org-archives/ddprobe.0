Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288BC34545
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750115995; cv=none; b=kWevP6OFM5DWEhbc+tNKHV22sXaC+EtckSDvWWp1XX4TdtQBSTVPpb4k1C0CgtofN6+zIChUFz0Azf7tNNvxMa5v49KWrGuQlNFzDaYTDmcwbMSi39iK4gcWbfzUShoi2Cw+JwXKcrXb3rH4/eCNB1R3vLzZmOO+Efgo84NMwsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750115995; c=relaxed/simple;
	bh=8QAXn99UAqRJ+PYZsEjbojcahiosDMtLn1GULhWUdRc=;
	h=To:Subject:From:Message-Id:Date; b=H713tWGMoLA2ABiribik/p4LaZvHishzLzCzdeVkUFMEeSIxJzwVjqWHZH+jXPR8HSmGGK/tHUxujSKKR0DKLBOkbqZTEecHUEbkTj9Y0JNfQdQXC6GTa+5iSJ6yYXCKkxTUScIhNbWgfCSYbYW9w4iVvfc54LWDd7jkXhCK4mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCv2KAZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCv2KAZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE7C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750115993;
	bh=8QAXn99UAqRJ+PYZsEjbojcahiosDMtLn1GULhWUdRc=;
	h=To:Subject:From:Date:From;
	b=tCv2KAZBqN0Xd/bdumfmPkNENq/TJTpPG9WIoWvQ6zoea0lTq2ToSvdKQwwheN5mt
	 zdHtiHTbRkXoBNA5U19PjLdqkNgREdF3dW+Qa1T8JcJgFZ3nVUyRZgOJ/HV4vGmo1w
	 Ta3NA7JpBKl/SH9xCLbzGIxqMr1DRzoTjsinUiORs+BzMM3InJAyxYW9vp9whJPlL1
	 Qnea40K8UWxhrXMHAMEWHcxMXdsghs2NNAQ168FwMI4EIXfhMgS7+rBiGmuTDTnGsX
	 6+RCcTvQINNf9b9F08DNSrTVFrrPCb42smSyQDoRnUkX4L+7kYDwvqWr6+JdiYuD9x
	 BAauS1vsI+u8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D3C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011599361.4896.9916116680811803737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f70433a571aca0c7d991d88f37472641047e8334749636882e7d8afddff2784
Date: Mon, 16 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750115993
