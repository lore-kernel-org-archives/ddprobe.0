Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD21F236E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744395594; cv=none; b=jO8y2yJgE9VZYboi4llTejRU8CT/M7B6Lyrcm0i5HGKf7TSH6ufVEabgDH6YvWs3634Duxcvi1niLpQSZiYmEUS0KlJPPAobtxovODph0ckL4rP0ILxH0s87fC22jZ/sir0hqNZWPvyQUPzO1qofMVm7cVypdcJfG6dcCssoZjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744395594; c=relaxed/simple;
	bh=pkUSr8ZlJO8QYkGk9e0GSf6pj7xUgwyhrcX6F8GtSkE=;
	h=To:Subject:From:Message-Id:Date; b=Exde2I6Xd2hBDgrzmmg5oAeXuQe4SJjiXZGdWH4VIc/MbSXLWnWOTneRgY8bjalF1yavBx4VbOBiV+8eP+OmuFp/mFV6nxRCFR4Ro6/qjpFLE5vL6Zbv0zg49SgutIiTn1hVTQc8ByIaNIuyBryDFNm4Fs4E0eNfbQJvZj7jZMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qpp7esnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qpp7esnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7C1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744395593;
	bh=pkUSr8ZlJO8QYkGk9e0GSf6pj7xUgwyhrcX6F8GtSkE=;
	h=To:Subject:From:Date:From;
	b=Qpp7esnRF/SZqeC1brMH+IfHbXmH7ANaI42NlOQ9xjUyptVQZJ1LSBYJmwvHd+NNu
	 2UtaA2DVukOOZIoENVQdFOj9iIM8aUmp2K2NP8P5A3bsSmzEx4cNpPmHJnKE86Y9wI
	 5RFPhUBId1jM0xh/UWWqSkYoeGri5GPsuCjQVIBkElxFE9ok2Zdz9+61mewdBJ7Yi1
	 3N/jGlRryBWJjY4hCY70gOAxvE8mGBUYrjfQvzBvcv9asvBYMBcjNjDhGuDwk1wwIt
	 faq9FU5hU8PeTSNCT8d+nZg+5noD+ahhTu7qjl814d3IwVCUNv2CzRaWMeGt+/ipCc
	 SdXIUeZy1r9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96684C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439559360.7908.11743976302811964375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9589b2607a5a73f7a875a492b8640f9ffbdac8ce4922bce72ffc6b43234f0449
Date: Fri, 11 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744395593
