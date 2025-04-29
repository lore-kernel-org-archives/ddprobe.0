Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796D21325C
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745936394; cv=none; b=psLGfKEBlNpXLthz9yhoo2BRz+yeILZuJPKu7OOdkmMZvJK06+Ol2lgCoF9JHEu9+CsgUKbWSBQqO6P6/Da0lM8MCfBvMP+w2AbbQa/J1dLuIGJj+sA5RXCDzG5QVL8LeNr/+5GbVCWtTS46rfJh952LSIwEmtxYR5/vKtpqQqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745936394; c=relaxed/simple;
	bh=UXhnvseRmsJ8hLEyCJBvfmqJjQq+dWT3SSPR41i80gA=;
	h=To:Subject:From:Message-Id:Date; b=sVXsxuH9th7/AjrELJeYpIXbQ8UqUoWIUtoF/lRt149xJPbTC8b7Mw6mgpQFWQ+tg7nm5WKMy5BUFkgIGTDk6t5/Z/FD2WDO5Q7GeM7+Da64q9Q0TpKFVkNPQ0HvRSTrVSZKZWifOAPNT6sHu0CKPyOj433Cb1T+x/Cu8JSCBgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BogH5ZOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BogH5ZOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745936393;
	bh=UXhnvseRmsJ8hLEyCJBvfmqJjQq+dWT3SSPR41i80gA=;
	h=To:Subject:From:Date:From;
	b=BogH5ZOdhX/fDS7nsIicdSvKDbcU4KsA8KJcTKhFdtB4CSoHXRG+R1HyGOWEafUsG
	 HBqmeoBKxmDfkSsM73v1J+HDEzMgadhnJfAdJ5PhIxwFBeq/KNNaOeVJZ/KThD73B1
	 HoTZtZCo/kQYEiFB6dAWGOAkUWLhJ3wGmwncFByWgTQMtHaGKdWsKJOHcTfw/0aB2P
	 /r1wckmWMU9q9EvZYajZ9QluniIXtpqapqP5wuyJiG5+2U8qkwqwMkhp5CiKUI5qy0
	 bBMCaFTczYORka30CvPrs0b/JQ0VRLSkSVfhXg6j0tdkSWLbT7WDWtg7igJEwSmf4A
	 50H+il9iJl/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F114C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593639357.32244.5225677193946394046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75dfde900ae7515f3be59e32e30cd4c0a2abdc7b7fcac61b3260bbb43eee160
Date: Tue, 29 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745936393
