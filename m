Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAC11F956
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747426795; cv=none; b=IgcQSxBrhvo05/PYbUhpaSGxWpaC+yyQjg2m5aqovWutEiw8z1PWwe1OuR2yqC0LRO+o4ItoNjd+XtPFkaov8OLc2fwX/rN3x05ngIOGxmngbtKPtf9oVM016Z+9nd/z6/tcl6KRzmIePu0dd6YrhDs2fMpeP0Th0M2BFeXWh58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747426795; c=relaxed/simple;
	bh=OdfhxR6kSF8qpj/OURAPHiNPsbErRJeOfdh37IbtGgI=;
	h=To:Subject:From:Message-Id:Date; b=rFV/jJBngtSOFNxIYMIkbUsaoXPGhS1m/26tT6K0tAEpE/px3BUE+4c+4v30zhaT84nCkOcFM+0HUtpLa9d7bKv8VJQCjc7m7W5FUsYiMERLUeSozCEGTYafj7P5xAmb8HmlsG0FZ0lOgxx0I2OqfpG6f7c8BBZJehwvbwsfhog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dbw1MgtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dbw1MgtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747426793;
	bh=OdfhxR6kSF8qpj/OURAPHiNPsbErRJeOfdh37IbtGgI=;
	h=To:Subject:From:Date:From;
	b=Dbw1MgtHlImHYnhQXetQT6ptms86FcbJxjDE71dMrjLxALavoNkzMTypWhJsWr4aq
	 eYEmfmdjZP1z/cJYE7kf5pnR+w1IfNGI3cahHFlMx/KO8Nj9cUle+qhOuz+vVLLLot
	 +eNp3fBrCQQ5T7e7LQ9bSJpgviP7up9p54gMeE5l53n0amU7ZaMqF6Oc1ksGn8akvF
	 1CAHZZs3rISKNf8REe55chlepcLya2KbOzzkHVGoSKQU1twjgz3a0rVosOW2Jzi2qV
	 I6IxJK16b9aaxAq3q4aiGFe/zDjFt7DoiGFrCtFyFEdTYhDjh6s6Yh8r7aNQI90bOW
	 Q7G+sAbEf2eoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC1C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742679358.26189.13021985012382572816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf1c081d4715d85e65ecf2f8453e9b2962d9bcd621022ceece1fb73cac228ec
Date: Fri, 16 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747426793
