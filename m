Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8055187332
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732314953; cv=none; b=NSi3ZwiBfjd3Q6BIhqtSGQhC2GWElgmyby+cci9e8qoSTigopSg6cZMrbkMKji9zgpCh2ii1sJonNUjEJjlOsFuoVCJEbhc0oZhnMKchTeFvt7jrqU4ks16jq1AHasgkLK2HY3d0s8xBPNr1TvW2hr0EhToIjA7TzFpBQFAoyS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732314953; c=relaxed/simple;
	bh=w3LCemVj9kpfX/KbFpgkt3UwGi+0eov+WjS504BahJc=;
	h=To:Subject:From:Message-Id:Date; b=DaDvBhcd7au47zcwhQJX0iYCIAW6Xh6ns+MZG8b12PisiPK1DQhpqUEJX4BSYnjX39VGBZicH6bxj02NTW/dpjbnyPMEEOYIpwaf36Z/HZJ7BQ91DdRZSyWjzywZjs3s8mV/OEPltjnw1Rbl8sASrAjabbcm7C3QbA+YD5s+AmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKdjrcZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKdjrcZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFDDC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732314953;
	bh=w3LCemVj9kpfX/KbFpgkt3UwGi+0eov+WjS504BahJc=;
	h=To:Subject:From:Date:From;
	b=pKdjrcZR2BH+o8bRdy2+vLIlFy17hJvTMekNfdmkXiLBUQXR5l+CUw04uFwvf3rAr
	 24ZpF14wsfYnPhBjrDtUtg4v6DxC644ue57dAnlRtV9+TYCNbKL58ATNpiwmhFlRf/
	 TZMOSBfG+lmmpQcDhHEKwydEm26HJM0jRbpCEzuZXPrMCH+qo/1UnFAqGM5D+Wr0cj
	 T5N4UqnVkCCBEBMz/ct5QnL8txCzHloxDvbkLijVHreDd1PtVcv9Exht14KuDWHMtU
	 pvmXC19KJU1pHIAWSMzGx0TNCw5iwYFQBflT61pAVYF3OIfdz4ZZB2uQhfhsGZsi/g
	 M62mXoX/fd81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD06E6ADCA
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231495362.5518.8577238459309086509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca08194a1f09d5c2301378dfd418d80c66751e07303089839941290e2fdc3bd0
Date: Fri, 22 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732314953
