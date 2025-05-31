Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC53239E77
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748698194; cv=none; b=E+jQKHJTUtvk93RhI1AJTK55cjIOEj+55pfC4RWRKUP2INKL/J+GUGmtvybywXEy1yP8RPX0uEaiuCOms57JbF+Wx3qb0H3qlQ6ebGsj4r0Ix3B0lp2CSb9WanPl+4uJ5NI1JHVAsNo676tq4OWdZ+s6Bb5xVn0m7+xQiKmIWXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748698194; c=relaxed/simple;
	bh=XAcc0Xg/rxMvqWfng4jltOz+rL6+3/Ja9m9vfRLSWKc=;
	h=To:Subject:From:Message-Id:Date; b=ieA1I4KAzqKmJ2l0765o1fgfd1/VSMmkCuxvbxyLbk6ug2dc+m6i4ESQ1JkZ91EmyZ/widnHU56PSTzzc4Rx0NRcbwYG5iwOiAfAHaT+ohCVyRhbx3rnzjaRRwGW8Oh/41+XAQrY6sIIwMS9Z7ZS7Kf++DteFvBp/MP49ixZ/y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPsFZy9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPsFZy9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748698193;
	bh=XAcc0Xg/rxMvqWfng4jltOz+rL6+3/Ja9m9vfRLSWKc=;
	h=To:Subject:From:Date:From;
	b=nPsFZy9ruWAS5GY272usNXMUiroTspTwzYxEI6ZdsiaCTUZUfN/T7mu6SRWpN1YQw
	 2yJcfGt0EkuHzg18d4QlaSIpBiAXS76lcwYPGw9i+04hjLYXvJ74QvMLtvluDKPvWc
	 PV0e6vb4zJOu48GNTqROs0qnTdSVtfUqw5xB4LQFZ+sPIqXrBoyrMrFMlz+xslQPjB
	 Ep6UKtzUyy6q05G/CEhsAyeANfE7CbiumsS7R3gTsHtHHWxeO0Sv/h0wY7yDO5drIc
	 Vme2zaiClfINmshDrXvZ00lvndKW0wMdUq4csGpb0B00rEA/w8QS69jThRdi4zgt/0
	 rrm8fJY1yJWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B1C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869819357.528.17571061102852762311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e7f70af350e44676c207c0105fa558ea5c52d3e6f01df8038ae729b62dec36
Date: Sat, 31 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748698193
