Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344BB4437A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753709394; cv=none; b=K/vmlEyEooNEXOYtkfRqewGbS1o4DNvzKfA3kyK32fCrujSSkZ112gKytbW7yj8uiWt+rhtPYqhyxeYSEyKHHrbAbRvzJwLd0T5atnHa58qBTMzfV2lsUIeWcwtsYv8k5HzgxHVBQIns64lOhpsUsWOcIya/APnDnHJgpzKu5io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753709394; c=relaxed/simple;
	bh=+xCzzHknkClfTkvdvrycSAXw4Ug31GTXdyVvpTKvNGs=;
	h=To:Subject:From:Message-Id:Date; b=aKcFAppFI2nqV7nTPlwYxA+zCedY3O7p1RtBI0RtWZtrirRWUDBVGA1cwuaT8cr8Ru3MS5pUygIBLqHYSL0mqqmI4yzmbWK5j2mre5AQ0hZa9RmIpy3NGRIOjJSS6xPTyvhO4XhQcGn3JsBm4RkuoljydHuTCqUKo8KOimRyz8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipnTY+1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipnTY+1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E185C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753709393;
	bh=+xCzzHknkClfTkvdvrycSAXw4Ug31GTXdyVvpTKvNGs=;
	h=To:Subject:From:Date:From;
	b=ipnTY+1LLqtAD6rly85/E/2Meu4hTXvFNUWrDICeaHfNycBkqU/U79g38auWLeJfW
	 pv8iyAl0bYnvN1b21XIJqSFm4F2lclrn8d+LQAAmGH4EIVO+0SEJ1yu+Qzl+iKICBC
	 EfYeoYfPeZpm4DXYO3Xztrdxi40Xgr0zrsjMR4flLkUFhfWntj3E8EIIGw1AhKtVsE
	 DnUNThaMlLep4tDBZNy94aDQInKBEc60lNgtS3U90BhLlF+4OBZLD59Fsv+Vt7jvqI
	 1NFhtSveOoHrP7OownkMyis4zU2Xn9J64PgcwLeW9Sh8/uu35GMILxRrPPXJMaNjkU
	 iqlHV0n/OVyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046BC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370939358.5984.9656965986642371427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720ecad54fdc215c10e9aa98279863990428ebba2438b2382a0e15cd9f2b8f1b
Date: Mon, 28 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753709393
