Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7B91917F0
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754112594; cv=none; b=mhtHvu/Zz7LXWCGHsUxN0vNRxObpAJI6bwQY+ACtHLP4ScG3Mw6GJcXF5ruNPSozn0cUmxy9XqUbSku2XLnz5Yot+dIZEHiKr1XyMIGAlUJHWCsB2SfprX3FPJY874czxXwq5NtBmrDxBaXu10pj3K2fA1Whpfo1x5TOF8NWllc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754112594; c=relaxed/simple;
	bh=qnidG8SCBnT/sLwCRFjGFh9hkctI4EDdwoiqu2Vb9JQ=;
	h=To:Subject:From:Message-Id:Date; b=ugZJG/4Vr3h1epuLNKEbzUcwpdnZULEvFfKex9oFeUGj4a3VRxV3IiWyl/vGr+uPDt1uGts4KzyfvVVIxhpPph3PYpY25WnyQvwvGwqDvDxKpWF2498nfOH2mtAa9M4JYRzxN/X4hfTxpz/xIX0oPFxM+WLQ8dWg83jr4rSqIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSOu4Ekw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSOu4Ekw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754112593;
	bh=qnidG8SCBnT/sLwCRFjGFh9hkctI4EDdwoiqu2Vb9JQ=;
	h=To:Subject:From:Date:From;
	b=BSOu4Ekw6GGaN2hdasuvs3T2u2I//4kSTInns8uBtjKXFe0LJAyaTqK/mou9xfW6P
	 T7xDlok8rV+SUz7DwJjgKuSf4oyGhX8cd8qaBzMyHeKHD5InjeC+puZNXCYDimGKil
	 Zf47OPhPVNCqps/EMU/DyHaN171Z+U1f0kA6y5mDIdQamhCzmBOgxHY5CKsmEiKcrb
	 e1QgrzAWXZFuUzqRaEG32gTpfDJx87y4b4vJCYyEb9onGs6d+bj1zT62sPrHXkhtt9
	 xoU4XHb1444XbtNJbonIjJUDE3j8IJdOCrScAfN2P0Hbls6MlZZCmElp2UNl3L7poY
	 iVz+lDLUZvbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE1C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411259357.24891.2536523257971537334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41273f2c113ff511abdca7229e243ee54f00ab6cf5d5d8f3d06c2e510819c85
Date: Sat, 02 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754112593
