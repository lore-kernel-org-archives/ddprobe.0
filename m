Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD5E72602
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764344574; cv=none; b=isKIp6DydOd/wNIzwVsn3qwhTS77BOKdNj+8pIfl8AkEmQvkq/28zmR/lyHTRmxpYBYVM+o5aPiN4NI99PjNFiSDMEBXgxigHBcjNWN9LGYGb8A0pysbrtVG3Uke81hFPoqzwUjQpNEyss05RzsJSmBZXyyAVCf/bnPZKIQgvVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764344574; c=relaxed/simple;
	bh=y5mmauJsS3ng/xvD50KMahMbqUDcQpesDnlHzTk9G6k=;
	h=To:Subject:From:Message-Id:Date; b=FmmCIHDrwE1xuBl/UHQ+ol7yGnh/9hvsAhRGeoEA5vbEtoEMKmWNfRh0ERPv3aY3I74XL0E67qUqxz/DYcrgN23od0fyBMQ8Tec2+IdEX+jOpTEPNjhaRREzjBAAFRnkLzMvKiP1DcE2XUkUECEMNtPAFPkA1Fb/vMJZa3wD8Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvEDxUbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvEDxUbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD15C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764344573;
	bh=y5mmauJsS3ng/xvD50KMahMbqUDcQpesDnlHzTk9G6k=;
	h=To:Subject:From:Date:From;
	b=MvEDxUborfU4HW8UoyXm7BNrreFYW8uYweBMKScvhxGk+FSeeg1LcfToNxV6QCj2l
	 CbdN9FbqmhESSfVqTC+1l+HzDeYOYqsASZT4p35G7Z8lqWhIohNVHI/s4Hw1CjjaXm
	 kq7V7x0xWvut9N3TR+ZRnQdSkSKb8+f8LQ5e4WZcErZCHaqt5yR05RrWwVBAAd0fc3
	 MDb0ft4O3hyLbah824Qb5dE0oH/6AjPB2Oeo0SNOHed4E2gQSSythJgvU4jMA4bhFo
	 TPrqT09h2KzYN37ALPLps9n7aA55aD27oaqiPXfEKADuJtkK9r3FOWISjXizW6EXJ3
	 n8NJPLJ9JNv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E70ACFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434457360.12162.10354794082890132769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96f7fa2525b0f3eb5b5869f3b24cafa5135ca0a725f61ae5b1a7e275bed5709
Date: Fri, 28 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764344573
