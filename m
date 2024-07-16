Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845EAF9CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721108123; cv=none; b=eju22l8bpgboAVSz9L2LycXeBNDVZO3xaxWV+OayWaOOqDukHM1RXxj0f+AhYi1gFsg5cZntOp35TXwaK5YIZJ4HS24iXgQp6oI6aiLzNmJ0P8LG1XBFcO804VSYZ+tWlk1fZogHspMP/FhbAqk156BESMcpJAGX1+etwDtn64E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721108123; c=relaxed/simple;
	bh=PKpN4oFIESB0RdbJoAYW7q2YDulfQj33CIdY8Le8Fvo=;
	h=To:Subject:From:Message-Id:Date; b=koy4o4Zqt4sbNVSVAGM8/OtR7j04xYr6tSMjSH7oY88plXUPn86HQw/7n+FQWCzSmWV25mD14ON43l60dUT1kr2KvliRBnJZBzXp/k5mBF0NAXV4Vs8lakV3NJYtvw5Fj4kkJFNuyFHX+QYSyWhGSOFtqUJUOSDu25/uoeNwnGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRulvtvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRulvtvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B6C0C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721108123;
	bh=PKpN4oFIESB0RdbJoAYW7q2YDulfQj33CIdY8Le8Fvo=;
	h=To:Subject:From:Date:From;
	b=mRulvtvqtoe8uf0Qrurw1bQ3+zrvBfVB12Fb2MixURwit6va8J8FbPOxdRnK3kVaq
	 9p4os3eKy7qIxOABGP+Dvk29qciCF3XcfzW0fwMzqXvX3GlJUkbeamIEBqmXb+E6D5
	 sfkAYSiUosWLXMexLgbTVGmSSy56p5KBicIxOpePp0saPs48/w0wHkRbmAjGOgRE4M
	 dR6HeLH9Yd47AzC+5+xIu/SwgVPAhfZJiNDZ/FobGt7lFdUwicMdYmDS6xXX5EC1kL
	 BFyV3DxE30QKa7x88LA8H4+ET6zwZfv4GQZ/dE6ecqGDjvPWQy4Sg3OIZZ+E7fow7y
	 lfdSAi/IUANAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E09AFC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110812288.7178.14619095549046310504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e43039da35fd8bfc90ef65652161d96d970b5efc0452ff0bc7dc746fad68f4
Date: Tue, 16 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721108122
