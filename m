Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F7D1E834E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765149774; cv=none; b=IsfZc34FFQOZ0gujMcQUOceoWsr8fTK8U9jYDhFTUtOSvBkGzCWbLMQQxjLJ64Dpxf5Cp6sIJaHIjCZZl9MHSnIbue2Qsc2iZo3TnOe9mpgP26JpxiuZrA0r+bhpYyX7MLfCdT0B2S7irHf9BqxqT7wN7sk0w/OydkEeQYB4Mfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765149774; c=relaxed/simple;
	bh=hg+O6WtSFZl3S+lugyGrRykQ/WduocKbarlki7+x50o=;
	h=To:Subject:From:Message-Id:Date; b=pZLt8fx9goBpbzNgMGDQoDw6xDMb2PRrBLnhewKH1a2Hx9N7fHlmoBcRPvmgohiiaL7BETRjc+TuC0VQypl60JkrZczPgwKk3UOjs/mIUlY+yw7SE14OhWfGo8/9uZvHowwcP5RXowgH1WNUjCdr51wJpITTlBnjyyqJkSI04m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+XaA7o5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+XaA7o5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5675C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765149773;
	bh=hg+O6WtSFZl3S+lugyGrRykQ/WduocKbarlki7+x50o=;
	h=To:Subject:From:Date:From;
	b=J+XaA7o51E19Rn1QtLMlhNlp6bNFmE1C96UAFj94IXHcUfwHI/9dOu67CHteJoXDS
	 XJ+btRMaHCs78lYG6LBQ66rP9fwI2hlGdRTn+pRzN549ZBClGzbky2lGJm9627boEW
	 iC+x6ulxhRYpjKWN8kohUkHF8xyVhLfhZCoxtl6Pe0LXNTEDCtJxGeMRs41tKkcMqE
	 J3SuGIs3L7cvG7yigB9UIZ+/QQsqMPaeloLlNp/MiTzUvPIDvigxAlHHNFfWYYN1LM
	 s+MUJlEw4RXS5GfXbrWomsZNifAL7LPktkXFEgSnSIxtEm0D0XyoPmaPj3CKK0fG/0
	 22AQnRstA/pcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEBD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514977358.20763.7200038417585956617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0073bf41dff68e7c965393ef7d833e482c0cd61101445a380455e3f2db750a12
Date: Sun, 07 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765149773
