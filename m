Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FBC28A416
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745324994; cv=none; b=O2/VlkNRFAtlmLznlFDx+EO7ZCpbV8+WzRKrAjIOKbESJthQzX/nii2vr9eC7TmKgeRCYzpILX9bArUvHnM/37BWQD6Z056fXAzdhOPLkLFWiH7iwulAzvNJbEBHVViiy6bT2bvA+Ju1ALAg5TzGuyUqOrfr82JOY+lF1KOpoco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745324994; c=relaxed/simple;
	bh=dUE6RxGOXK41sk+kQ+EZHSuC9QJdTL1pFXVPKa98/hQ=;
	h=To:Subject:From:Message-Id:Date; b=LmIHCZ/xySnau3PwUjmT+I8uA94YEzRwNVFZdc/7X6KYHlbplh/ihBE0wVt3kL63Tlqb5AoXN2HKCgK5/MZzdxvj4QRmtRQcX56OXiwx84JTKlSlGhBiBSet+DGULt2kkkVHq12Ws1/H/HmcsfVFOky0zA8Ku0g9f/PMJJwoLM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmx+Z7PJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmx+Z7PJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB671C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745324993;
	bh=dUE6RxGOXK41sk+kQ+EZHSuC9QJdTL1pFXVPKa98/hQ=;
	h=To:Subject:From:Date:From;
	b=qmx+Z7PJzCoHKu7GHvFn8wmUC9SXhYn2RDf0bYJj3F9rnzBo3W5HWNuc6hjSNqjkS
	 EUPaDqUIHj3rsoAJoQxzWuxasGwixj5BOyOmLWhOrrEuLWyIdCc5AEFEV3WkMXfG3C
	 elfFZ+paQMItEGwpkl/gTbcto8Z13Xg5MYUq1inQHKs3Q+qYxvoA0yZnDAgcmTbFU2
	 +/N+Q2L5bF/6dqz00R9PTT5QaZ6r6MunSKQDY63RXc62eduoVPEafTYkaDQx+aSzZA
	 rNSjIHS67Rgtw5Zq4UQpHmaYThLOsIPw5G6qLK/t3MKQV9UbvOEPkWb9W/kHZkkxOM
	 FPg1V0b+hpEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEFAC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532499362.29765.15600448713072838493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25773fa6ea99eecb2b1f1e96887ea695a304468296c7d73df60294cf346f4ee
Date: Tue, 22 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745324993
