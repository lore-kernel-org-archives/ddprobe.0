Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159F3233721
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774773294; cv=none; b=EpPJhI/M7hedyLR1PWRn+A8BFqgKRclAt3EwBbBrSZMXXAUkvEqn/gQgjh1F5S0epwxHKU5Pm+/EnCbtIt4bSX9jqYqWu8kZAqv1Nrb73lZA1yTJcqhdKGE9EKok36Q11u5rjrOPnt7g29x5LqqnFj8TYJShuG3NQDpZoz13+Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774773294; c=relaxed/simple;
	bh=MKnudZamqzFcfFGaTc4/VRtxXu1Rua1oCez4CA5xTac=;
	h=To:Subject:From:Message-Id:Date; b=QQvNxoCiw8QiLl4fDeB2iSwLI2846dqssD4pmUOxFmBcabaA6RA7MLh8Ksky0N1G+1dmelqDy/m9GhYDNrU+wQx2Ty3r6jO6qtWS/jDaHR4UsLaBfIdhfCqJAQp7ii9x4RN3pWmgRVnmg8oL8GJ1EuKIny+IKkuPU4NfHpTKEt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0KXSp/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0KXSp/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF3C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774773293;
	bh=MKnudZamqzFcfFGaTc4/VRtxXu1Rua1oCez4CA5xTac=;
	h=To:Subject:From:Date:From;
	b=W0KXSp/yntPa5N9T6UKILI7sKVGRYFj0zVDBYI+0K5FWF4SW7oXzzAW4J85m+yqgl
	 RWwzW2PRYhyRty138zvh59u+hCwpNjUlLK/KQFv0H4c+wfolGEEud3qNbUprrJ0uh/
	 VDwVborr0ns+cRH86ciKoLFpIVJMJlia/yUKeCwxu3UqxGJ8so57eTYR2sGC+JjJUt
	 drZrzQPWOXlkiUe967psgO026D+NSmO+SUCW113H8E0cg7PfDXqoQTNnD6z1m9eS1B
	 qkAqlkoI8/A8EMUM4awOh5WVexha55E+6miQQZdWSuXiyo0JG55Wv1VK/oHTPRulQy
	 QiJHkgVH3qdRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C18F3D5F6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477329360.24895.6086276718602847831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec14e12fd0f5e690e71a4650e6ff8eb7ee257f04555f92ee28ff504e399a7b0a
Date: Sun, 29 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774773293
