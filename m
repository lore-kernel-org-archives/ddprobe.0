Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69226610C
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717824443; cv=none; b=CIsybEcwAwO8L0YU5J3TpE41w/HRtPIIie3PmutuToH+UD+Re5t7JRQAD/yV4BPe/0dTSDAd4t6ZasgK3cr8euo8E6xjFdmPz/5ZF/p9tDCZkNOOti1V7qo7SS0vuuZecTFZlYjCsRiv2sdpFPhBfSf9ftAqZTLm3aN7B8LHg5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717824443; c=relaxed/simple;
	bh=AnAqc01OqETmoAtvhZ5RIun+bIre8SeqjNrV7hnvRqg=;
	h=To:Subject:From:Message-Id:Date; b=Rec1cykIb9YpXqQ9u0yshgBOzJyd12lHu6//paEm6s/auVZs9SA2RzxsnQ+0P02fhHwOUB2smZdmGnaFFVqhENP3Rj/TkFeqWEKNWs92nqAkB1RRBC+ylJF14Z28264zvUCHOBv4m+w7UrSiHnjrhyM7HB3FcITP12CylkEvPqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbYyNIOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbYyNIOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3282C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717824443;
	bh=AnAqc01OqETmoAtvhZ5RIun+bIre8SeqjNrV7hnvRqg=;
	h=To:Subject:From:Date:From;
	b=FbYyNIOmWAfCz/+nOfagFtBsMhkUKp65aTiszjfs2mhlUuet+JX572NaCuGZUOFDz
	 fmLsE3QWFBnuLFBtOt0lW/dLwQ+G3exLyCotye9Hblj4kWJYIbADOyZTspsiZcivff
	 nfWri8CVGzMKrsDYGMLuTwyBkg4aetqhwhrQpHfX0aM6Zct/YRNp4NCkTsQhf4AdSh
	 t+knvn9W+VqSylnGP73ua69oNzGUEQcp3jwnVMss4V2C2GYEeFnCzF0RQwu/5+2hrT
	 RJJJeKCnGALJU2jXO2fHSo1tjeKRzS5sgwn0qyG1QVCX9fAVIv2e/t0DYTgfLa1N5v
	 YF/kabvEMMeeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8076C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782444282.24393.6296337159960662937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190e252d1e7cd7d90ca160bce1b860f1a8b042b54a156062dffd283bcca8294b
Date: Sat, 08 Jun 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717824442
