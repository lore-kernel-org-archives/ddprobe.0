Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC63093BC
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764413574; cv=none; b=C1ZP5m9xo3+pNGjpP9kbSQ++m6bd7M4Kn37MSi11ea00kqZqRC6RFIem25b5yX/Wje0x5zhxchoJHAlJA8BObDF3v8trkboKp6Ti5FPBXL0VM7fd3AUKWwJl7DTD/KrmN3Ey7u/C+AJLKWAULxbf0fZnTVExELRr95MardKT4RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764413574; c=relaxed/simple;
	bh=fvjbdB6WXoFLPySi/BwOymr++1khIk2gaB/tKsISxQg=;
	h=To:Subject:From:Message-Id:Date; b=UBYrZMSJgmmc1CuZJo8DvG/7UCqzt2WEe+5R32DSwyL4BKyzyRmebYqnhoRmdrPQknaJdNqWVVDVzdd741AlRveWCC4IqEOgjRPb3VOjBKtBkRTFanRoS6xbK1pNmD8S0wUtNMaj1wjeDZLv3PE5f8fLU5td27L2t8rh2KzNN0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gozvcZA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gozvcZA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB328C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764413573;
	bh=fvjbdB6WXoFLPySi/BwOymr++1khIk2gaB/tKsISxQg=;
	h=To:Subject:From:Date:From;
	b=gozvcZA+pKpmXZq5DPLihiQjUl2LxYqmGmo7tExxmehSRFyLbaJNi5FD+/WcQdQDA
	 q/OZ3NpAgFRP5hD1i/Hr+l3ZtkxXbEuOP2JK54g47OsoIRZevse44vvkOC+IRz1Gu6
	 wFsLq+awgTo4OOteR/20ZN+8ObL/+89eWIlRrBoPeKIaFLvzD7Tl2Wcvhe2VnqdyzK
	 7FYgQY1x34Nw1va4kWMw6GOoJe9Bhtp919TjgHoHPyKOJhPlid1Zk/DWxQ4252CzJP
	 h41Dn0G4S2scOYin1cnPZl3y8Mjea+Ml3dKCdjoP5+qCulCcUeD328IYUenZvGuRDP
	 CNmw2Pjm/YhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB8D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441357359.23587.6848662748209301645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb59f3d95f89cf1dba5dfdba4b6bfe93a000f2be80d2ac6666566c912fa85a4a
Date: Sat, 29 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764413573
