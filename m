Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043146D1AE
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716288203; cv=none; b=bh/EnnXRliQ2ou/oGCya864hzsQsyZDcuBQeBAvyqGgJYtXHG/B/P+be3VF1iGy/KgNf27M7OLkelUiSlZYs9xM1Jpr4S0wwBep4Uv2Qk0RdB0CM1uWGAICUWMjAJtxXZYm9nbdVQ3aApT3vv5eCx9FuQIFZqxn+CAdcArRs+Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716288203; c=relaxed/simple;
	bh=b4siRtDk22Fx6wj7pXgNOkcSXLrhL2VDJQJs3BRznjI=;
	h=To:Subject:From:Message-Id:Date; b=U66M0N5AoLw4qbgjkvyPYXLntxg2jp6yRKz6PolTgLT6zXr6ff86kZpv/0ErvReAzv1RjrdoM3aPyaHJMGe9SgmW+fGB9vzmsQ21PksxbUdCjjM7dZWJ36lg6kg67B4IXa//insD1rwBQt7jqGDf0u/tB5OMCnvHUyAp1XhTU6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J26ZaHqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J26ZaHqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8FC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716288202;
	bh=b4siRtDk22Fx6wj7pXgNOkcSXLrhL2VDJQJs3BRznjI=;
	h=To:Subject:From:Date:From;
	b=J26ZaHqMWXYMpv+Tc44iK5XGJGk+XYn2QZyRwtEPEhlIkK5eMk8QLFyRJHh7G5pAX
	 VtTf3el/TNp1ngb5nTgr0Sb5Zw2q69G0TnkuUUZhVxUNpqO3juQpjzchcIoD+eK2OC
	 63RCAzFdP5QNsTGnOnZ4k2e+cclHaKOcDcEadqnf1I87Xiwrl0KKmPIZTjConFoaNG
	 fWzis3ZeP13PBNEw8uTE1WCFWU6fO1dk6fP9nHaYE61XpzH8lPyDvS9Pp1ZsjWWO2K
	 ZDlEIGrAFuRpxQ8cVrZd1PSIMcETkiO76PFfTcRVcXCZZDMirDp/kdISMo5geXOomY
	 jVz1w+PyN40bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8C7C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628820276.17216.5269922721561386448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabaef77dc1a28305c052b4c3587b525e0e5840fc34c00f79e8952b0762033fe
Date: Tue, 21 May 2024 10:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716288202
