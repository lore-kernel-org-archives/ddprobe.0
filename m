Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1644371049
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779431554; cv=none; b=u4AGGKPwc6xBCM6Kd4KisQBov1m8oPq60CIMHzSONVyqq++TSLm0vOosuYJ2k/4Pumh8k7z73OBjvXR8FnED/oI0bDDk98sqzmhrEJpCbY+yimcRnjxHTUQpZefLTmz+MKNGGbUWnODYPWl6JFHAPkbiHSliCyN7m+6AroygqFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779431554; c=relaxed/simple;
	bh=JVSEihipOqgDlh3MrCm2M5+m+tvVxti56mrpnrPWjFQ=;
	h=To:Subject:From:Message-Id:Date; b=HGXcVb0WjP6xvEawtzCEv9WdXHuimUzTQyNjENMSKd3VgvIHddiMM6/QggjluQHb0E2i1FCSchrQrVTOtEyNjYhYj1VWtX2nYg6MzgCgKFMgl+fn76vA6nYyXzVUi8ecAt1VQSBZMwfS1rd6wgjiJ7T682b7Qy6K+t44MxPpSVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xuckqsr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xuckqsr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C141FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779431553;
	bh=JVSEihipOqgDlh3MrCm2M5+m+tvVxti56mrpnrPWjFQ=;
	h=To:Subject:From:Date:From;
	b=Xuckqsr/sNwzB+Xy3BcWf4HRMf1Hbx7TN/Mr+FPqv3n1Hj6NBIizBWsS1kulIGFyV
	 JJy5ykLkz3voPghKk/qBUet7MATPgDLXes7fRCK6asa+i99Zw1cPkzoHm9maHgjq/U
	 2ETHclNIUymfgCDwadqq72nW7V1NU9uqZtbrwHs6Z+QmGbuMy+vhnJAyWVK5wxzROO
	 oNFbXwOxCFA2eGzdjl2YNbwhfaYlhnUEwQBQj/bB3PPcz3kb3qYFu59gnwGeCUjR5X
	 +kpsGna94Llrdfx8IQM0edy8xrFTg8OVX+TWt/SnB4MNkj7CjN+TL9mgKZyTb03A3U
	 5L2t38T9qYAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89CECD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943155368.32724.6827720244931180882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af778f5eb4ec19015e096a227f3e98d54e28481e889312e22222ac08e0f7f06e
Date: Fri, 22 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779431553
