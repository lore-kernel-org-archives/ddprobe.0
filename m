Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491DB38B125
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784826034; cv=none; b=pdI6luEGTaGvKRpo/gcDllu/uIzEAvg3ejlhp/Uh1sxrXGVwxm/CzR1nAs0IyrVUqy7/YarzWid0yhVt/My/W/hMU/iMezDYA91r2q0RTj5BZQoN+qtdmfBE5Ff1BvqRTkF8z3OdylXlo3ityAqKy3p6zEU/AaOtA5JIin9RLxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784826034; c=relaxed/simple;
	bh=FQf0VF6g+n0HEdmRul3a1nZboROPpSBGsQrfEJG2XYE=;
	h=To:Subject:From:Message-Id:Date; b=XHE01WJ/HsANNDFfbGG3g9Y/WGKqHDLVNitX5z60Zm8uZRpC3B2KlI53nj4hlw4hZ5hOBBphQUNpdzvNtUA9CJAwT3kPzT1C95MEXcDBnhoPqzR/RIf+9DT+lEdA7E/188H4TRuXiPyr0HPhG0ySDw83Ggn/g7kgL1zscfmaOBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axUJV40o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axUJV40o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF037C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784826033;
	bh=FQf0VF6g+n0HEdmRul3a1nZboROPpSBGsQrfEJG2XYE=;
	h=To:Subject:From:Date:From;
	b=axUJV40o3XhiILw9XL0MWxmgi78Dg+maouibB/781c8yiuA4SIg/4Jq0XjPIkFu4f
	 bMOdYuVw0V0ki5noPiI3+/8dbpuiUrvewaXKmCRE6rxHUGB42dl9L/5xH8q+JBkMaW
	 RAR6RcMsW5EhD2NufeHEK5TlGbiLEusvKBdzB/2ZJsMncUoG18/E3y/6wnVUcxlE1c
	 hnUnE9ZXziP/zUc8/eaCGbV14vaCom8iSGN8FTvE5wjYIi05hBIrjVRALz2S/rCjGh
	 QeBgb7yJYu4V2aHA62Mpt0ufu0kUi0Zw8MVnqY32fU3jT6EEPe9706ZFcidbE14O3l
	 WL+yF6iI8kF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD250C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482603369.24570.14921801514708639134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0576f2777dead64cbe332b72857d0b6f91a334313453489d42f366644c3a628c
Date: Thu, 23 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784826033
