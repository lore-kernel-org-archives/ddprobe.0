Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E381B279917
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766992435; cv=none; b=s46+6uvF2R9lT1za9EQURduaXAyh4dJ6h7NTN6B18xyIFlqEHTm/UBVEX8Z0y3+s7FuU8WLb7zbeWfi8fscYQQL/mHHn9uM0McBVDZz2kGtABsvt9EzsPeAmjmT5+yn28BTkcZAjxlL8/dl6qGfwtNf8tXORyMdI1qcB7uwaKzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766992435; c=relaxed/simple;
	bh=i23WfhmX6hMSgciU6Phre4si0qQovXEypz/8gUnUgNg=;
	h=To:Subject:From:Message-Id:Date; b=UcqO27rsHAxu6xxjum4Sjx9luXS14lhvFI09BWkJccewSbVF68tKPaSofvTICHwdZlvKkcvK/C/U/75xO6BTrXGqjzwqBHF68r874xqQ4uvaN8xh49p4c3F5ErVejSdNYobMVreaRlr/h0fSrrXLgc6Dg6hLwHPUrdvMOAnaJK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUXWw7CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUXWw7CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A597DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766992433;
	bh=i23WfhmX6hMSgciU6Phre4si0qQovXEypz/8gUnUgNg=;
	h=To:Subject:From:Date:From;
	b=jUXWw7CZKu8jDhAvfd7XZfmjVI53Tu0F//71tAPsilK1wKleHZu+XI2YabUP1kiVc
	 dRu41jLE5f9EuJjxYbflZzcaHsPKj8+hPFHhiRt8Hpyv4WyMwxmRxW7tmlkYdOfL59
	 ZcsX+aidQ8+MBxwDFh8KOVSEzyVOFCuZV0RAyTink4vCtOCbBiETbs/Gc9i3/Nm955
	 s4SE8PsgMJt1y77ZQWuUqIen7IuIibTmzd0zdWUgJXYkiMp+fv23Kca/LINQBDxF5Y
	 Gf2KYlAMfaArZVWtGNE3QrJ8no/JLlkw5CTuaqmVcxlgnf4t9sFXpO6Og6Ii9q16Mm
	 i23QiQMyvKu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FDD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699243359.28925.8486888607225876202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fe76042411b7172fc3fde32a3b685440ed242ae1499849103ba0e6250c142e
Date: Mon, 29 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766992433
