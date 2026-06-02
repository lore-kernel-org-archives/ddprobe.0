Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D81533F8C5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780434874; cv=none; b=Q1bMLA/KL+xwBarOhEkL7pXk6M7tL2aLVGOqoR/urGUD7F9EF8Qq7m/ZLiQVF0Yhf2vVGpfzaPUk8Dru/iA1fEei9arD9r/D8v8sqWy3F8+dhohMuyOc2VmleksNreZKoLawXOktfFBNIKccVsWSLvuI6UU5XsiL9qjzykmmgsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780434874; c=relaxed/simple;
	bh=XKVE13d84qyREeKqYKCSUuZ0bBEYiqAHi8duM8YlBh4=;
	h=To:Subject:From:Message-Id:Date; b=ZKUIxq90gUTWh3+uRSN3oQTS+k3mVaV77KcDzzli+L8ItMhm3Wf3ZzsIyhPTRdA+MZBaUfF3c50Ad78TVO/kz7cJvXQgbNN2wVFFZKspuqE8BgnPCSacU6ARQM4bqtkg6ZiMxUg1hvb/ckCy7n9GNw2oT1WMLHd1CWqgUgSBEJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZctWuzP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZctWuzP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3561C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780434873;
	bh=XKVE13d84qyREeKqYKCSUuZ0bBEYiqAHi8duM8YlBh4=;
	h=To:Subject:From:Date:From;
	b=ZctWuzP7GOoK/+BZHjUY5mp9RSFaMTMU1zXPYArN36QHqZOjRurU/68MPXUTYCDxQ
	 6M87Ay19lcLALzZTnHhnri4/8/AgSb540aVbdGXRhaHFaJNzUWEd22/QIz6SS7VRgH
	 Wd8rUF+lDS/0brOwPLvj5swdTrqqsKk0eZ8nV6f9kpOxclCq+TVZ76PJX20FbOnVco
	 1HWvlbKiax2rGYIfRrfbHjjLLEWQmsFIflY3G29jGKgcBp2ePQde5g8kmbzo7Q0bdA
	 /BYUFtBOXgmONen4rYY+wEniRYu4dsJRJ/vD0cHsPgowBU7MSlzenuJnZpCQ5la8wM
	 sToXxVTdagWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EDCD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043487368.14776.16075101628912854720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f644ac97fcee6a7e6c7cc5a60e230280875fcfb3046ae6f449e9343a12fa1c02
Date: Tue, 02 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780434873
