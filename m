Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053C819D09C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752535194; cv=none; b=WeMv3ixURVP0wQEBGNISo4eN71ocjMzOVAGrR6d9jeWukrjsxU/PrMIFb2yliEYEdZDmGIyw9742p+O2ttAuG1lBh+iadraH/6L8KQIyqdG7Y+g5Sj+LXxH/s8LDIWH702jSKb/y0vrNkPmparfm/5Nqnfuk84ARW4ZBTRB2ZrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752535194; c=relaxed/simple;
	bh=qOLSGN7iglHwTH+0lIYXKskmuBsGlSi8fK72c+Tn5tg=;
	h=To:Subject:From:Message-Id:Date; b=JhcD7Lk7+ETK8+53hYMELgFKVzhondvROmZ6qQgQBqs3woRdjWVsfXe5+GZ10/Qh/+u+D5fDOIsiidQyith0bBKkLGFcTn46+xfvbzISfugcVMSmHVqXWBRay99UN+JWI6pIOD4lpy1ncycXnWfIQccSa271HlbYT6EcfJRBTI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZW8ivBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZW8ivBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752535193;
	bh=qOLSGN7iglHwTH+0lIYXKskmuBsGlSi8fK72c+Tn5tg=;
	h=To:Subject:From:Date:From;
	b=kZW8ivBOrHpIhJB/C4I6jY1PB3WuWSytxV8vDP9jKHXT4HZMo/bbxRjTZXaOjAsLg
	 gzKX1nAjBhT7m02wGFEz2ylcSy61rPPZ2oKTFXLLN5a1Pkq8pqjcus7V2YnrJ4LLBm
	 dCX+/cTvco/gwO+fONtpxsLAjmpgeDxm4pJM7lXk5z3XxLz2CbG2WwGnHYI3B0xWB/
	 6QLTYJQ5qLy1z2RwMSf98aD26jpKzHc2pVqsX9ylvT5CrgSFCle2gnqxH5keq5AVeo
	 y1yj/rNpd7/BncQdqUkd6IeesRzYWbsH6oChZjaqH22CFYqN2llD2iwuv1NqKCJy4D
	 lLL7ZE3V3wI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D2C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253519357.3551.18228319681923617789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7c62cb1c2c744807932e5999e19d9b7e1e59bbc921f90613876793977cbe29
Date: Mon, 14 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752535193
