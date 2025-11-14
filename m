Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F313009F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763120994; cv=none; b=clcqAyn0NVEV1XNNWlQSsFZlvMm145vkQDtbFVMdXvOmJ9soSihegCJBBibFiRzjGuzfhrayi6IG89x3lFGAYP/Ee9xcjoRkP+6qwYA1ql8rrw9yeGvsaPP727c06fnjBvtV/USPdrlU7Xc7jQFoQFy1Iv/S+El4EQl5ffqyR/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763120994; c=relaxed/simple;
	bh=/5TKTH6g36U7zaSkxaxwYk2YX5GzXq4mvlOZOP9Bm04=;
	h=To:Subject:From:Message-Id:Date; b=tBQKJwoRjBdrWEkYQuxrXHeNS8ipsYEI0XIMRjandSUx/mC5CMEUH8Me0jH7907CrXUlsH4IZ+T6IPRomos638izfaUgBicnUaMQqYnc/ToP4iKTT1OKxHL4PRtHpm7mL3jIrhOiHcFJljLV2Zb0GwUfQr6+UVRKuvs7WQ0NGtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN5UM8Aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN5UM8Aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C114C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763120993;
	bh=/5TKTH6g36U7zaSkxaxwYk2YX5GzXq4mvlOZOP9Bm04=;
	h=To:Subject:From:Date:From;
	b=mN5UM8Aw+VAbt4XBS+t63bw5K/sg6jyGUV8wljKrSCcRLAJeDHA4qfmpxuQxYVP1B
	 dUh/UZWel8CpfwyUjdyGCatyoyttNjfK0vFTzwzSP8z/8RN5csHUfuRn+uPIXl5fNy
	 i97fa6Dd53sx4XijTG+HBqM+pqSVAhKWUlzlT0yTYaV+mfdVosOgB/pqHbsirtr7V7
	 J/Si75/f6XU1wrTk7xSLlo+nxwfD+CF1IX65BVxsr7eMmD3H7iAZacSZXnJaQL5pM+
	 0Vbk8w/gtPEYV/PURVWKLRyAVBFEPu/G+86OAsRToj52gJVu1m2ygY0nBm+rvkcmoV
	 DEf8LcnIqnbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F678CE7AEE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312099358.17053.17783285159181135441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232f091d54de8b1208dc8865c1a2fffa863cc84e97cbbbe46ea78e33e3b16964
Date: Fri, 14 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763120993
