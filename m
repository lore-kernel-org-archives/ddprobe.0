Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD3018EFC1
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728662154; cv=none; b=keMAOgJNvXnKOnxSqyp+8I36xlB6bLbxNVcg8DK4fMsTzxosl7cE7F24pmCkTD1Jr5lHuh7yKa4aF5oQywM/51IKfsHoL8u5zBFJylNHwKY8vi9EeHyUCgBpd0TZ67C6veXt/AKfBFMUf88mdg7aWcIvaU6ar3u5Vo93ZjZ8dU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728662154; c=relaxed/simple;
	bh=xz0KZGT+32xX3d3k2J8Tt+XCbgBuo7xWE7hMbKms7lA=;
	h=To:Subject:From:Message-Id:Date; b=bBY1/qaZpP5+cWKd9pSl5RcGi+FKgt12V0J+crJX16sTH6yfmce8r+usHLFpdswr+soEC68i0FIDyerMXfA3Si7YEtGl5yKvR6K5oNRc5x2K3tj4eL4eTAuY9KmNcgYg0/WqKu5IEtqcXbyyOfJidpYPzEwBh/99UrRqFyOBoPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asr0MQx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asr0MQx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728662153;
	bh=xz0KZGT+32xX3d3k2J8Tt+XCbgBuo7xWE7hMbKms7lA=;
	h=To:Subject:From:Date:From;
	b=Asr0MQx3lgNbJGbt3F3qlsxZyKSEdQqchfO8/2rbWlc8z+BsFV/IffMywCDQwRhtK
	 yzMXUMZM1WTUocaDoi7k+Awt22R/2ETeQo+Z2AE+tFlLw3KC5ZTDnsodvdIhSiFOiS
	 vz8k1DPvpq2slG18F1xiZ8KuL14fP6Ijfs2O+SAZKEeTl3rtbT8SVdUrYKnvKHKiJQ
	 3Mt0OKaiDhIvS2a4NoOHk6pMIrxf/qp6DLpateJpXmiaa5KhwzbegdgYLECnDReQRS
	 E/fTYUvBBHX7B31sNYj0iMOyJ5Wt8UBOXmRyDF6CQUFjWGPXSve0Wp6USrbYfgeht4
	 1ULNQIXHFvM7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF3D0EE12
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866215361.11116.17735375508456697294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96543559d8691866a74594b8b9eef5a7d629e98b17902cc687b266b2dc6583fc
Date: Fri, 11 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728662153
