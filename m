Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C22E4982
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751480994; cv=none; b=Y0kRxJKKtlW5RP7+TtGXoVB0ReqebTHmwsOMvYzcGUS4ih8r7DQYC8L/LILozuDHVbN1EAina4PbXluqsjtue7tBlznaXa29DKnVYrAzGiyPjmrfpicVBL/qACsuCoIL355+cs1HHwlUHcd2uBjXx93EDxDojYP2n+h8cYgpDLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751480994; c=relaxed/simple;
	bh=Yc9r0cI0y+v2xfqlgTuZu1o2JijBbaj5NGKxRa6DLFQ=;
	h=To:Subject:From:Message-Id:Date; b=nT6hT9tvt78fGVKax8bvxTJxf79yCI4tQfVcaK4j7vFLGBw0thNMn4ZjIhrUrSxX7bIH68Xvya5iIb7AVLkRd8/MYlzN4E6dvqRo3rtHDuJlWeM1qWOwsdlWjar3kLoT9hFqjq5cHqP9Yvln/xP8uPRF5VaH7jkH2IFx3ZeS5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN+jCfY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AN+jCfY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F43C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751480993;
	bh=Yc9r0cI0y+v2xfqlgTuZu1o2JijBbaj5NGKxRa6DLFQ=;
	h=To:Subject:From:Date:From;
	b=AN+jCfY2Wq72C3P/5BqZ8DzSPvGrBj/onIXGchvHrEeKWb0QorGwrUcUrQ5s5op1s
	 3L5w/sLXjhpuT/SA7vfmj6F18HjoxRZT2ECaEL1lAdRt2L8y0/g0UtHVeEwCNCC2YI
	 PluzzwPl5QHT3DMvztNPaX9z5hCo5dg2IAmKUoB/ihXbSf5Qf9NXmYBCh4de8eFqwS
	 jcXe0N2wTDTxYhpDVm7PWZF1Clq0mBJeJxtFtQX2xQJJMSBm9dL5IMjguZdN1J/PxY
	 ssKm7cOdqwQhRsBNT7K1cNGS+3+1wNb9aPWY0w/5ofRNWP+6bXdtrDVp22VtmlKTCk
	 oQeBMESrcep8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97014C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148099358.32009.7365322360479746932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204846ddd4ac8cf37a86327825844fb473aab7f9922da0d3bccb4b0fc1ea3016
Date: Wed, 02 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751480993
