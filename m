Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7A26ED3F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772293494; cv=none; b=vDAlunwPyPKqXrgZUkrXMU2X6lv0P5TSyF9IQL3ThTPTud/C7c6AvMkdxRH/wDXC+kZO8ejUYVwK4Ui3tJzToLEO8tWBPEBQhJqO3/QUG+bwdQu1Rw8oBoM1Bz4ivF4W3ZQVfRLYUK6Kb9nCsWhhWnoyPD2DoGwQaEE1RmleIJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772293494; c=relaxed/simple;
	bh=GrYKW6J/XY5K4lOpRe1mVJWI/4Jt2pXh4DoffabANm4=;
	h=To:Subject:From:Message-Id:Date; b=TFeT9yMwggN6lZWNUIcMo1iqOZIrpmmTdGEhNvmqzTB3LPn7Nc0cPr+7qpEgrqsFnj3Jg2Otq4cfzE+hWAc+HRJy6g2Rm9Ftymw4jY6K4pqhmAG/WTNEKWuyCOsFZp2Va0sL/J7SRvlKVnYpaASpNU/M3a6d6MZj5KyV/0bvQ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjO6Dsy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjO6Dsy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA064C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772293493;
	bh=GrYKW6J/XY5K4lOpRe1mVJWI/4Jt2pXh4DoffabANm4=;
	h=To:Subject:From:Date:From;
	b=ZjO6Dsy6c1jX9eu0uT7ZWE994kajWylgc7TT77eAfBw5YwH+yaUXjBGxqaymrVlg/
	 LghCesdCny2TYqcQIACSXSakkJ20ejUEJKTYKiozmwr/pY0JyaLQf4XFP5wqgA+xBC
	 UWlYETmL+zPoJAuWR3mtHLJ+x4IR89f1X4ZI+4rQV4DQHmNEbF/fen8GrQ55jZMaFF
	 1zFdighHurHdMWLRMZPGlcdvUZN4Q54CB+JoMx0ns8KbVlFJgfAYyDmsN8WWcf8OWH
	 PCsRVVXM0Igas3pzl29ii36RakvlrwbHaVgmvoIEB+osKfP7HayIMWLFvE8kjGXQ5s
	 fYZOx89IpP8/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC20FEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229349358.14662.1400301401184409055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4625e389fc89ecbde20c2116bdc9f4055a998f2dddb57b496e5e51b1d8de2676
Date: Sat, 28 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772293493
