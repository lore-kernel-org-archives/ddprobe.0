Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEEC1DDC3F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773563094; cv=none; b=esJU/q4/kZbtnyLpd3yyK2et/1CNioYvfTKyW7PvE0BvYsZUsmyl53vxsKh2AGWft0qK/oGnR6BDvsqqbDO3Ms22j/xXrPSrllcJRoPlLhprKRm3AS7ETAcfF4M6xKj1/HJChV8OtYO0BbYqXDK2WoBQKu4NFUVdn3LyOIMLBAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773563094; c=relaxed/simple;
	bh=u9/bvwU9gccPQGpIQNDc1dre+vfox4GM3fjTRyxrsGo=;
	h=To:Subject:From:Message-Id:Date; b=GDhJyQKVc2X5kIY8UzEMIK0av080Vr6GHtHaWdEp/okCQxpG0NGUpqmP1vWmTR3tkEJFnS48r8N23eYKWMhlna5ckkT5ECUEHCRYww6h6zPLuTqq9hgZ3QQwkkgEc7pfQmOCU9hSgiF5gasXAKTmHHuukfcoxV+W3owQce7Mug8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHype/r7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHype/r7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773563093;
	bh=u9/bvwU9gccPQGpIQNDc1dre+vfox4GM3fjTRyxrsGo=;
	h=To:Subject:From:Date:From;
	b=HHype/r77Sf2ng2sqIlhvEEhAX76gEP8PD2piMnebeuUjV7HbRWIp1SAoKQiCCICe
	 CC5V/udNMGX+cQhvttuVJi4rce6BeKuHQ181LMYaI20ujHlnDsSASvVZsnSP/J5HF/
	 6qme6WhENUQaQCTEzrucsFh6ovi3svjQ/1wQhPB5Yuyz4mMf152ZSBSMpKT/eakW1B
	 7tLng6vTKAg40e2OSHnTCaZNDtlR5QSNgvx86gadDfbgBgKCDZLdRkJrGJLfLctdEN
	 fypUgnKFNRJcmSRdu4ts4Jcv89dpk06F+mbIrHSgdXe+ukJzWKsffmriAPc6xvQ5Z7
	 Drp7hmdlYUfeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F56D58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356309357.2656.118747843992806507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271526dee41166c3f6dfc42dd5766c375a3d8e419601057a64dd9aaea8f67ee3
Date: Sun, 15 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773563093
