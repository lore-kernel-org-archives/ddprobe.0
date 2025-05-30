Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210CD219A70
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748614194; cv=none; b=XQmHOG/zSqvkwryKxt2llyrShyyKaAohAKUJ3M4thLUt2sHWwrdX+egwYR1UBi/OYazOb6TKuUU+sAEpxR8dkFjAzG8YSB6A0scX3pp3Dsyt/abEoexGwUxVtXQAtaoOM6EgEze15/JnQ4qpBoXb3zI+rZaVZUMnmx96lw8EOyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748614194; c=relaxed/simple;
	bh=BPxcC8u29snGltVxxo2y2mp6xQLQxsZIwTuZS5moyHU=;
	h=To:Subject:From:Message-Id:Date; b=IkJT+af9hHNF2m5c2dUtHWKDhqm4zz/xfbQf+mpCsS3Oq6G/R2mMRyuBu9k6UtBAVLr647hHd8vvwGU9Ys4CKq/chg9E8uae0OLnVqt6znIJ2j1oW0wAEeJ58KvLfCjqOR4s0hcHRVQRFhOVgxnHqvOrozJBZlhH3H1aphOhPmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8zHsPdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8zHsPdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96240C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748614193;
	bh=BPxcC8u29snGltVxxo2y2mp6xQLQxsZIwTuZS5moyHU=;
	h=To:Subject:From:Date:From;
	b=t8zHsPdruTiB96gOfhE/yHUVVuIN1BjCp5eJAC0E/n+YsY9ZEf4KrzGgkVl+mt0ub
	 XUMM7ambBWUUjh3A4RjOvojOZtjEIi6WDAVZRNgVPZjcEC+F6iG4HGDOqCmSGf+Nw6
	 aEmjG3wdQyEdLQqc3pGytAw7Z5xcL0pitR3D0GvpcFmD1rnwxSBSc28de/RoXeobFB
	 gydhtvrIDx32APchc2CqN9wak/hh8fsE0cbTc2RrzbmKWbMEzJIWa4VbCu/rzPUgW7
	 s1T9bnSMIDxUQYIZdzsx/wVCjguo6b0i6RnUMRgWqs8lUPWUOJavr3HM+CE3/bukhN
	 Lde9nc2unmLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E889C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861419357.30930.159703811004070261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1858972284f76ffcf15bf9b78f3550787cea16a471da26092a3917dd0efb39da
Date: Fri, 30 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748614193
