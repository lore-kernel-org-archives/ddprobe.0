Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E76208AD
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747937994; cv=none; b=N8dTLrskSYCjon4h3WAO+ko71d+jJAK6CTJRKS9U0N4JQAWcKlvd0QfaixzVNZ55MKbrB+bMWSe52pF1pW3Jis4jMslaYGXwB6UlfiEwUwFUHIzbMiynKHVmYaA/+M2468kDoSeUCGfeQ8TSYe+kJI3uYLedkodQZ995RPNHPNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747937994; c=relaxed/simple;
	bh=nnaudr4/imxjDC7DAL9AP4FiyVLIlTvqY9hEGnmk4S8=;
	h=To:Subject:From:Message-Id:Date; b=tYPmpkmYp4U5A1EfTk4SoPiMb5VxyoiKP7NyW8H3yboneNzqFnKE7vXmFisIn+zzs4HXkzMT0NcJ0Mo8kfQAGCHG11mmJ7ZbwT0TwMaNcWAINgg61EbfDEBqLa7LlZj1VTonc79/2vmBOBtG3qjLTwL4VMWG/7zC6jH+ihH1ynQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dba4hqIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dba4hqIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE9C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747937993;
	bh=nnaudr4/imxjDC7DAL9AP4FiyVLIlTvqY9hEGnmk4S8=;
	h=To:Subject:From:Date:From;
	b=Dba4hqIEyxEE5FQIybWqqp3nDqsSC5/GHnC9QsYLxNEVymCVBLVRgmUHEylNi5Zwc
	 f6BfV+Cd6IC+2L9eQ+6BBiZXE7nvF67c9jRuRMaPpSaq2s2dSB1vQEuKPOIxxYI24Q
	 WsFSsFVzEaVXZ7tq7yksIQD6CpT5i0BgEyepPYgluzl1Pj2kqif++zC2lUTk5V7bZ6
	 r8btn3EAwbT6JmW7uiS/lvbZorGmtIZbqFU1/HvGQYz9yWEJOfi/0ytvKg3DrdfPhx
	 Ztvr3Vf3t+UP/XO5GrW0MTWX5RlwhUSKciGD0fBjn9X2QqwOyjlMIhmZssq9Mwr4px
	 xPQBkadOB88RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A0C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793799357.27247.16200220626901247044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5476e5e786587c82ffbac6d9cb884c5f6038a2088336968a9f7bb5d88ad7a7
Date: Thu, 22 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747937993
