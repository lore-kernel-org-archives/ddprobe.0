Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D50C424D41
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791116434; cv=none; b=s9pRYkKK180qwyGLQ3CmNqV2HmknX7DCS+RfpFDmw0xjLedIvEXTRruLtJDjJLmI/yXQZ7SdS5qLckw/fsOmI4bavQ0tFK/DxxnLpssD3OTHaIgQB9XcOzNKHap5SwfldQf+upu7eT+htinpcB313llFGz8EzkInG8g8vorAzJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791116434; c=relaxed/simple;
	bh=RrKkyIJpqh/aWSG6XA0VLg2fCKKYemCSQ6NhUELSzdc=;
	h=To:Subject:From:Message-Id:Date; b=YH0hVquKJzGJdtHW/j5N32sGAa9pal6O3wVmMHU34mBw0nPG9/N34ytxN43GQSNlOjsk+siKN21/SV6hORRG3RmQwCfaohfxC17KMDYSrq7w1ysBdVo6Y92BhAdb9HPOvO1gsaKim7xTanAK+pbqgGDBrPm0myVJUcv79hkY3Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBgCrkD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBgCrkD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE62C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791116433;
	bh=RrKkyIJpqh/aWSG6XA0VLg2fCKKYemCSQ6NhUELSzdc=;
	h=To:Subject:From:Date:From;
	b=VBgCrkD7HgALibXsuQMhiLRXHE+/3Kok7wBojTgXhrvlrh1p8unra368pPVkmKdZS
	 cmo/LVEjBzCRy5rMqSNuKlwfLWATksc7Wogch1CnP9Y3ClymQzTeCiaQcFo+ePvfZ6
	 RHYyt/j5Iu9GiNiKkSrBuJM9xflnDQMWfxHgK0169sHH0IKG4kmPGa1Yx81Hr5Dq4d
	 b+8tkC2Nsu4hp1czOQb0RBqB6X4iniW/yAUko9YSJjAqbIOpaikN/7vad39TAZyYJS
	 +kddCbE3wp2c3EMw1OTJ8oshRjT/O29uMKScUBtb/ipwG8vxGv8GkZG5lBmPUTqSHz
	 BKp0CGiPCUMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA39CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111643368.2411.3827554195237120049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b98626bac763cf438faccba228027e6e30e3fa88b8e874eb8315b708cf03fe0
Date: Sun, 04 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791116433
