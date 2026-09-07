Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8A83B19B3
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788764434; cv=none; b=oiaIAjbfrKmNBD6zmlCvLqt2MRDFGehkVzsaJOZliz0+xRBxtvKrL4+rA9FZnmPLDgdg54+3hooKrzPRXQErITiKQ4e9tjKjiVD8Ol1oe8F7vUWQUPBmxjJ+Ri/BiC4oKMi5z3wsXCgKl2ck+svPThNTHrxtDGvrXaeHEkZ3z7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788764434; c=relaxed/simple;
	bh=zddmukiIuwj2xZDYknZRBMreHOY4PqLfE8KtRInB2vY=;
	h=To:Subject:From:Message-Id:Date; b=Td6nY6030sVgvAwpWHsj/fgzkBHJgQo1M3E/Uxv6mQ2SeHnCjlJn3a52sAQGKoQoREQrQsoe6uEN1Q2MyKcjZ3+KCkXraDepMmtr9tDlyCBr0bs2DIecjhF608Bhga+DT1sCO/+tvRzw2Qaeg8wtFr0OnV5GnHrgFZsbnkmHTIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml/oDonP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml/oDonP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88C0C2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788764433;
	bh=zddmukiIuwj2xZDYknZRBMreHOY4PqLfE8KtRInB2vY=;
	h=To:Subject:From:Date:From;
	b=ml/oDonPQQTQPmAfGBDx9QwHMzG70Itbcf67Ne/b4Of6v8vy62eDV/rLyBhicTUnv
	 nXO2wBBW3HtXs5QOa5XVMIiL9bni+D7uJaJp0KyjYM9vOJnhMK/cML+5pYu+nwG3t6
	 jdLc8LOtEqk+nG2i5Sj3nAdsXD00Ks9VzF061+ds9JdLizwcq6PeEM0I8r09jIYsWL
	 IUk1SfjpKWXYY7xwghOI5bZKVng0jxV0TKl9J0G//bJahY9E3Vwr8NFEyD+PMdI4qB
	 TVwb1659YSouSiByTkZAgDRI0Y4UI3/DdYOxc4bgigFBcRc+pO1MbJ8cQUPiQjhtMr
	 7D258ATLbmMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79A8C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876443373.25294.9927149371760494850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8896bce4ec1ee9bc4d211ca9b2adf4cbe80e0d7f198d649c6dab3ff8615d70
Date: Mon, 07 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788764433
