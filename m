Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21429319858
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755195594; cv=none; b=d7Bd/Oyyqm10C8mCu16outHrV0V9zJVBeqaBQ8kOgWvgKo7BsmV5HkJ60N97bkXscXEdPB9tAqbM2cmZJFHzuzPzW6TYoFz5nMvOoeE2RwoihKwpHL8FLmVmrrKQt8QZFdV9gVdPu+H28v6g7h1e/kVGrwy3pKGxBWGz4lFJElo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755195594; c=relaxed/simple;
	bh=VJenDs4Si3b3K3PLxuYAVRoKz1S0GO7IFDJrVtI77TA=;
	h=To:Subject:From:Message-Id:Date; b=qrp+D9Q3pf2Q4S3AyWYwd+Kj7qmGZFN4MGza679fWteJFuHuvdbOPb9UCJC+VW3tJf22/HuPgTTnU+oFfTQI9yF2dt6Uij3cZ9ybr+kY8HoY5VOy89Kf85I8u798rRymNiHSyAP0xbQuni/zQ/p/UxvQzboyppcwwR/QF11zMvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEHgjC3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEHgjC3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3427C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755195593;
	bh=VJenDs4Si3b3K3PLxuYAVRoKz1S0GO7IFDJrVtI77TA=;
	h=To:Subject:From:Date:From;
	b=LEHgjC3pmG/53wVTJQRUOtFh5nSTk94RQbYmZH892ebfwY9E5qqXjaK784hA/ecEx
	 4q1AFYeXZIoKL0kigMyj4L7kkRtEqxtT+dfFt0/MPcX/WTcTRYK7cOxmW14FD9eqne
	 Qnc+1FW0QmYyLvpikLbew09YxV2daVnAsPV3zzmqfJyXMPq98xfn0SUUs2kx06hQ7+
	 rA/H/W2+Jg3Fo8JdL/qrRB26NkqfpKNHRF3sgv81fLxTp8ilDuQd6rWu3/WJsLmryJ
	 cgwzhISZbBE9Yf8CeSpF7sgwRwS6dHyYW7zuIfEzn4obMHNX4+l9jKqzl+7uBfGsg5
	 nr1FV7n1ETYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C79CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519559358.9541.8413406101288265117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfbfd7326b9ba8b4ccf25d54526ef81bd304ef49a5546f1b399a2d86efd8970
Date: Thu, 14 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755195593
