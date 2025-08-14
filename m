Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B7B2FF645
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755144594; cv=none; b=F88DlHpl2N+5bUMR+68oJfABjfZg5FYdBMzn9b1mU3ddimbzB7ErGAoX5ACjK/ezcZSK4NP57OZhBEy9dN4eLzLBPKDGT0mRvKbaAVOaE49909zJ1qMmb7f6NoiGYjMefEDQlF/TgawCiIlXdcomy40JxnI6gKhvyZlHMQef+ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755144594; c=relaxed/simple;
	bh=GwRVqWezP9dBoFYlB5dy8rRTvyPg/eb6uQdW23Eb/7A=;
	h=To:Subject:From:Message-Id:Date; b=q8XSwOSHN2VMvcK3wTNm1F/apRpdumvg4Tfmxhtu9WFeauI6XmeLn6eDUp/KQcOTb58GW5dlZRicUTW4CTKrNUxhA0uEY1D62vymezpVNgEnuGt04mEkBGSOgWL7o/DjAZqsFOm8f7LlfnnCHXazldP9jzqUP2vlg5DfeKTvIPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiUnD8f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiUnD8f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C60FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755144593;
	bh=GwRVqWezP9dBoFYlB5dy8rRTvyPg/eb6uQdW23Eb/7A=;
	h=To:Subject:From:Date:From;
	b=SiUnD8f4f9eZ/2EIoMCTWuBklHVuqBwX4LhkkRj1PeQOOlAHi3yShpZB5z+ViPIKD
	 Gre0AyyiP/uruJHCpYF4NYcLiaHtt2UI6ghtlxLH0B6kTOMDT/N4n8i+Tn9MDjHMhh
	 V4E1ldFeeN42pK5vbmcEtirX+1qNbSAhD6S1SQEzVcD8vKtLineSzRMvA9ZIXMOylN
	 xkFiQmZkWfHo9j7EMH3IB4gS9hADHPwfB57QH9DMF8YDvtwSo+468m4YzOBC0dZ22E
	 cCpgvNQIyQfoEKE5YFCEu2Y8Egg42ZkJrLSHdPzlXRpuRpEyWUdLqHM8+CCYEygzIq
	 pcoSWv4ubvGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F171CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514459357.14160.4708607655675509613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5282eded63dd7b34b157027b5aa9e4d6bd681082cbb95d719c1339b828a18b5f
Date: Thu, 14 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755144593
