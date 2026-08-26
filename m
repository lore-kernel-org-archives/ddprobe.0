Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCE31B7910
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787711434; cv=none; b=I48WikAiDCTfiyql8vTWvOy4k9rtTIEJhJ+kDPTyCy15zlWcaaBUlBuM2aVWFos7D5vKz9f+ZdoD4nocdeZPXm92VdWq/UgU4sEOSdylgu+NZMZzU/lT0KFeunUNC2TrIL6wkUutIsVvcHX7h2gA0YcGLdhW3rDHsn4ukT+hcsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787711434; c=relaxed/simple;
	bh=95xVUAB0pJhI5FeitkKhN4c4SEVApbcEoU7g3SQ98vg=;
	h=To:Subject:From:Message-Id:Date; b=aOlH9+6kD5Wplo5YeEUe6/cIvvL6Q9/fDpefw2SGAmWXXoB5o+gVrVEf41LtS5Kyz0qETb2Mbl8tFwr3cG/z54K/STsy/RciDnosZkjQbhN1+JrQArmeU9bQ8VNeuEPk8fqQQcpKt0pr8hAd1YWNPGMJFukFaXOLs3MQSHrUp34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIcg4FOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIcg4FOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787711433;
	bh=95xVUAB0pJhI5FeitkKhN4c4SEVApbcEoU7g3SQ98vg=;
	h=To:Subject:From:Date:From;
	b=eIcg4FOL57jLdhzDaY55+YjL7bNdk+Sy/oD5NwlrIGI+d/hJvUmPfz9C2kXzEyf4I
	 jam2Ro0cad9enfFttNkQMNrImNhkWD9igD7VVWzZa5renigHuqZA5FgUBxizVdpM/t
	 mU9OFOdqS/+o18Ps4gmqq5W5a5qXatXWQocyaIEoh1WwMxnxG+Hv69WNxV/KcMHNrR
	 M2EiKXZM+J0mVPIdtmgf5uiQN5RbOfyBholcph+bgTzd2hO3kNhINu0dApqKmQ+y1b
	 VLJtTeiaPplL8lggyY/yoDdN+aduUj5i0VUeFP38pbRbmyPfuMjLY37NoB5oKJlBQ/
	 WVxt6ZiUO57LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC027C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771143369.30876.6705908145565997170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3ac6155331157fed685298ba9f78271da153019b10740068a0c77a1977129a
Date: Wed, 26 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787711433
