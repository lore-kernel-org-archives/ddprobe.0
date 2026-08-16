Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E2F230BDB
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786843234; cv=none; b=qxY3uCrJDvs2S5ECNgSufaRsg+dXVpdVl9UmhUJ/tm6R1P89lcrNv21jxhuLU0sd/rg8ADYyp/C2GERG0yGUh9ohi0Wup7RhbROyDsk+yyeOkjnCyaDWChfL4iW5tZmTo0Vtn+wKeKfKGiGezyq6K08g8isee5hljug6DrwY53k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786843234; c=relaxed/simple;
	bh=uuCgMW2DCr1gmonXrNShZmUNINcFGzPLK5WPPoYpork=;
	h=To:Subject:From:Message-Id:Date; b=LJmtBvDJVWLafq9KeWbeMjfH3sJNQGhiQHlYUJEgbT5CGLgkJ/ag26bmjngcUp4LPx3a+TVKLdf2Q/a0C8J672X9ZOFdCKLI0JCGPaeGXXBdTkuV+dlbuRJ2yxXu7Rm01flhexI9ftQk4+Q+elhW/LJ7GNnRWyiw1iHMRFzsGDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r70p9pW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r70p9pW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC51C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786843233;
	bh=uuCgMW2DCr1gmonXrNShZmUNINcFGzPLK5WPPoYpork=;
	h=To:Subject:From:Date:From;
	b=r70p9pW99oZ1OqgvUeDqkkrEm3Zwp+DHgZt5rjtKcgWZEP7hasHW4tzRzrFQtrJHI
	 o9oyqKupsO5JVmLYYurmojbA7FpwVl0x1Bn1FY1sGZgamg7ObMR3iv5AXYa0EdZJwp
	 ClTseMIx/dIU4OM7Zl/KD/sJPthHnmwnf9FNms+d2mNcoz+XTIx4oqrK0WQS2Y8kFa
	 ewgxm+J0/QDMBk8nDkVznqola+xjijZb2i6WQRAlkF2phIEQ5MxGF4l2T1pBPjE20U
	 76MUpx7KJMUsMdW6shDet/VHRuu8h+TA8Q9cXWG6QLkqI0TiitRHEJahVwPg2tK+nY
	 B7zElyKGmZ/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CAC5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684323369.26203.10445651719061813866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a727394d2bc8c470a8b943a5a447b4a126f57888e1286706aa64b7d75ac20e05
Date: Sun, 16 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786843233
