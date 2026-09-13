Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843F535CB7C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789312234; cv=none; b=a5lajs2hemK2YJUOAVtoSC1lL57AV355KUZ+JGMw47X7o7taPWrWpEZ6yOO0dGUaVTY/2fHJ1Bvi/rTYJrgz4XvKOo7NAtCAvn/3dDl2ZBaVR0LkEarvuVfVabt3A0XdwfUxo8zBDoVnORB4MLh/8kMuuZ4LlXGyDYB7uQjkXgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789312234; c=relaxed/simple;
	bh=/+xsm2CgrXu0D3vR0Bd2tP+fnn0uZEqaiYlx4Q9IyCQ=;
	h=To:Subject:From:Message-Id:Date; b=L3sQnEocanI1gOzY+8Dgd+5jcksw6EuVnCG06MGvyPBJvImnsSfkW/mkC23Hk6HeSoZnS5NMHA22TElzW3vo+0nq9m1lV/9bbLK7RhXZ8ACg14MbcFkiwHIAFjI0Q+jyW5lUwrKGQ6zJ20cNC75fzLeBtzPl+Rz9h02V6EUTg1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQZak3dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQZak3dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DA4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789312233;
	bh=/+xsm2CgrXu0D3vR0Bd2tP+fnn0uZEqaiYlx4Q9IyCQ=;
	h=To:Subject:From:Date:From;
	b=CQZak3dBh88bWHsYJ/PKSZZmLkWnwey/0Wil3fDS+3SpoFvRCsqjxLXKf63vMRfEJ
	 jGvZwjxm9GBgttrJXku9BDPF0QxI+n2v73K5a4V2o0bUJnjP57ffc1b6CIYxO3eomC
	 nDZ439e4tmdCK/ZbR+aIB+J5oBlCpbjXEzxYycsoIwoIy1IcJFw5E1w7PAj0fDT4TA
	 H+HiKz/QQ26Nm6X1DLj4ckakXqTIrwBm40fOUiCwqSmateF/Xo+1STyjpA3SK8aouH
	 0l4+gkjkaRGsXCe03Qw9u1R0qhIYItGTufUEf5nwOvxkj3L6BymyIOUA6lRBca1X02
	 N8wObGBNnt19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1549C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931223369.8641.15481551486563733954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f830599af9278fc2534304d33f7ff3bdc393ba2936db5bdde51a3d3dc5a9cf
Date: Sun, 13 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789312233
