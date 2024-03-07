Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188161DA37
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709830097; cv=none; b=Hsc+1NkrA4aAFmY4pryCC5Q+OxnWX2ieWysLdetC0Vi+R1QO5ihc/OylwWJlw6KMYSvDsgOgGWq44QTZxv6di4LqnoB56upCb+47pt/Dr7t31V0rLVNBi34U1Ub9xinf5jLqPXRAaxTIc6fIWGBNp225rjwtqOp5f/R9Y1Soa4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709830097; c=relaxed/simple;
	bh=lBvU19uuPNvMAURCBk58AYOiPeHKUK820MW8ZY9Bop0=;
	h=To:Subject:From:Message-Id:Date; b=JRK1DB3oH0Yf/ihOTGHvFB517RSpX6pjBIvB6ZE+nfiJyE1B3YYOaitEUiIw/Aj9Di6c80P3o2fr1QLWUiDzWwWCMcKAnjEKFEWzBdSwA8/hwXJEegKycMjWjaNsDEVZnLriJdg4zcnkF1Jwvfw4lhTZNUjljf99ytdiqiv5RPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UylENN0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UylENN0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E5CC43390
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709830096;
	bh=lBvU19uuPNvMAURCBk58AYOiPeHKUK820MW8ZY9Bop0=;
	h=To:Subject:From:Date:From;
	b=UylENN0UZ2MJMgAx+5RjPg/qUC2LckWOVrrijD9Av7EwTMyiN3rNaVWNCqGGEXC/Y
	 zvUpqAyR3OhsPvudOizcJB4MZeS75GmiH/oSlirc83NjZ7WTm+b1etMOboGTxBU7DE
	 qLm0HO/5UmGcXVoFqWDSrS5dy8Xqy73D6eWIGWffEvfb/VGE/2HndvtaadchPSSXUb
	 JxNsUkn/QVbJ8/lq5Jf6qo8agT9mQTmawsEiAsKSaW/3nmfIcOoHnXcgpf7k1U077C
	 l+oeGrOfkATLhApWqSORl10eOxkiQlvBJcy9OhyP0tFjjJi8hO3KsY8iYGrh23LP4K
	 eApyaVUEQuemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8ACC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170983009638.2520.13435557352128935328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec99d557b3dc30fd0cb2358030258fbc3237232cdbdfe66e7fd8c37ffe75a978
Date: Thu, 07 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709830096
