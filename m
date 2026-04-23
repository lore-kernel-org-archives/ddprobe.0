Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4D30BBBC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776973054; cv=none; b=XJkiqOvUq6iYAJYc2MjOj2smrjpAxFyk0zM7PtUFnGwaO2agkjAJtgQnuqK8aJRhrNQOOY5RPHa3n+XJXyDa/yuEtbDH5QfYDCtiVtyqfsEOf6xxfqeFnzcHrhKyf7eKLmuqIl/SVk/bxKOP5cHKCaYjQBozgTaf9FRcZY8eQog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776973054; c=relaxed/simple;
	bh=1IWgTZQ3is01DP4X1rQETx+ip+xaHKuzKWf+kwFlLpk=;
	h=To:Subject:From:Message-Id:Date; b=DB7Io178kMHxm+hSrsvnYVKThwj/0q536cVUUY/RmRmEtyBvb+hHygpgGd0tp/wWamm7V2YUMgvf9wYWPWtGD+y1odTv0nP9WhxaDusnf1tg96p18TlNsIudKFor7VNbMbPOJ6YRpIiKFqJMymytb0okwIo2dZ/d5Mrv83y374A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmzOX9Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmzOX9Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23EDC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776973053;
	bh=1IWgTZQ3is01DP4X1rQETx+ip+xaHKuzKWf+kwFlLpk=;
	h=To:Subject:From:Date:From;
	b=FmzOX9KaxHdz8+rm/VcbkcSdMLNwjCRxkY7mS8NOwL0EzgMrxaYaH5vmXzj+a8QEL
	 mIqf0+EBas80Yz4hwmwX4eGLE29yE/z7zpKK3ceVEZqcI5LhP4tyHLl7cnxbDgj+gm
	 oF+ZJkv+vdkkcw7xsNI9UNULjjm1zjxN443MHU7k1JZlOggT5dUAS8sd1jpET2b/D7
	 UnezUsM40JyNN49vyjqVgcOd2onUwDfQiWxwM02fNfaSRtDDpzIJwkNpAxMjm0pF3p
	 rZsK5aXDZvGTYJT6uO8jHveYgXzcDx1LQ3Ymx7bDqYRD1EKSmTCaSHyBGtAe6hVGzr
	 Mzn01qPwFEf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBFFDEE46
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697305368.9617.12541033570726538564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528d676e311ecfa6adc69ba8c8187e27794d3d53c904455940de9e329ad031d8
Date: Thu, 23 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776973053
