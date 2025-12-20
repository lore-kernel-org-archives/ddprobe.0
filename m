Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24877242D67
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766252034; cv=none; b=Iab3c6+GRRyxhRlSrnqSxuscwRTEwvRsrHluC9GjE8mM0qyf2PHd7lVCN3fKg4rANvbNqWtOfufW7kEKAy9wOcyQ7jv9kbt3sWeBJ3gG+qQJM+rQ7JbQcigZiU5x94f9so2E1v68o3UQOKlIkfFe1csKifZItDPaH3i+TIhntjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766252034; c=relaxed/simple;
	bh=q1+lN0dS1lZKpcg017b1Hzf78JKSAeUnSEjp5ccO+no=;
	h=To:Subject:From:Message-Id:Date; b=Ji6SDnZw/zuwk+wY52nW40XLHfDIDZGk6rm2jv/w+Pt39CvuF6KiUCQ6c9VXAimo1W9X1GbGPHG8JfHaHLDCkEaOX8NpXNKl6fYzq71CZvOIccTVfpgBncnP4pT3K7zkoAAmDAe7nMoudq+avya68b/j4cdbAl7DJibJ+BxnOds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi2Sidzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi2Sidzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766252033;
	bh=q1+lN0dS1lZKpcg017b1Hzf78JKSAeUnSEjp5ccO+no=;
	h=To:Subject:From:Date:From;
	b=fi2SidzbcG/xfoi1C43tj2AvtniR4xfKP2dGKgEjHl/64+okn4LfEMPuyxSd0WfmQ
	 sdey0ykug9rtPZjiIcXmMowYLKiIMDvp1HnRPv9Z5q26CKMuAFDc0ZmaiX0S3451tk
	 lUo4whdoPsfHN5wqTq3NtLuIpnuPcPydkpfLYoo0GtWtaCRC/shIFeHxwU0ruyOlot
	 s/Yy9lVr7e2WqSVtRDfemF7yrukbTIG/6g/pjcRIopm6P+woDjiVPv4LLWC6aOpE85
	 9XaqNSorjgE10Iqf8QVsFX4TLUdNM1giCciKLTi87xw+T4w8eP25N6TOV/lxUBcgIE
	 6LhDYwqAQGS/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E9E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625203358.11587.3065701937135572947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e519af6851e055454cc0af19f3e0dbcf8fd9c4373925dfa87e0c1b7b20c9e5d2
Date: Sat, 20 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766252033
