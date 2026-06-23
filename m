Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175653090F5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782230194; cv=none; b=e+l1G3Yw5H2s5r6ae21Tr6vCxUGVRbQnaSYURWhnPZ5DlWJ3qJyR4wX0wshGIpwb2HdOzq76iKpA2BCxNLRxDAJAEopGhl8NNwTN6f1h7Lu9F8oazkRmP4glKic6rG5EOODXpEdehua7UV4JcL51nKYaFALOHNhayH++VWToDJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782230194; c=relaxed/simple;
	bh=4rjsxCvaR5NDCvNQDT8CYLp8r4giZmc8qXkYdXcjijg=;
	h=To:Subject:From:Message-Id:Date; b=Jqk48IAQghN1UbsVPt+kXf6uLeInpVYb7hAWYdXV2JT0TMEvG2X0UzArQHH1g2o8lwxG4JHp4I3E+r/ndQQZjFq8nHhwiXS9og23a6AaRyqmjoWREbycvZc+SEzlm6/QIgrMcXKRU6LmkhotCyS1CIC8+/hgn5dUXa5oqaPiJjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWUFMTaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWUFMTaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF2DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782230193;
	bh=4rjsxCvaR5NDCvNQDT8CYLp8r4giZmc8qXkYdXcjijg=;
	h=To:Subject:From:Date:From;
	b=lWUFMTawtBquD11jKhP9Kyz8LAUT+jHmsi2RjfoI7paniUjpinE55IH5H5J5e9AyX
	 pXq15b03ifUTuWCHsgVzqXNA86Szzat+I6d29T4C25T+p/66tXw2h9QkuHGtnAWD73
	 PV/4vOUKgvyzebiP+HrS59b5g2/8KOSfBGqdjQurIB0YrrPKr2Bk67B835QleBLOmr
	 OkYORealfPJFJntuel8TkKRqVCsnWWH4Qi/aBElcc/v3rMH2DM3mLMaQi0cYw0VTWf
	 C2KUPKddw/nEDnherHV6OXGbiY7dtcWPrJB1cfQWE0hgLv35WxsJoCWiI0crRM9AyZ
	 K9NU0mf1Y1QBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF431CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223019370.21001.1119003768128572015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f21d9d6ea7d8ff77f1225ffbeb060db700cc4d85e8d4eeca22e3daf498e2e8
Date: Tue, 23 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782230193
