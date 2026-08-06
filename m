Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FD72E7380
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785978634; cv=none; b=KFHso5dSL5jF/F4jpLBgGA8Psk77g3x80nSRSuipQoSVo5fNohCF71OYKFLo6z4FUeGPr7XgMOWhDmbslQ32YqWwn+Xg/d7lhUeaz7fMNDYlOruwV5sSJBL1d3YZcLkJN83xsAa/0QDc3tabTtNLWfZDosFffk+xkaPrucFTh4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785978634; c=relaxed/simple;
	bh=xzHVhM+I4zkbXOmohgem/lAQRb8l1KnW8ED5X3wLuvY=;
	h=To:Subject:From:Message-Id:Date; b=kZRsBvhdVp/6BdDhsiqV8rhxw7SELMB7H4wMKk2TXlGQU8R8bPhKaZ4cOkPWKDqY8XV5C5FKCZhRzjY3kN0QPjcDEKFUJzwpfBMQAShbw73iwW8NOftryd2LkaMJ/hSVYU8oyX7JJVvaTlAD5L2CgV5hHAUVTKYTyELdx96ynHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmDnx2gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmDnx2gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C32C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785978633;
	bh=xzHVhM+I4zkbXOmohgem/lAQRb8l1KnW8ED5X3wLuvY=;
	h=To:Subject:From:Date:From;
	b=RmDnx2gY5RjK3PRWGJj9bNNPWe+QUgA5mrZ9sVm5oGTfesWDwHTuRtRu5XZzdWinL
	 YuRQvP6GRfFjVrIUgrpPxQV6YJS7JusjlV/mmzrrUwIAP6zXI23mEViKs5F9NeBtIN
	 yP2FacyD+boKlE7kVXo9PdTq3ROPESFQxr/u8z7hNab9UPQngITlhFJCm9rtfGgiOB
	 zimE7hhiHPF39MSmrmj3qf5NR+KkvRJj9MmFFF44sARRPR9BVpKdoCWJAh6rMoczi2
	 8uP25+Rl/Sdhv4C7lMF/o3e580cXBuda0d8S20IuGtXmtWZYTNR70TsI1TfsJIum8T
	 Ulk7TeHayGErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC5C55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597863368.3669.4420317447764193573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f270ec15fd2287a607d28cc77dddad2e2ff45961f3531a53428d38f5aed19a3c
Date: Thu, 06 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785978633
