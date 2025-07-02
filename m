Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEB81F0991
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751442593; cv=none; b=hTM3IVikWWIZkLda5rfaJmgI9QgEaq1cmDH+XTkYzdAmIJcrWXAgPk37Oe1W6H4SndsrEZCsRRvwD7wG7A5KqB37MezkqwYSdcTfem42TZmga3XhfFLQnG+mDH0WHOVaQ5aTJkFvr8BfB4iKvpBRgoEKRCurdAUdEY3dlxCNJ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751442593; c=relaxed/simple;
	bh=r08TFMncBh9AFfLy5aPSYzrrENf4ckN9ykadCJXfbx0=;
	h=To:Subject:From:Message-Id:Date; b=kdGRq2FEnEB02I3LCv5Nbc3FjVqTKju6z+OOCxLVSvkznyZgjdQxEQUQtiHNN9XBX6XrWAqHySt+vWX4Lkzl306fMS/tvqQHEp7OEiGQWxdGQ9f/G5yMPxZSCi3BGtR+P3ArbGxGWTg+46pp78491LfHf3CuQ2vnAVV+vhfYkiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzeVeocG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzeVeocG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD4C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751442593;
	bh=r08TFMncBh9AFfLy5aPSYzrrENf4ckN9ykadCJXfbx0=;
	h=To:Subject:From:Date:From;
	b=bzeVeocGoVTfFNXAxNcmO6ZS+ekrTTvXCY2hX5R0pJcHg272kCuX7DcoJFYH4MuXk
	 fowy1PJV2Uz7UVbSE3gzMT5DCARM9IavQ0YpS3gaWMhQbUl/HHj3AZIeeZiSDQtDo3
	 snCpSgCaayBArGWR5GqPRFHSBCMNpyX6XbyN7I0wBK24yQYUnQqZB6plQajdbiooIi
	 2nP+V/KEAnhBBktdm43iJrzzsOnxPQrYnBJ2nHpry5/Vmq89s9A/ECN/FzWsW4h6x5
	 MbyEr6yfJf1RZjyFHPu0bLRCrjmzmVhm33AgP9qiJ6u2MYShpSNhOT6R9kGQ5YmZIk
	 0WkFw/kwOMThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F220C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144259357.30158.9578718039356708097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525b9a78eb88027567923c214e41200cc971ae7f1b420c12e7f3cf8299515828
Date: Wed, 02 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751442593
