Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC09199FBA
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772421894; cv=none; b=ttDlgoj7C9RIhjdQL8qUkjBK/znjWE7W2FYhp/QTILNRqKekBA6fqSEmSCLv67gWrrqlpBxi6mo+4NvLpX7mPLX7avp0DMd7XPbSC2S4G3gtNcxFeu2D02+5tpvSZ2gn1kGvT1rlyG9m8m38NHRV7sCEENt6r9iKbU7FTxBlljo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772421894; c=relaxed/simple;
	bh=Pphtvislhi/0tk3GLw0faRMQsuJRTssKLE6S9c4Mp+o=;
	h=To:Subject:From:Message-Id:Date; b=FE4XT4m1SyJoDj9pCh9q2w8UVsEkfIU/j6c1NB23uT7a+J/FsYs2jEiDljEJpR9Uiujm9O8dCVal3/8RnSRP97cSsX0xTpxq2q3oFF1SCizAFbT97UnBe9VTuq+88WMRty78ANE9hyR/l/YFrspqVeD9PzKiKh8Mm+jLLEYbSO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNJQscsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNJQscsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA654C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772421893;
	bh=Pphtvislhi/0tk3GLw0faRMQsuJRTssKLE6S9c4Mp+o=;
	h=To:Subject:From:Date:From;
	b=eNJQscsrDmmRPyi7sBYOAS/uzO8JJVVT+B4h8IqY4RR0bKSORMg7pSeDfOf20DZzy
	 ftMlz6GfCMr8iBZB6rz/dDPjCO5wRa+TLrMSc/5yefX9xBIfirIisYy7ZM6OQgckd6
	 MHD8m331Pml2FSAZPcGtQwXbNLisE74Sd8JXfUR1n59RTddJ2u3h213onZ3oOhclk9
	 45lcWPixnpiHq/kZR0Dq4VcJ481ky++Q/zkaR3h709roo94wniUKii1Fsl9d2okltX
	 wf+ftnXwjLUhPKKm6i0EVIwYBfG8Rxz3OhD7AyQ7wKGX5MkruVnSCP0fID6MCET+zu
	 6pK+ExAHk3YHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC331D58E4B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242189368.4402.12286414756898384679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a64d314ae101d02d8977f3705a718b1f8ea4a39757df01f09454f530268f35
Date: Mon, 02 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772421893
