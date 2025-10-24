Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E7A2EF677
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761349194; cv=none; b=BeOzqRbrkW7sRFIjMZLd2hf2VoMSmgoBiXVmZl37ho1/FWKoufmL7ELU4lDPYj8UhEFnM9tJkTVJ+WucYjeQmtt5vV+QAoiotWP22XoCwsAzgop/LwtoGz2VLUhGCG7emrByoPV8TkU2LuFL4Q3+3j+hsBLAQ0ykXZ6Je7pFreE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761349194; c=relaxed/simple;
	bh=CBtpNHJlE/m9r1WveETfBPHX2jzIJ2bs7LxmsnQelHM=;
	h=To:Subject:From:Message-Id:Date; b=o7YnlhcQ+rx1eQuUMJxlO1ww76YurpBokzVg0qIPe9Zg5sWNZ6upqPwvHWxvbzOk33gZ1T4VIKCQeVgk431xy5qgNSyWHqXG0ip9g4+fVGktdt5ni9WmYwXo+fc+2BbQD6b/ErbwWL7fKvGRYii5/IwVzGb07I1B7lO+uB9CQ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPU91H1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPU91H1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761349193;
	bh=CBtpNHJlE/m9r1WveETfBPHX2jzIJ2bs7LxmsnQelHM=;
	h=To:Subject:From:Date:From;
	b=qPU91H1kknVby5iqwA2NqobtlQeBDUjX7KFCtjm8t6+gtToWerwll5lMqflX1deJx
	 3HxQ0oizBvghJ5aMQM3YWKhyvh6xX+khMWAD3hDcFRQtmikrKcg5Ye2TlCOgXUcuTj
	 2h8QNOxcNSHwFx+G9XHEuW7W39btwVDKauEj1n3E3skPK1p3N3QZOceAJ7BKlaLDO+
	 uAOSw7+V9IW02/wqPjLpt6099TQa9pPgLwohKSiGKw3iV0TN8pxDhkSen0uU+ibTMO
	 O3hk0ZKvkHD3kz2O8nV2XlZ9POg1WV0bRssxANj514AZNkkCndiv+GRNxnLi9HP1uM
	 rIb2H7hmkhZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1FCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134919358.28785.9483804841700694873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956b58ea73bf29efe0ea46e5ce8d2b2ee6918cf936dbd584c1c9bc33ae227d48
Date: Fri, 24 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761349193
