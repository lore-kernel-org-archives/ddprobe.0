Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0783733D51B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770713034; cv=none; b=YvmSD5VoSVXmjsEZcg3vsbjsx+BsWX8oz1l63IbJdkOfr59Ff5zw8tJ5/sHEPeNN8RfYug8VQd5+MUiiiIIPT5IlX1ZbUcVartlmLJNGQ0Bd4xU3e/cIEvhrhEAAYNYtKSyV8r4Naiqf4yeO2Mr0ZcxwK/INSZBafW4L9Jv8cG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770713034; c=relaxed/simple;
	bh=W8qYT4ssTlZmrvdiajmWN5Jc/F/iUG+xGPLwAV5Bp4A=;
	h=To:Subject:From:Message-Id:Date; b=ForAiQlyTmOG273XE5WSQXGHRtG+sF3JnzbHvZ0DkHN9krVWFXnl8LoPfOnfHVxBGW9KD804pGfCiZMJg1zBYA6tQIDk9fjsZR0bSYhXN+MjI83NRKv7BkHkT7wwTKuWytmC68dUtfPw8dIBC1S9Og0akO3Uj7lkWwDNCf2gsjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGcIyhh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGcIyhh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1270C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770713033;
	bh=W8qYT4ssTlZmrvdiajmWN5Jc/F/iUG+xGPLwAV5Bp4A=;
	h=To:Subject:From:Date:From;
	b=kGcIyhh8k0StfWgAHuPNOCYTbt4I5oqFonfYfYOFDr0naR0HoOIl8X3lc7FztCoJ2
	 hHhUokjRAfH2byjZ1LxpcwFmtlBWlecuwWkr/kl/NBYee8BxhHWDWb5zWKDSPTMf7h
	 gYSCFcLUkb70QCFpRN01+EuuB9muChDxGSWYLr54DJiyUn8J1q0E7fe5u3LrF5RIUv
	 0iDYedBGr3mAliLRiy9fQJyjldM+qmNvCkWDmQnFNChkqkdi5FGZDNFn6ylOoRqrPZ
	 /eKj56nlOlgxYllWdMloTQIeZOVGXLUVX6LN9ybI8OPKuPfsAWvoSolOVLjhRvza6s
	 y80SqqAE/1LPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB29EA3F26
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071303363.14223.6175602450365289844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbe15fb250479abe8747da49c720d627241b6fea22c0e492368960aa4da8ac8
Date: Tue, 10 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770713033
