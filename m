Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198382E36FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751999994; cv=none; b=Hwc9dxBabE7JsmMQ+uRhlN9mxAFdaZxlCCh0opGmdJSaDOwBTfMD3KBJdg46ZdIgfLp6xgdgxYpCp1gCfMdVJZwLiTnB/yGBDjii/Nuh3s+6VSGrHzfuY4/gufInGop2PcYH1Nes4ybkn0Qu+tZFL7qdzLit7DoWhyqgq3qRrkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751999994; c=relaxed/simple;
	bh=Cs28s6GN4N27UE0z1LKVA0V8N9PpfUyzODp5Y2wrZpQ=;
	h=To:Subject:From:Message-Id:Date; b=lRa6pTmvquHMI63IwCNi0p4l6YX/H5jCZMUGQ5actIWM59YbDkMM2Sbej8p5mJDdqdD0UW+jzzO5DbuINZc/XAjbxxaOAWANQ+5NXgSy56qFLkvZCzeJzLYeaYp9vsPrIm+Sl1ocRWn13wyp6V0GPZLUTFWO+14DR9s8W/Wtr3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGx/r35d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGx/r35d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751999993;
	bh=Cs28s6GN4N27UE0z1LKVA0V8N9PpfUyzODp5Y2wrZpQ=;
	h=To:Subject:From:Date:From;
	b=OGx/r35dm+ssNvyl3IB2hXP+aFArG/xEv6cKVdy7qIazNG3jRU7IsoZuq8GbmWlQC
	 615LhWfea9I8ifeAApq/26eQdB4CHw1esdQRGyO9STev7I6urZQdfTpFunCTlhItEl
	 Uw6GxgZqaVaCbKdZHdxdQRiqnKCMiDIrpvMgdWKJlRkHqHUrFyNxXs4/SckSCPVFVR
	 dRYABulHf6I+7L/AXhzYiCd/gIRDMBdT5J6WQBmr2SlOl6bJUuukKmZaFARNhQQd5E
	 U8WdhOCMz0q83o4m6APYKdzIhifuhQD9QjVP7gyoaDLmiCQR+u9NZzDi0Iih0bvEUN
	 lj6s6JWRRKUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA7C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199999358.3075.2663735471509981322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a11a4580c55afb2a9d6fbaed07675dd0cea783e0e268074d2428d19eca67b8
Date: Tue, 08 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751999993
