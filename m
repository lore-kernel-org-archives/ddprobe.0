Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE81269B08
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750864194; cv=none; b=HC5H1u+GHBOOFXoQ3N5R1NB95Hk3R8qAAjw/jGRY7jGjLMRtoPXP4UVS0iZcEOhQvmRsHaw8JIpYvTzF0In31dddvFf7NbfBCceHEolciglJloVCLsZhzdlmhgKstWh/rSMOxA0/4OD3PZeswqO0JPzAZxL9+z/Y6HQT6FVMdDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750864194; c=relaxed/simple;
	bh=z50LzKU9itunS3CJwCGXuN6xlrOfPtrTrCpgbCusy0c=;
	h=To:Subject:From:Message-Id:Date; b=f46q4BnRgenk4sTooui/xzICG2dMsf5rOuKXyQIS1kMIiUeiMIA/g7d5CymIxErrbStcusomT2CMJilffSaMT8zZqvRScF1VG2vX/xd4h3ZtDDQvrzRcJs0+g6lMk19J82zm+eK+jtL0EXsACxQNQ5DWa1IzMb+FkiJKGsXya5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGIY++u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGIY++u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F236C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750864193;
	bh=z50LzKU9itunS3CJwCGXuN6xlrOfPtrTrCpgbCusy0c=;
	h=To:Subject:From:Date:From;
	b=cGIY++u9c0Lw8yYERPginXc7qcBcMvMYcVELEpdnhsZ97mETjQa+ftAEZZLWQVuCp
	 tyoA+EViNPQq55QnV60xVdQ+qAK4xCQWzH4Sy5q8hNFd8eF7Udkr+1L+mAXqmeCoSY
	 w/EHuuGBFiUCZk9E9brtgwLc3TrPHePuX6RoNONgdj9vpq4yIxBJxvFMRPsjK8Pcpc
	 qr8vfTThzySx+noiFQM81VuHC7to/O/zIVcOxLDRv6olJdBCmAL/YFxteE/KMjz+7s
	 0lA1jWoO58eosH4GqQxyKghg/7CVImpNvT+oM5HF1Mxkaf1oNxXLY6cV2dOrR5jFbu
	 5haQIs5Zrqrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB1C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086419357.17802.15330742689425494125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17b2da83965a66a0ff058dcec9c7fc461b3588cd66011c534ac9019a2fe8cdd
Date: Wed, 25 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750864193
