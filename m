Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F4302767
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775553934; cv=none; b=CHJ3bC9SqfGCEgwE1uUNTiyEcZ+txtNwn/joN6wcgOhJL16pbbmwax/VWJG0RhidTL9p+0P+zCf8QdajONY6JtDTphtcbkhs2spyYZ/5PzkbJOLzL2iv6cDQymZM48UAPf0nkqvga2j6CHZ3+YnJ4131J5qS7HlKgcZusZuQBPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775553934; c=relaxed/simple;
	bh=U5yK8xx6S2GD8PpbVh7iQXj4GYBB88jczM61k9FwTEs=;
	h=To:Subject:From:Message-Id:Date; b=A7Xi7nbiwSe0EF1NtT5tBhGjvpPLKWmEMVyKdJ8nw4C06OQMf0AH9IhclukGzYJMXWtwWcAyR4UmBGX1mdpEqOoA8HtioFpp0lXpDcQmSxxDqvXQjRkr6cqh3Ug7osNjROUBHn72ZV9lkzmUj9Zyil3I/3/aZlSEp+QDh5+Z8gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkgpzwFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkgpzwFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2B3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775553933;
	bh=U5yK8xx6S2GD8PpbVh7iQXj4GYBB88jczM61k9FwTEs=;
	h=To:Subject:From:Date:From;
	b=nkgpzwFR+Aufgh0WQoFJJov/4n2cBj0fSWHe419FHX/X2Cdl/K6IaPIjtB7wvvtZ2
	 JvAe4DAh7eE346tfQtxE0v0KU91Spu/Hrah0kpBcNxoD5RPMM1KwgtzV7X/9LjM8Bl
	 HjA7in1U8THG/Z78F0Dy98kF+BmpotV+2KegHIrdHL5lpphVTTkfu9s6L6aFsozJZ0
	 MXBBrIydzcoosjBQ8iPI8zLyaYDdcU4EAZvfjCglU522FCtdPoATHfZASYZahusLdC
	 D+PUXGwlHyc4aHBdvLBFtEgX9CIWTgEinRnXQm8cAR5EJ7FXSo64UbNEiEjXkw8qer
	 Tj22ofWf1cvRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A14EDB7DC
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555393368.15283.856519160384508682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973db86c00992f433b6a8d58f5c033c7d2fd21b4dff8957d7c6114a942110838
Date: Tue, 07 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775553933
