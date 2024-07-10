Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5B66F31C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720637843; cv=none; b=F8OWP1Opb6yGdD68s6c9NHyXKgmTMGy0NHqBXvJes3iax57I/h+Ww32O9aMInYJTp5GWPTyDOr77xGK10/JB+nr2LtjSyEKSikpt1m1btzW3Q58qizyGnYXC4271R7/0KvB9GYYwH9wpuZi56WPMM/GHgyHV4n8bxQ1tIJKkmzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720637843; c=relaxed/simple;
	bh=62HRNDsV2+aJu+EWtSTQXjFSseanEtfIJVgtPj0T+XI=;
	h=To:Subject:From:Message-Id:Date; b=gRkXGkdo+2hV5cbA4pjRLj+25t7qM9CTgbSswD8t6ib/buk/UavtcYXkuwSilg4BuM6+sFb/1wBU5rr0GlFAmXoXY5j49Qv5VLsR0gx2chziE+Wyb1lNHsbkESjCZ+aOn0bq1Q9P3ac4NDLiEoITOByqR+3O6zNphXdZaGr/FQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNfnwjDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNfnwjDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07BAC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720637842;
	bh=62HRNDsV2+aJu+EWtSTQXjFSseanEtfIJVgtPj0T+XI=;
	h=To:Subject:From:Date:From;
	b=SNfnwjDbapleSFtNQP1ZaKJWMiaJLEN6DwnvF1BbYohgPwUZqyjU9vsawPeNvtWTo
	 VKFNbrxCFQkEBxR9kWrt8Z5XTg8OZkpnt1zNr33eWTPFpkJesVdIBXTlQGONdAPsS9
	 tMiRNXzzkC0EA/Q61dNqVUq/wdx6rXwJ9Ayxrx/dhKCm7EvrazdKQ553Ix0KdT4iSu
	 xAFubevd3rZKz3l5PK5gZTdX/EtB2n6hykTsxF0gCfdRAWyUdEy22mtUIoDiHpfAN7
	 lIbZl2C+J/nOhqdUXzpQF1r1CK2HkDiQHYMyX7abtHPmiEfAhLP3s1X5UuAJMOPh8/
	 hmXW1NlmfJ4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFF1C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063784282.912.1522442132571297180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc72c4a1b3c241f1f1f6adba366af020bc7150777748245a35adedf6bbeea3c
Date: Wed, 10 Jul 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720637842
