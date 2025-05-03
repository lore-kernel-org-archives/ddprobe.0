Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424F617578
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746233395; cv=none; b=W/fqzRviNtQqayID/gAfzEOZztPD4HXjXxF16fTZT4ogSYkvaZmCRjhvNBiCyyr/2omaibrIH84T7+4e+5Ma8QULxLOw1bFXtYRVnTITVZ17mEuGqHOJXHVUxTu8YOz/bjWYzOUgpRR+q3J2/LPumDaZ3VuGRek2+I2xTUyV4AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746233395; c=relaxed/simple;
	bh=XKOFRuvofuQxu2IhOZ3k1/viM13kIpDQlKgnbHdAeDM=;
	h=To:Subject:From:Message-Id:Date; b=eFNYBoPEI5M63RG88mHb0o7YN/LzYajGjq5bP5+iMSZqAyeHKeXnWB1XUdIA9Pidrh1gsRdExqUgCn1VxYuPmA69UowxIZrKPGgKdq3JRB3mUuPaYBcMKvBhU9MxDTn3X+MFLSqGHlVpp0dY2bC+Rc80rdKBu7iVR7P0Krv4pOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB7t1I8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB7t1I8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E2AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746233393;
	bh=XKOFRuvofuQxu2IhOZ3k1/viM13kIpDQlKgnbHdAeDM=;
	h=To:Subject:From:Date:From;
	b=nB7t1I8DU5PGTcauWARpTI8QuKX4YITxpgs6K3uBR5TmeBX/YV7LCu9MQu8O4fZzS
	 hCRuWvmsb0Jd6NUta2kFbjTPTieuM4YHvk51mljgS/Zg+ryjVusb9mkPTT6cJ/3WcY
	 s3fWpq5Lq5MbWiyXGaBXgIM52D4+bEmds7SOpvArv57urGOLzCQYhQf1hrJDOD+pE9
	 P0RcdQW7yJQDSdu365T8XUnXVN0XIaWvhwjL77NLA5dyaxkz0zdtN7dSEugwEFC2ch
	 4lufEChFys99e8X8vlTYB9U6v/BwyZQaz4pbx+rt0vVCtEazgNfk/OoX4DLs8ckgWM
	 ekl5pUjpG6pCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF1C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623339357.11854.17959015359698987024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a5ea72089283b94099d3f21bb80a32ed22c0cdffe896d715d2f6d555c1ef06
Date: Sat, 03 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746233393
