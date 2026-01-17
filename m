Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F720233711
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768672434; cv=none; b=ipEfIgrAonSKJ1B73MFSVp9CC7DERoNY0/vrv1UAIxIswRTu1dv1Mx+igGOOkA29aU8zL+ylnDvuK92qBFq7UAJACiML4lZfC3ZR+z4/K/6Yt1obhk/tKMcmus586hlSBlIw7jFA0DREJZWCY12AlB04hiioWe/ieddMf2sOHR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768672434; c=relaxed/simple;
	bh=Y267lcvVWxq5xDivbwqcrtugWu68dmzoBBElqt5UM5E=;
	h=To:Subject:From:Message-Id:Date; b=JatQEG0988MzWDn+tSzYiqifDdKknMeFig5woKK2GGUpdzuikd39VnK4SqhQns0nL/Viesw3u5UXhvTA999IZr1v3ieRCTF+GsmTSA9s1AZd1WKSPcDIYPGMEyzCln2Hnvs2H1CYjv4gKuUZrNqC2KgRwTAGfwULwhWyEq826iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mrp6es3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mrp6es3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA88C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768672433;
	bh=Y267lcvVWxq5xDivbwqcrtugWu68dmzoBBElqt5UM5E=;
	h=To:Subject:From:Date:From;
	b=Mrp6es3mDpKM4uyIklcTC5Y7NcGHiSa5jxUQwaVV+SsqoZFwBSUQxwTx0TXJdK0eG
	 ypYbjASa6XB6KOf29JUs0TQ8ujEVCz8RakHmdS9XcXiB9YcXCVc9NIIDMlso3Kdm+Y
	 tsrNLzBTgr9aQNh8MWfr47a/zMeGp+qICaWiKl3j12mAFkcMjj08O0thaTOl3O5Ot9
	 SwwcLopr8lWVcZdqa+drhcx2zK81sp377OEYLSZuEoAvOx0ZsZugONDgCflepmdypD
	 88ku5UtURwtvWCCuT1ZfJU9ovlvVS95DUO3TRSYuHGgfoFlGUU5hoyEz1nxN+HGUxg
	 cjuoGw+zzMsww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C7C9832F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867243358.25438.7266782770519465225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e00cfe3afdee051b24d67e5e463b25b449150ce3b9457d61a014c4d645fa5e
Date: Sat, 17 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768672433
