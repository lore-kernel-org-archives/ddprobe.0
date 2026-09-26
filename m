Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0D1396588
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790399434; cv=none; b=Pft8BF2dGsHxZ0N3tBSVk7j6oOMdGVjTB+HZZYH4MMSX1/kAdDJt/afUkQHtukpL8xxJ5AsqNR19s0dHTyPX+U7qFmB2sKHoV0z/YaA1QLQzZ9sMswn8PiK4EkozCOu6wF0lypsYB0AgMb250OMtP32V3n2mjOyPGaTd8oWocmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790399434; c=relaxed/simple;
	bh=SDue7X74NLNWa9wmFDmJSieSuGPlQyZhuqGNVKAQ/r0=;
	h=To:Subject:From:Message-Id:Date; b=efvTu8MRHKNsonQ5wEaT5pSiajrZuWikzSPxvuazktxh8M7oLzZa2qoDYAgTUi0+cGT0/ZbA7MiNajWCaZaxHVL4K9vfZpkiZkppNCYrMGq4ANDwa3bTU9XY8QGTHFlgG2BRk4q77fS0VsiN3TWsdfIzJeb57aft3TWtktEYbmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZMov5RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZMov5RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790399433;
	bh=SDue7X74NLNWa9wmFDmJSieSuGPlQyZhuqGNVKAQ/r0=;
	h=To:Subject:From:Date:From;
	b=lZMov5RQu2cVoQrFX771qBpRcJqJFoJZ4Hb/v9WlzmlydwWSdeIXaPlON+HRTm9CX
	 45ImfQOmMj+TK+MS+FGKhXn0KrvWxXZiYHDUEk4R0SD6u3F2waREJqZluoPsHTnYDh
	 yeSUl8xbzXqcU5cJEq5zlCisRz2FhJ4Itw72caKPi0S+3AVWYxRKS2RM9cOUK5EwcI
	 bU0bratJig/ZI3GZEYSYBcsfyAWKUl7ViV63fIXzU+gpx1MQd+pth+hqFmVQdfhcTC
	 /Os8XzmZ+4ZzkSV2F0ZvMLbHXlFgyZZulCJ1JIjUeG+qkrxTQ7BgCkiqh4OPRfc9UF
	 u2RVllSSZnDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E39C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039943368.6906.2462091010044024708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaac120cf868cce9d8e742865d21c00e052e5d6fc0432fa58fa9bd146a5ec8a
Date: Sat, 26 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790399433
