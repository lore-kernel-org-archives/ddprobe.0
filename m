Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BFE20322
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755488994; cv=none; b=tK1hDbnVrYQkzEpe1AIUwGLS+EUVjnM7rqidn2MpQ+RpM0c/WqEa6vnYyXe4vGL7X8aHeoQdC6tbf0jajwlrYJ6xBxpW985S4DQkzeS85EYHPtUnxvCC+wEzoGCCX1by14Rl1tJ2gPR5POspVph2TmSoyCk4WxOpY7hlHbqwHIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755488994; c=relaxed/simple;
	bh=1gB3NWmvy/+2Vm2RIsMZ4Y9QInvoJFDOZUrgi4H9/tQ=;
	h=To:Subject:From:Message-Id:Date; b=Y9zK0aDXK1EOh+wqthhyVTCVd9yMkRAI/gSMNoFCmQbsEpi36Vc9p8nawkB4HHaVidsqEIq2+0slbz//yryzWO/VHYg7eRnb55YeRkfMxMJC9vwfYlCBWPEpKVYvMRcJrP2qMhsJULP1Uwb0DmNSmgInl+64XO10iTEFRx98b2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZgPI3rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZgPI3rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B28C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755488993;
	bh=1gB3NWmvy/+2Vm2RIsMZ4Y9QInvoJFDOZUrgi4H9/tQ=;
	h=To:Subject:From:Date:From;
	b=gZgPI3rbeJUJ4Oj8lXFYYNa0to+Bpw/098FnDghW/vQa4uaC6ucUSZkEcmxjiiiEO
	 JHwCEGxizxmBop0Cwt6+Ft+Huoy6rjZYSpz4JkguI2Vfp0OUHMePs97HhyQiGFV7He
	 uUhTy73oZDpuhkPgAMEZj+JFyp3P3c7OC1nvp1ZbWq8EiBaDx0VZLE5HXie8DEuAEk
	 cO3mr8Wpie7OKhYrL52vSs1ZEfTcZpCxJYJTdiHgjtieeXr9X4LqjejALvdtDQPaD6
	 cmQK5WMB+juNb9S4cS/jRxttIwgImT9YTS1RoUuFosOOqQoF34EQ9YREik0LOAvORX
	 w8FHq7JB80/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE7CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548899358.12610.18424848116173083798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee39a83c84c455fdd3ad3ab940e4f6d7e5001812a36a647f9a2ed0245126cc2
Date: Mon, 18 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755488993
