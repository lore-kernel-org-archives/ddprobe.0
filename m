Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3075E238140
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747822795; cv=none; b=NkIjins4DgkDQFkerb4ywL2r96nSJ0a1Wqrt5yTliQA3kkZ8uFzRP2GDYXYDDSsIcGVFjK7+MsquAAw0e/RzYrt5t/HfrNwopxYSJWvA4bzZvmBskWSZcqpTtJr4XIEajzWG33s7sCMsv/+So36YPmS0lE+/b2S8wYvwXJQP4NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747822795; c=relaxed/simple;
	bh=Kza3y6ss9Jfkh4buFwWl5sc604kUTrtS+Md4/rFSHI4=;
	h=To:Subject:From:Message-Id:Date; b=d0w34UAFWxA/NasPdpKAvercTG9lPjhpMWfBGeBYGVDhpfd2s2oMmq9eAZGlSwKtaxjh9yMvW/j10G5jjyH+QSAScvILzyohsbDALDlBW9chmH+00T5NRjf8hGY6e2WWsvaywux/UXYGZt0m8+myT0sYaHHyKXn0UdVhaMs4hdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtbIKEsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtbIKEsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BAC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747822793;
	bh=Kza3y6ss9Jfkh4buFwWl5sc604kUTrtS+Md4/rFSHI4=;
	h=To:Subject:From:Date:From;
	b=KtbIKEsSXWw36lSQEhhsaZUzY9xQZRpYAQzDGP9LywbsEhecpVLin4p4ylpqgwpR9
	 qvU1bSOKftlTMKWUJKiEKN/dTOKPvMRH97RkCzW5CjTFjNzb4ERhJt9rcQDBpEWkh/
	 ZXGjj49zMlDAIu5inYPOEIZPEXYN7Xc8GHN/i6IxseKbKWZw09nyOceB5kpjrlrZPJ
	 frkPSNP2kgrVwvZ1HfNFwb6YSJaZljUpTCSRGvkSTsyrC9LeNHFnI6zIRSI4WI4WAN
	 d+zSmZ9XlC2jomyVG13KHTM9U6gJF4BcHSViqw5FlLlqS7ILghuNql8nx8OqJjkQeC
	 iO0fcLeQ+V7tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F900C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782279357.10082.17191821662820026800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c62ee10c98f3b7eee2c339c8f4d10e7f50e6ba4c594b6d25c22e7321f7e3a1f
Date: Wed, 21 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747822793
