Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6276F33CEB0
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787319634; cv=none; b=BErdJvlIrOQBXhLnRo5aQOMEFJDcmDVqfPL+nIqRv86KeI3cRSfjG42vG0naCISqy5PloG0CsgM4Vt43PIDsnKfp5kBE8vCoy/c9Nm7Cm2/Y5Fhmg1lhVHzDY+gfZPzAPoUL+4eZLCrBf3KnnrYbuECPTqUlISir7fLiXK7D5yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787319634; c=relaxed/simple;
	bh=cPR2uVjc9UOCTjA8D2VAyWULzNKf8OF0lJHSVHt94Po=;
	h=To:Subject:From:Message-Id:Date; b=DgIVWFMvuAMXLi73Ai+f2i/rfigNxd8syNgm9i9js4ZD1kLtXNcasuXg2apdQPG4bPcoA4bN85Fyl3s/sfqEbRo6xZR0fHMZSuv+WbiB9PuoEhJY0X7d0p8SjFmqlkTzP0DjPfB08Bz5D0IlI6D9Ti29kSMGe+mHDdASAS+qJMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjm08eYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjm08eYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E51C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787319633;
	bh=cPR2uVjc9UOCTjA8D2VAyWULzNKf8OF0lJHSVHt94Po=;
	h=To:Subject:From:Date:From;
	b=qjm08eYbxIGbNSTuiDaOZtSeZaHjL7Uw5LeeiK0GAu6mO2ho4Q3TNPRoWj2Zo5oQg
	 Jp15Ebw19QkBSsTCltSDBxosJODvf8ioH8PA3MKpmQLlNXN59pKHh2TMfJmgEB77Jw
	 kJTdqxfubONqO+a1BmHvxosT3ped8ug70bxhQtmTTWklFR5flLGGOHpd8SP22FY3jk
	 K4PjS0tDqyLEJEuqnWLq53/GSbjEe9WOXt+Wp+PNaj4/wHWtEaYGFFOUzeHmJ9IU9m
	 6d/Tu3lqMtQmhYoYCl77Sy1P6rBQvYfef496E3r90bI/w3UjzPbqjC57fzyOjsDW6B
	 RAtycD2JNjNmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD223C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731963369.25808.12757768334486845764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75568858a70baea83db9dc0f9e6d8f61e7574c04a398d07532e6b6dcd9912870
Date: Fri, 21 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787319633
