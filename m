Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561682741C9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070234; cv=none; b=ZY7M+ZiE8fJV6IpHMzW8mt20xVsLqgejyAV5Gu/oLImf2HF4jaGs8UbFxzdWz4HoVc1aN3WKBTSv/xDPYSXe+Id2dfX7icIIDTO3dbi1XUxp4K6iF/tPzUvV7Cs7y7BnKF/14mXt6haNY0dijl2H1X9dMgCjz4AllhAoVHlxx60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070234; c=relaxed/simple;
	bh=DNdqJOSMLlXevAx1TQI9Wo1kw/MMbhFCCQl3kONjBHM=;
	h=To:Subject:From:Message-Id:Date; b=DbVAlbytITIALt1Wgfg2s9CTXCG27iX8Mutds84PKOawgi9BvAR2fNzvj3BwYh/PDkkvPbsDZZCZM6jqXpZr865Fry2Jx2/RPf2Oo7loaEAA65TNocMUtfY1sXIV/RieDyqb0iHURsV5tbe3bhGO+XeSN4WkV4VaAvNfebZBhSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCKYm/5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCKYm/5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A252DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766070233;
	bh=DNdqJOSMLlXevAx1TQI9Wo1kw/MMbhFCCQl3kONjBHM=;
	h=To:Subject:From:Date:From;
	b=nCKYm/5T45WVQMcJqtAtkoINrMdZakEPVFCo2mgY0yxuC2Jb3KFmDnYqIzVzm27j+
	 l3l1mKUYHbY0Dqw7gsmaGYVDbqlhM/0DP5lcOgJCRUGz8wAIhjReN51lXyaDEvPTwS
	 tMZi9i9OiUhnh/vrJyBDNXuF2w2ddPGRCiHSD3L3QJdyzzaOARuezjDiepMUfbigJE
	 1IeEoJjIGYY6NhnpgElaKc0GMPsfg3Mc53TUpY1mgF21fiMxmZ6emB8wvAAKjv3MeO
	 TNn2/X47S8g/Vm3a2yK8xS0zJ5Gi+2679ZoxQO87ppkAMb0ChrgFbliRnHgxqEYkhn
	 DIWnYLzdsEhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92412D6D22C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607023358.30001.14357099566509798654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7f6b74c62c7474647ffa465f5b7f69583470d674cd12fe259bf4b15fd11d64
Date: Thu, 18 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766070233
