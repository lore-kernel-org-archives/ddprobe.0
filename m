Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F6EBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714101143; cv=none; b=PN03W3CJIbkXUOTql2MVhOmmE9P3q7Gocn9su2QsyhiJ5WgflYjW5r8rWoUggXSsbIxJYXKW10DQsORJ3r6Tb71sQGefnh8Z4+vTcHVw5vlMdkGq6j1WMWpLM/S7OZrcmiv7LBhpSypVfnJfyFe5yF7AdqlTJw7b0vti4Bp7pYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714101143; c=relaxed/simple;
	bh=ZRwbFiWvGnxN4ZHEc5P0GfTDiCCNSynVpUG4VzayjGQ=;
	h=To:Subject:From:Message-Id:Date; b=a6Cnl87Uh6so3UHONhWSz/FXBTg6a4QrtoH0xxkq3+i0fMb5D9VEKbB0Gp/VVsiX34CP+Y1sogJ76VS6Kuk+jowOwJC43ys358ibT/zfyaqaGvFptZXO9DUYJvcoKCfkRXSUAuBsCuVu3w/yl3KD4ab6EDsF08i6twOfsnVvzY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbovKXBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbovKXBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9E7C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714101142;
	bh=ZRwbFiWvGnxN4ZHEc5P0GfTDiCCNSynVpUG4VzayjGQ=;
	h=To:Subject:From:Date:From;
	b=DbovKXBDuXr37b82undnzf77A14ymzXJp7DVpk2YDpzPz2WrRMngMIZm8wAMra6vV
	 slGmhcz+24Ss6c4yrHRXDM3+zTODVhG7bqXmv7bQb++vo8eeyziDVW/VzwnBwpLW3U
	 pfIn39Qpc8NZotl23YKx7pw2qJc61aoJo+2o/DY2N6EvUSL+nVXVUQUqfq/QVXE5Qf
	 lPq+fPg8wW0AJH00/3JRiExAFi3lkIcOE80/jkKLVbRuFtuEU6ZlchyUOCu7U+yJ5Q
	 5vp3YOIF1q+fX6z/cAm1CARGvq8ZBN9MmATUQD0AdZ9jhUeboqaIMOmQIrqZ18bGS5
	 5HB0LZLAhqJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB448C10F15
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410114275.3225.4736633213566237519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2656f2053666be483d0c74971f62f1291d47d00a992b54a5605a6be50618383
Date: Fri, 26 Apr 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714101142
