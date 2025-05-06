Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27830145B3E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746542394; cv=none; b=QI77SFKkwMzWtmZHWfyUpQqYKjCt87h9LXDAjKlhAFYPV4Cb5BtcsAMCB57CzZMziKBuJCgm5F9uymufBoDmpqesQT486xkeh3psAtyjiGHxQxiixrfwJguwmc4F2DNUfBN/+ZT64dA4sMrPXd1pv5Z8PUDn5l7i14ZT0wtj+MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746542394; c=relaxed/simple;
	bh=FmrjxVmfaLXSvRgAmozp+B/usfPF6c6ZDYZUudQjzHE=;
	h=To:Subject:From:Message-Id:Date; b=o7GXdV2NFuRy9Z1OBEhwTy95tudgDEi9TCGOsDS2T3K6l9ZEVoEL/M4AhH1ahZJh+ZdUszjoik7x1Ttq478dfCbjn99vtpEdO46IF5bRBCJ1Fa78tygofVkEn5YjYWoLaF2lZSuYUeaapajBZtLDeLqvJG/E7ZEBCN9EOllxmhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soZGwFbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soZGwFbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F043C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746542393;
	bh=FmrjxVmfaLXSvRgAmozp+B/usfPF6c6ZDYZUudQjzHE=;
	h=To:Subject:From:Date:From;
	b=soZGwFbiWkn0Oj2vm+4TpvYdRuQtm2zJSKw56jzoGBE6KPYaUbAtb3srau46UTaa2
	 sWmD1U3vlO9oxjtzlZwewhIQhN3129qM6VPa/U54SQT630K7lo3ORDgttF7lwyM+yq
	 HZngma2u1F4M8VXpCBGoG8xAp9AqOJGs4/LAsW4Z08z0GGULGscBuaqrcc8MnJeoSB
	 MYqw/8ZLYcE55FsmKyFz9z0fX7zbfkcEeLKSX/zfPd22l98krbIfHaCPElOAup4V98
	 qo0Xps3u0XUXjK9HRfB0zaH47NssTirNoIIS2HFWAoltILtADQnDrAc5dDAHEMQUXx
	 E8rY/H+yi0vcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5FC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654239357.22285.9315077549243177097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79bf555b1cac2db4403aead03b7d387cfc0b4ebde9338133fb17de473c294f0
Date: Tue, 06 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746542393
