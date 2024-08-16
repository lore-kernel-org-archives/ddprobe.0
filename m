Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C4218D64B
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723803954; cv=none; b=EECO8EghHu1abiZq7lk9R5808tvJJ68RU87KXDUVGlkWZMnISLH8u+91W9EzgUnmJ5V7bmYSv+jw43nupTSx1IEZfBURV5lJZfRySULB9iwkhEbaNXrOatB761JKKSayQXbPlSH61M9J1Lx5VuBuHQejipxsrwkfziTUCNsLF08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723803954; c=relaxed/simple;
	bh=A2Nr29PNTzSGxZWz2c0MI86u1z77LBiaTR58tdjUjDs=;
	h=To:Subject:From:Message-Id:Date; b=udK2XgxgXVTudtHw7r6c6FfnYgeyytpAwUtJ7sKqpM+H4KiCrxRTUnqndxODP4z/NrteYhVt2Qs6IFbLF4yuZT8gojJ1npSZYTcc1Zd56KJpNiIiUhLonVqV6XS0zipBwnH/dQrV3u3EhvF17ttmAIZznkmZFky+o2he+qQEiQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gsww7iaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gsww7iaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF21AC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723803953;
	bh=A2Nr29PNTzSGxZWz2c0MI86u1z77LBiaTR58tdjUjDs=;
	h=To:Subject:From:Date:From;
	b=Gsww7iaEhoQGWpCvmQSLXv6qGefE0iQVZQaDrAj18edau07GiNba9mLRua43r6hhQ
	 IUQPv8r+wuvs8C0c+yY92chnpv8fQFy7FVHTdUVF+AS8ax1pl5zxLCBxI68jnF4Nfy
	 8lcLGqpXbuoj10U6shT42MgHwvhTqpQKuO6VFQmXc7GQUVJRH36bq1/VMIq+l+sm3D
	 YJU4r9P6Ru2D86dwC93+qZKGKwLGytNsZQcFpMBOwtH63cuYNKtOmn+5mWWBuQF01i
	 lKwhIip4/bbxHCGMJxtAczeK9/Cmde3Ncvzd5N4Yu2oIrFkmGctJUQFGcnm2b4Hb+2
	 CQ1o/DeifIAsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D31C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380395361.24748.13422157012386450335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49987c1989aea788945a1035724019a5aa6a8a8a7f63bd722f8194452cd5dd0
Date: Fri, 16 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723803953
