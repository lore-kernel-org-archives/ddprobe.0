Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817C2F7F12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790945434; cv=none; b=pULhAsBNNwJBh42VnYEfH0Z+h80S2vpUaWPGYRnTtZZU0oTxC2TZnoX2kTlMvbLMq/rYl3p55bLwb8RqdCqZnRy7t8uJ7EpuD5FJNd0pz8M+kPziyLsGa3Aq8aNSMtRkbEEo3aioh9InyBP88b5//NAtXIjKL887IsPHV4On4XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790945434; c=relaxed/simple;
	bh=f2PbH2SnkXhKE/STd6gYhgo+pWF8yYGsNUobEiFE1Bw=;
	h=To:Subject:From:Message-Id:Date; b=AcbqlJ6ucqb8Au4E+HjNf1EPQkjPo73E2af6b2GBGTYQMMpTfrJocXEKfgckhxHHCETnym/u3k5F8dFwu3S0maiuotLUOF6uXc4v+iILF0Dc3NFrJ6Yw28blPTVBl+9N+TbU0GqJ6mrcEBh9ExeLVuC+N3NO1ndkn6OhDZv1RAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdWp6h5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdWp6h5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE24BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790945433;
	bh=f2PbH2SnkXhKE/STd6gYhgo+pWF8yYGsNUobEiFE1Bw=;
	h=To:Subject:From:Date:From;
	b=BdWp6h5eBnXTMyX/bIQOCQrYE54uUpioIgs7KNdS6mlGwKfue3oiVvvW8o8T5VtSB
	 sDlS470A0FrxvB3+G9Cd7hevmqTzrAukHLNLUsNDEa/eZ0DP/KWC2Ecd2NnX00UDWR
	 IA/oTwkTp13vKFxKwAfZP/nXt/lYCFpDk6EP/muROaw2MNpuS+GSBgQ71K2eGDEiHL
	 B1ozI/q5DdXeaI4BU9WcYvCR0r0MCrGahIrSz2T5o2fG3Z285uv2IW5PH8ph66OC7A
	 TupSAuRLYf4BJJKhhWf+QU64uTOIX1Limmk08jT9bMpHxIvsIiNB8gWHweAUkW6sxk
	 TxcASjfg/tFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34DCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094543369.7918.10153422895057090726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97dbcaf557ef4e5bd87a4972ec3999eb9979b876e436d1881851674b6807090
Date: Fri, 02 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790945433
