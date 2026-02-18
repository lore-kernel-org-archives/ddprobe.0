Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B2633F397
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771431894; cv=none; b=jato0I3z374qNcBzmBaEvDh3F3hEjiwtlgfistvRiEc23+LuHXfPUfryl/8w5tnW1lmIQeqYYim3c+/KO6sn0j9muRm3GBvhrAR0ZxsaF7N0QGXFRG+mg0ZRf9IQK7FF7hRE4+rPrYXaALgjYC4c6Blnv5M534LvqMl7z6mAhXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771431894; c=relaxed/simple;
	bh=1It+zIniKHscSsK6k4cwl4M8DvKAnEFIXuV+dLCuTMA=;
	h=To:Subject:From:Message-Id:Date; b=N6xODvQsnBwVOYqubBiV7Uv8+7/d3xfe15GAaNeUupv9+MlHQRkNCI5b9AA/ADOQNlcK/gbVzdF1qYiI4BcJdXW3QXQ1IU9sNRdl7L1Bo8rQevNOF6NF8V/DwEQA+0hQcArwGeIC8U9zdHMznU5wkGvrZT+IkXM8i6/UnlIwpzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFgTAS9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFgTAS9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D2C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771431893;
	bh=1It+zIniKHscSsK6k4cwl4M8DvKAnEFIXuV+dLCuTMA=;
	h=To:Subject:From:Date:From;
	b=aFgTAS9J8PF7U4rH81X9RMgRrA2C3YEfpNvKartNHs8BC6OEd3f2eXBdbNmHIrdri
	 su4xuhUPxShZ77E1Q4ElN3K4xzndCoSS6teZQuc9MsNJ1qegB6epQRbHfGoRuizg8p
	 +b41/sHrsKrVpzzQL6glgoxyg+aCMKhvJjHg+W29SI8y0ZegDZ91rWQVx4xGh0lgQK
	 s+vxQFNDaIDbpqrByAFpM10WKlTseLjvOmIHCXPQgc+RCCvzJPyx0kskHoA5vorzyM
	 ubobFYhGarc2EBYrNTHyMQF7d2BP2DlUq28Or9KZcO/Pztp5XnOywIGbfPlbQODKSN
	 ovnTWFbvF51iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CCE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143189359.7520.11819208088038733326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b880f4e9136ade9d4d173814592ff059f7b739e95e29331758c53aca0e6d8a
Date: Wed, 18 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771431893
