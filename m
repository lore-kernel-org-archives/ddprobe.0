Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31F155757
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788327634; cv=none; b=qWK4pnqPNgJBfowDipSHi67Mha9OqQ4DeVOKIhdrA/5fnJP6+ObkO0TXtTLbw5s3YUICcEBX+6Sgg0Wyn8NQPHfaCVFR/RFM30xSV0ggorgwcTCYCDaa8RORLN7Nm8qqyP9S52ZQSGMzqZk79nAGg3Gf3vuVZ51VHWKP2dcZcSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788327634; c=relaxed/simple;
	bh=T1Q/RQ+5qK6CsNhaDxgj05IOtiW0GWdjNR+PuMDsPpA=;
	h=To:Subject:From:Message-Id:Date; b=SQwFPkxCjJ09r7f3Q1IP381d2tu2zJFpDX3Kv/2PAIDlcAog9Z6PkRD+qgZGYeWq+5zAHRTkBkSG4HwV7sEgDGVb/FwGL7FR2Oa1lU1L7GXhwpEDa+YwwoQpS3M6hlRugu+VPfMxKBCndN1EmfVA0DFWgs5XGCdhf8lSCyMYNV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T246rGvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T246rGvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF4FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788327633;
	bh=T1Q/RQ+5qK6CsNhaDxgj05IOtiW0GWdjNR+PuMDsPpA=;
	h=To:Subject:From:Date:From;
	b=T246rGvFScle1MyTHXshvYBTZxINljYxIN+342P1B8UmgXvEg3SrfAHbbJRdBrKge
	 x2n6J7I7OLXeKuOtWYHaq/5mzgW9SdLsbQBtZF1wthHKH9UNUaK5tam+i1dOLvYxE7
	 k0aOxLyg28+4QW7y1hXSmtSKgcnduVPs9Rp9kRbr8HlC5zFI3gR7Mt7Eus0ySu3Q7s
	 7VQ73GhbARnF276cxHEqkkP/KajReLkuW+KW+chmlBQ75GLplRWM9Vfg8jwoFGO3hD
	 qrhqFrRn8jdSoiI8Hjbthe1eZR+SQfY/531PlrzQcFW7IrSkm1jJYK7FMAKt/lkE/c
	 qUKRKWiJJepBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BFC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832763368.14732.9534477448692699937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d45b62ca439fadef96c3d7fa5733c587710411f5afa83ff16319ea7172d077
Date: Wed, 02 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788327633
