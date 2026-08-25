Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248353B8921
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787639434; cv=none; b=t/5sdZKfpIqWJsHTg8uLlwH2SOtNTvJK6ySVwOJZsazY6Hj6xL97DtRI+jzYo4qX4hOwNVU6SpkypRhFJQHi0I/6NaD1orQqAIzHVCzZDVUMOAPkyaN+pZY5BsjPxgofbqLpAh//k3WOPT4ZgbZI+2SvYGxQRzqXAgykSk6dTSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787639434; c=relaxed/simple;
	bh=XuoJLzM70rX6leuHG7UGjoYI63T+QfZGcPDAmi0CGU0=;
	h=To:Subject:From:Message-Id:Date; b=US0av1gpq1FLK9+u4fNnN8i/Y67n2JKubn2pHD8J9moq4T9jrJKbhzQgDTmAunlO3ogDkvs0/J7k5fnh7JswMCRg7fmNURSqh9IC166wwgEUWUBtg7H5gQH5hQJpp6p75hlR37/v8g7BLBOlbWrpukH6IvuCCwqxqI2KjHKf180=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6NbC6oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6NbC6oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E9AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787639433;
	bh=XuoJLzM70rX6leuHG7UGjoYI63T+QfZGcPDAmi0CGU0=;
	h=To:Subject:From:Date:From;
	b=S6NbC6ozLxbeNnHNc0hCV6bVfICU2vy3ShbPPwAZ5PC8lyEXx+a+4vagqgPP84yHF
	 tjxZGNV4OJUKVs/aeyWCvme50wavz5I/pLCAIpJoQmdHlekccrHl9EzXH3v6QOa4Fd
	 ITVHlpcPBGEQQdSRoc/eyNUNOUj7SKqdQ23b/s3xMJJvIfAeIKqWXWlYrzW6E1Z/q9
	 YLu9AWYswB6D7Bt7s/zWRFBK8LO+ZF/lCJhSB8glaCjpb/crBaUNtk4OaCWj1TJfCS
	 cSfQv23hhdl0FvR5vZZCCMlSkv2x571Ir2barO758UJOjc6hY9RqrVuxI7nNcRi1Kd
	 9XQIIcmVC7sjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA166C61CE3
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763943368.25498.12081002072189069759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90886d776f4cf688ca4b332ddda6ca00ffabcfeff7fc021389549379dc799592
Date: Tue, 25 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787639433
