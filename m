Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2C1219A8B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754323194; cv=none; b=uu8jKlNhdVfUH5LvgR1HRZWF9dY+stTpmR0Qqlwgi1oqXoy31LLRrdFugnjFYkUOqD651Ox3jGd/K/Mh8MZYzzw3hJOk3ROvGw/3xL1DQxUrsDyrrVjfRfCfhjT4B1Y5WD+iblgLTlI5unmwm+HNh5pImcnz0HcnIX7N+f52VM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754323194; c=relaxed/simple;
	bh=8bduXzRMzDkuRhMrV1nAKhLLORcibl05RJ+BsEB5WRs=;
	h=To:Subject:From:Message-Id:Date; b=l/6SobTfkNmJqfgmJCZfKJcBLD9qxfw4KcEveIUDCx6BbxvRmO/F0n5aZsxBxHmJrUTI8+rnn6e/yW2BKdu3l0pfqiP5JDgi6NTmdfQJAFIz2zKayPOa08iFCRhvqcgKRDb3gQNbzhS75e3gYPuompuqzxg+FE/f1y00VymOMa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAKTylnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAKTylnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C29C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754323193;
	bh=8bduXzRMzDkuRhMrV1nAKhLLORcibl05RJ+BsEB5WRs=;
	h=To:Subject:From:Date:From;
	b=HAKTylnERKHPnDBzuXiY7kAW7smmrCadKnsw2si34Cy09L60gEwxHAHQIIX7Z4og9
	 RxGGpfJ/oeyrZgBKJKIt0eanvSh36ezGS6swc72wkcbUL4nfx9K75Kn4zAXomq1nz/
	 iLVT8cDh57dbJ7Hb+Y0GiRcfyetjwPWVCfFLTHHCtj068AaDV8gfUqTNWhJ40fXgt+
	 LcraLF2TtGpaXWdxPDueb7cqZhq1Nf4YDsGG28Bw31xylR/gkmIsnqwc2mO3PlgmAH
	 nw82mNFfESmZZXMM3zypDWl9fFfh9Zu7uJLvfff06RG8E/2VWSoIwa5NEnFFsgabT1
	 IgXW4GwrMCemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C4C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432319358.9833.14209125524152836448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f903ade3d2253735674d736b7e5ebec0b9dd4f409e0972a56d5587f0a7a6f6c9
Date: Mon, 04 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754323193
