Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EB11C27
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755852594; cv=none; b=lVSDLuB52cyvjZlMzXl/UjEFENz+oe2sSR7EJrItr5efcaj4DKAOsH7r80l/jr19B39YGvJ2u8Ze65v0+3xGULDxm0vItdHUdT3CNheQYpVvIvJ6FwKxOhygAZVlD73wIXDCvSMMa4isAfxoP7yiSkOypJqxZ8rdU2tCep6nJ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755852594; c=relaxed/simple;
	bh=eXevWyF7q7xmnXsnM7hcEMwjHo/ZQQY29eTg6Pq0bYI=;
	h=To:Subject:From:Message-Id:Date; b=S4aPq4ZSMSbqPDgRBlUTY1G3lARClHM/AsmHh1MvQT41w/KW3nCTzF+BSKhVBUl+ihLsndC3TqKPA1X2VYAYd2gnMehyc89XhbhWKVt/iSjAd7UuvF3M/yUuGBOIS2/zYtQW5YwVT7IiI3ziJcinqnVLT3fjtXm5kDP4R7M0ej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXstJZaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXstJZaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4A3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755852593;
	bh=eXevWyF7q7xmnXsnM7hcEMwjHo/ZQQY29eTg6Pq0bYI=;
	h=To:Subject:From:Date:From;
	b=JXstJZaBMNeAGENrsKPMJOYNWcbuapeLc3j8IilRNc4JD/PX68fkSWdRtLoARCekD
	 7SXrh0QNWGgtrjbaRsL48ZW3fusHsK6FdndzPYdfuCY8BZMsDqxKo3RrecDRml4+Y1
	 0ffGbpg7jMo3TFpmUfghMkbSiwKrGQtUG16sRH3M1wTYcgPK3sayEzZtvg9FM+utit
	 kxzTHcQFc9M3c9ll6BQbIZr7YQTc7vzBT7hV9pvvYeAMT6nbwC6sMmsS5CYsZ2caZ/
	 0b/h3g0XTaLEj+DqyKbT7vNhTguZnfRPbfBxQGsxV3RHsW3YuprGhhMbQ54qXG2rUq
	 ZKM7OdQPxND4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08FCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585259357.18379.11196143697075523232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75534c9a9cf65405268bc83aacbc7af9ba0d58049a7c3f5366531cab5a6d24d5
Date: Fri, 22 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755852593
