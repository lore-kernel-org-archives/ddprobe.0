Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1E8101E6
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713057563; cv=none; b=LnW9RELTshPiz3ZSRmW44VXc5aP7LhYay5ku5bEwT7GiokBf74AbXUEpSblHpt+tbxChDYYxObo17tz+ONfQ6bc/0qVy7AO9ZxmStBLijKXsMoi6SGQ11DATz/Vz5iuyMLwe1YKowoG85qjHWVeVLyBwA6+1P/s48PLo3QdMpew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713057563; c=relaxed/simple;
	bh=mioOKOIBAQbIJfON8qmEPghq2VSehWMsflh2rzZ4eE4=;
	h=To:Subject:From:Message-Id:Date; b=kMnY7O8aejV8jYB2g4/XMd7fWccNFAdOeHOs+VpA62JDEYBx3jogh3U/rYQkl6y0AQUBk3lMbFYqWMZEXtXlNDudQoguosAmB8VtdxZp/zED6cfFaZl1pm256PQqycNHmhNxtyhKWPmItA/7audXj4V4U6oX/8vB0c04A/OiuVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlcroTZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlcroTZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CC3C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713057562;
	bh=mioOKOIBAQbIJfON8qmEPghq2VSehWMsflh2rzZ4eE4=;
	h=To:Subject:From:Date:From;
	b=YlcroTZINcQmNKL3Kfc6/AAb8QyBH01kYaEVpg9CFv+Pp46lPbXt1u5+6s5MTv7u8
	 OORnV6iUiZf4WBl8HiJSs7Zn/KYjpuM0ww8br6KHAFvSkaEMqZOLDcHEEQOU3oV/KT
	 rkeWCfu8Qg0sAEpFPY7e6xp1NB/hHY7tY7dUPlaMmjtUxMZEjMdjfcMVbkqrVd97pd
	 X57YUg8D8clGIyNhSfZ1SIWaWSDwaFj7Lrr+9jNFDzbzLQILoivMDjDbUuZKbN4+3f
	 XOkxlpmQbQpdto9mi8iihTu3Ujb3sObsHMHTg8rMF2CPfdj7UFeEIJhYZ5J2m0Bzlc
	 7vzVsjx33mSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD36FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305756275.8010.3255462371617531811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e146e6549e2a5e6554b72376ae1aee8e6320064ecc940dccdbd61f3998331b71
Date: Sun, 14 Apr 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713057562
