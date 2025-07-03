Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1410E2F271B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751569194; cv=none; b=c7ittWIRqiJP3WfZeT8aPBU8gy80zAcsJg7gBIN7p/G1+JJ0CBllYvkQ2SVkCXzjvQn2rFNB2bhs0DduJREM34XF/yBMekbPoVvSZ9YRJl0MmaT9OxvW4nqxF8POl9yXQNuVw8IU+srCe8XQT2+l8GSCXzDw6KwqtMVOw0df/KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751569194; c=relaxed/simple;
	bh=DQQkASKBMGMwlCHFA5/YI6/+l+uT1sR0fRIbr7DwDBk=;
	h=To:Subject:From:Message-Id:Date; b=h/S1XISMw+AGTeORJCzGtRVq15il5vY06HHpBbm/IOAIBpOxyYIk7NAsSUX+mm2N6ceHQTaHmk/ZqI19Qop5/HIRuYWBZx698pH7znNZBIIuOVnu5qKmYbbLHts3m7efwK/HW0q6Dl6MMGo85Iqj2IS7fxb5Iqzpy/HanC4ofKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMM9uE4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMM9uE4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751569193;
	bh=DQQkASKBMGMwlCHFA5/YI6/+l+uT1sR0fRIbr7DwDBk=;
	h=To:Subject:From:Date:From;
	b=uMM9uE4Rvge62yf/lhngRkgZC42fmcw4muoOv0k7RdCIqIUTqQiILNzBLu5+MVBBY
	 gfpxGVjZ0j55xGYI22rcC7z0Jsh8VosIZxKrfO1n678c3UFGX87YL0QTjjOquZ9PPl
	 ZT5dNO0I1xJHPb+DT/zHcSnloo/UevCkAbBdpzRCYCXSIV4Jd7xTxUT1Yq0A92oacb
	 EUGSBguKxm33zuiCOle3gGRhLjVedg7JaZJUd3ScEoFGRGgtNVyFnVgFl1DlItHKoZ
	 1snxON9ucahmJU2h0fY7xNXs4xQxHxJ0FEhxBAllF6N2UwgfxLBpAwtfYN7RrgjSHJ
	 668+e13CpPy6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92EC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156919357.2462.18069013230347497914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2996dce952a193247619097235830947c7d5e0a45bce9778cfec6a0c29c7d7dc
Date: Thu, 03 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751569193
