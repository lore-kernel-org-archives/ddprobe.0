Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAC380604
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760120394; cv=none; b=FuErxi/n36FAwsgCptO9SzKsK7VL1AnlDEoJBoMuz6N33sij1dkgEAFH9dooXRetabdCNwax3g1K6BgLapKhj5JZg1XBTCppu5//L5MYctMTYoxeN4u1ZzSvtPzP8qoiq5nNeDBVTOcu0qjEMr+JzxGDKnSV0io2hyLmimJoyEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760120394; c=relaxed/simple;
	bh=6lhKVs/BbYh6n5ZLjWBYfhjLs+7ugiP0lxoNNlWgmRE=;
	h=To:Subject:From:Message-Id:Date; b=g2lV4aeJsj4ryPvmpUJc70VaZGUsu3yIXCs1IJfbHeCJfsieL+fwPXbnYGiW+YYlWg2RXygqFU/qhtI9f5J/N/hT2IgahnF4hRxgtsxnEO8X3ODBBrE5mxcxpOR7MNVOSF8/G8l+xnkl1Prj123X1MmNN67VafPlMQqSNSYtKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py4UxvyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py4UxvyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760120393;
	bh=6lhKVs/BbYh6n5ZLjWBYfhjLs+7ugiP0lxoNNlWgmRE=;
	h=To:Subject:From:Date:From;
	b=py4UxvyM6rf/8yQGaTJzD/RM3BpElkAcPnFh55KV1z5w0RUC2CEmp2FY1e8JZkj36
	 yZoQXQp/XyqiV9NmeZZVGhXCveyISPck+YhhSDkEem7ECZBASszxLurvZhYRxq+apK
	 QIvPzRLqe/WdpozUKAGgTKy0/iYVEJ8oVGO/PizWI4yxcdKiI/GK7lXF1U3j2pwBMx
	 k71Txf9HcsX+bVKZ3tOoW92L8jd62i45GSyyVQy1vABQrEaieM50/pz1lc/NZJIHeQ
	 uaqMwaz6tf0/GMxxE0Pd8mVjIWO6enD0TMQ1d/EZOK8gC/UunW8nLKhsZ//SU+BEMJ
	 vcm0ZhvJovzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92830CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012039358.30815.16214593609348415704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9204b4c1b542f425c9b2d7a6084212b7a3f68763a2c01b3a461555fc738c9517
Date: Fri, 10 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760120393
